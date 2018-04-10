#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import core
import os
import os.path
import utils_log
import utils_file
import utils_apk

try:
    input = raw_input
except NameError:
    pass


def pack(game, channel, defchannel, sourcepath, isPublic):
    sourcepath = sourcepath.replace('\\', '/')
    
    if not os.path.exists(sourcepath):
        return 1

    app_id = game['appId']
    app_key = game['appKey']
    app_name = game['appName']
    channel_id = channel["id"]
    channel_name = channel["name"]
    sdk_name = channel["sdk"]

    utils_log.info("now to package %s...", channel_name)

    workDir = 'workspace/' + app_name + '/' + channel_name
    workDir = utils_file.getFullPath(workDir)
    utils_file.del_file_folder(workDir)
    tempApkSource = workDir + "/temp.apk"
    utils_file.copy_file(sourcepath, tempApkSource)
    decompileDir = workDir + "/decompile"
    ret = utils_apk.decompileApk(tempApkSource, decompileDir)
    if ret:
        return 1

    utils_log.info("channel: " + str(channel))
    # change xml config and so on
    newPackageName = utils_apk.renamePackageName(channel, decompileDir, channel['suffix'], isPublic)

    # copy sdk code to decompileDir
    utils_log.info("now to decompile sdk %s...", sdk_name)
    sdkSourceDir = utils_file.getFullPath('resource/channel_sdk/' + sdk_name)
    smaliDir = decompileDir + "/smali"
    sdkDestDir = workDir + "/sdk/" + sdk_name
    utils_file.copy_files(sdkSourceDir, sdkDestDir)

    if (not os.path.exists(sdkSourceDir + "/classes.dex")):
        utils_apk.jar2dex(sdkSourceDir, sdkDestDir)

    sdkDexFile = sdkDestDir + "/classes.dex"
    ret = utils_apk.dex2smali(sdkDexFile, smaliDir, "baksmali.jar")
    if ret:
        return 1

    defsdkDestDir = sdkDestDir
    if defchannel is not None:
        # copy def sdk code to decompileDir
        defsdkName = defchannel["sdk"]
        utils_log.info("now to decompile def sdk %s...", defsdkName)
        defsdkSourceDir = utils_file.getFullPath('resource/channel_sdk/' + defsdkName)
        smaliDir = decompileDir + "/smali"
        defsdkDestDir = workDir + "/sdk/" + defsdkName
        utils_file.copy_files(defsdkSourceDir, defsdkDestDir)

        if (not os.path.exists(defsdkSourceDir + "/classes.dex")):
            utils_apk.jar2dex(defsdkSourceDir, defsdkDestDir)

        defsdkDexFile = defsdkDestDir + "/classes.dex"
        ret = utils_apk.dex2smali(defsdkDexFile, smaliDir, "baksmali.jar")
        if ret:
            return 1

    # copy main sdk resources.
    # if defchannel is not None:
    #     defchannelName = defchannel["name"]
    #     ret = utils_apk.copyResource(game, defchannel, newPackageName, defsdkDestDir, decompileDir,
    #                                  defchannel['operations'], channel_name)
    #     if ret:
    #         return 1
    ret = utils_apk.copyResource(game, channel, newPackageName, sdkDestDir, decompileDir, channel['operations'],
                                 channel_name)
    if ret:
        return 1

    # copy defchannel special resources assets libs res
    utils_log.info("defchannel is %s...", defchannel)
    if defchannel is not None:
        utils_log.info("copy defchannel special resources game %s decompile %s...", game, decompileDir)
        ret = utils_apk.copyChannelResources(game, defchannel, decompileDir)
        if ret:
            return 1
    # copy channel special resources
    ret = utils_apk.copyChannelResources(game, channel, decompileDir)
    if ret:
        return 1
    # copy game root resources and res resources
    utils_apk.copyAppResources(game, decompileDir)
    utils_apk.copyAppRootResources(game, decompileDir)

    # generate config files for apk to run.
    utils_apk.writeDevelopInfo(app_key, channel, defchannel, decompileDir)

    if defchannel is not None:
        utils_apk.writeManifestMetaInfo(defchannel, decompileDir)
    utils_apk.writeManifestMetaInfo(channel, decompileDir)

    packgame = "output\\" + app_name + ".apk"
 
    utils_log.info("now to package game %s...", decompileDir)
    
    copyFrom = 'pywSmali'
    copyTo = 'workspace\\sample\\oppo\\decompile\\smali\\com'
   
    utils_log.info('start')
    utils_apk.copyResToApk(copyFrom, copyTo)
    utils_log.info('end')  

    # 打包
    utils_apk.recompileApk(decompileDir, packgame, "apktool.jar")

    utils_log.info("now to reset package %s...", packgame)

    # 整合apk（删除meta-inf）
    newPackageName = utils_file.resetApk("tempApk", packgame)

    # 删除旧包
    if os.path.exists(packgame):
        os.remove(packgame)

    utils_log.info("now to sign game %s...", newPackageName)

    # 重签
    utils_apk.signApk("sample", "25", newPackageName);

    # if the main sdk has special logic. execute the special logic script.
    ret = utils_apk.doSDKScript(channel, decompileDir, newPackageName, sdkDestDir)
    if ret:
        return 1
    if defchannel is not None:
        ret = utils_apk.doSDKScript(defchannel, decompileDir, newPackageName, defsdkDestDir)
        if ret:
            return 1
    # if the game has some special logic. execute the special logic script.called post_script.py
    ret = utils_apk.doGamePostScript(game, channel, decompileDir, newPackageName)
    if ret:
        return 1

    # here to config the splash screen.
    #ret = utils_apk.addSplashScreen(workDir, channel, decompileDir)
    #if ret:
    #    return 1






