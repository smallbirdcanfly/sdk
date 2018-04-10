#!/usr/bin/python
# -*- coding: utf-8 -*-
import utils_file
import os
import os.path
import utils_config
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import os
import os.path
import zipfile
import re
import subprocess
import platform
from xml.dom.minidom import parse
import xml.dom.minidom
import codecs
import sys
import shutil
import time
# from PIL import Image
# import utils_image
import utils_log

androidNS = 'http://schemas.android.com/apk/res/android'


def copyLibs(game, srcDir, dstDir, workDir):
    """
        copy shared libraries
    """

    if not os.path.exists(srcDir):
        return

    if not os.path.exists(dstDir):
        os.makedirs(dstDir)

    for f in os.listdir(srcDir):
        sourcefile = os.path.join(srcDir, f)
        targetfile = os.path.join(dstDir, f)

        if sourcefile.endswith(".jar"):
            # 应用宝jar解压资源
            if game['appId'] == '25':
                utils_log.info("now to unzip yyb jar %s...", sourcefile)
                unzipJar(game, sourcefile, srcDir, workDir)
            continue

        if os.path.isfile(sourcefile):
            if not os.path.exists(targetfile) or os.path.getsize(targetfile) != os.path.getsize(sourcefile):
                destfilestream = open(targetfile, 'wb')
                sourcefilestream = open(sourcefile, 'rb')
                
                destfilestream.write(sourcefilestream.read())
                destfilestream.close()
                sourcefilestream.close()

        if os.path.isdir(sourcefile):
            copyLibs(game, sourcefile, targetfile, workDir)


def jar2dex(srcDir, dstDir, dextool="baksmali.jar"):
    """
        compile jar files to dex.
    """

    dexToolPath = utils_file.getFullToolPath("/lib/dx.jar")
    heapSize = utils_config.getJDKHeapSize()
    cmd = utils_file.getJavaCMD() + ' -jar -Xms%sm -Xmx%sm "%s" --dex --output="%s" ' % (
        heapSize, heapSize, dexToolPath, dstDir + "/classes.dex")

    for f in os.listdir(srcDir):
        if f.endswith(".jar"):
            cmd = cmd + " " + os.path.join(srcDir, f)

    libsPath = os.path.join(srcDir, "libs")
    if os.path.exists(libsPath):

        for f in os.listdir(libsPath):
            if f.endswith(".jar"):
                cmd = cmd + " " + os.path.join(srcDir, "libs", f)

    ret = utils_file.execFormatCmd(cmd)


def dex2smali(dexFile, targetdir, dextool="baksmali.jar"):
    """
        Transfer the dex to smali.
    """

    if not os.path.exists(dexFile):
        utils_log.error("the dexfile is not exists. path:%s", dexFile)
        return 1

    if not os.path.exists(targetdir):
        os.makedirs(targetdir)

    dexFile = utils_file.getFullPath(dexFile)
    smaliTool = utils_file.getFullToolPath(dextool)
    targetdir = utils_file.getFullPath(targetdir)

    cmd = '"%s" -jar "%s" -o "%s" "%s"' % (utils_file.getJavaCMD(), smaliTool, targetdir, dexFile)

    ret = utils_file.execFormatCmd(cmd)

    return ret


def decompileApk(source, targetdir, apktool="apktool.jar"):
    """
        Decompile apk
    """
    apkfile = utils_file.getFullPath(source)
    targetdir = utils_file.getFullPath(targetdir)
    apktool = utils_file.getFullToolPath(apktool)
    if os.path.exists(targetdir):
        utils_file.del_file_folder(targetdir)
    if not os.path.exists(targetdir):
        os.makedirs(targetdir)

    heapSize = utils_config.getJDKHeapSize()
    cmd = '"%s" -jar -Xms%sm -Xmx%sm "%s" -q d -b -f "%s" -o "%s"' % (
        utils_file.getJavaCMD(), heapSize, heapSize, apktool, apkfile, targetdir)
    # cmd = '"%s" -q d -d -f "%s" "%s"' % (apktool, apkfile, targetdir)
    # print("decompile cmd : "+ cmd)
    ret = utils_file.execFormatCmd(cmd)
    return ret


def recompileApk(sourcefolder, apkfile, apktool="apktool.jar"):
    """
        Recompile apk
    """
    os.chdir(utils_file.curDir)
    sourcefolder = utils_file.getFullPath(sourcefolder)
    apkfile = utils_file.getFullPath(apkfile)
    apktool = utils_file.getFullToolPath(apktool)
    utils_log.info("recompileApk")
    ret = 1
    if os.path.exists(sourcefolder):
        heapSize = utils_config.getJDKHeapSize()
        cmd = '"%s" -jar -Xms%sm -Xmx%sm "%s" -q b -f "%s" -o "%s"' % (
            utils_file.getJavaCMD(), heapSize, heapSize, apktool, sourcefolder, apkfile)
        # cmd = '"%s" -q b -f "%s" "%s"' % (apktool, sourcefolder, apkfile)
        ret = utils_file.execFormatCmd(cmd)

    return ret


def signApk(appName, channelId, apkfile):
    """
        Sign apk
    """
    keystore = utils_config.getKeystore(appName, channelId)

    utils_log.info("the keystore file is %s", keystore['keystore'])
    signApkInternal(apkfile, keystore['keystore'], keystore['password'], keystore['aliaskey'], keystore['aliaspwd'])
    

def signApkInternal(apkfile, keystore, password, alias, aliaspwd):
    apkfile = utils_file.getFullPath(apkfile)
    keystore = utils_file.getFullPath(keystore)
    aapt = utils_file.getFullToolPath("aapt")

    if not os.path.exists(keystore):
        utils_log.error("the keystore file is not exists. %s", keystore)
        return 1

    listcmd = '%s list %s' % (aapt, apkfile)

    output = os.popen(listcmd).read()
    for filename in output.split('\n'):
        if filename.find('META_INF') == 0:
            rmcmd = '"%s" remove "%s" "%s"' % (aapt, apkfile, filename)
            utils_file.execFormatCmd(rmcmd)

    signcmd = '"%sjarsigner" -digestalg SHA1 -sigalg MD5withRSA -keystore "%s" -storepass "%s" -keypass "%s" "%s" "%s" ' % (
        utils_file.getJavaBinDir(),
        keystore, password, aliaspwd, apkfile, alias)

    ret = utils_file.execFormatCmd(signcmd)

    return ret


def copyRootResFiles(apkfile, decompileDir):
    apkfile = utils_file.getFullPath(apkfile)
    aapt = utils_file.getFullToolPath("aapt")
    decompileDir = utils_file.getFullPath(decompileDir)

    igoreFiles = ['AndroidManifest.xml', 'apktool.yml', 'smali', 'res', 'original', 'lib', 'build', 'assets', 'unknown']
    igoreFileFullPaths = []

    for ifile in igoreFiles:
        fullpath = os.path.join(decompileDir, ifile)
        igoreFileFullPaths.append(fullpath)

    addFiles = []

    addFiles = utils_file.list_files(decompileDir, addFiles, igoreFileFullPaths)

    if len(addFiles) <= 0:
        return

    addCmd = '"%s" add "%s"'
    for f in addFiles:
        fname = f[(len(decompileDir) + 1):]
        addCmd = addCmd + ' ' + fname

    addCmd = addCmd % (aapt, apkfile)

    currPath = os.getcwd()

    os.chdir(decompileDir)
    utils_file.execFormatCmd(addCmd)
    os.chdir(currPath)


def alignApk(apkfile, targetapkfile):
    """
        zip align the apk file
    """

    align = utils_file.getFullToolPath('zipalign')
    aligncmd = '"%s" -f 4 "%s" "%s"' % (align, apkfile, targetapkfile)

    ret = utils_file.execFormatCmd(aligncmd)

    return ret


def getPackageName(decompileDir):
    """
        Get The package attrib of application node in AndroidManifest.xml
    """

    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()
    package = root.attrib.get('package')

    return package


def renamePackageName(channel, decompileDir, newPackageName, isPublic=True):
    """
        Rename package name to the new name configed in the channel
    """

    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()
    package = root.attrib.get('package')

    oldPackageName = package
    tempPackageName = newPackageName

    if not isPublic:
        newPackageName = oldPackageName + ".debug"

    if tempPackageName != None and len(tempPackageName) > 0:

        if tempPackageName[0:1] == '.':
            if not isPublic:
                newPackageName = oldPackageName + ".debug" + tempPackageName
            else:
                newPackageName = oldPackageName + tempPackageName
        else:
            newPackageName = tempPackageName

    if newPackageName == None or len(newPackageName) <= 0:
        newPackageName = oldPackageName

    utils_log.info("the new package name is %s", newPackageName)
    # now to check activity or service
    appNode = root.find('application')
    if appNode != None:

        # now to config icon if icon configed.
        # if 'icon' in channel and channel['icon'] != None:
        # 	iconKey = '{'+androidNS+'}icon'
        # 	iconVal = '@drawable/' + channel['icon']
        # 	appNode.set(iconKey, iconVal)

        activityLst = appNode.findall('activity')
        key = '{' + androidNS + '}name'
        if activityLst != None and len(activityLst) > 0:
            for aNode in activityLst:
                activityName = aNode.attrib[key]
                if activityName[0:1] == '.':
                    activityName = oldPackageName + activityName
                elif activityName.find('.') == -1:
                    activityName = oldPackageName + '.' + activityName
                aNode.attrib[key] = activityName

        serviceLst = appNode.findall('service')
        # key = '{'+androidNS+'}name'
        if serviceLst != None and len(serviceLst) > 0:
            
            for sNode in serviceLst:
                serviceName = sNode.attrib[key]
                if serviceName[0:1] == '.':
                    serviceName = oldPackageName + serviceName
                elif serviceName.find('.') == -1:
                    serviceName = oldPackageName + '.' + serviceName
                sNode.attrib[key] = serviceName

        receiverLst = appNode.findall('receiver')
        # key = '{'+androidNS+'}name'
        if receiverLst != None and len(receiverLst) > 0:
            for sNode in receiverLst:
                receiverName = sNode.attrib[key]
                if receiverName[0:1] == '.':
                    receiverName = oldPackageName + receiverName
                elif receiverName.find('.') == -1:
                    receiverName = oldPackageName + '.' + receiverName
                sNode.attrib[key] = receiverName

        providerLst = appNode.findall('provider')
        # key = '{'+androidNS+'}name'
        if providerLst != None and len(providerLst) > 0:
            for sNode in providerLst:
                providerName = sNode.attrib[key]
                if providerName[0:1] == '.':
                    providerName = oldPackageName + providerName
                elif providerName.find('.') == -1:
                    providerName = oldPackageName + '.' + providerName
                sNode.attrib[key] = providerName

    root.attrib['package'] = newPackageName
    tree.write(manifestFile, 'UTF-8')

    package = newPackageName
    return package


def copyResource(game, channel, packageName, sdkDir, decompileDir, operations, name, pluginInfo=None):
    """
        Copy sdk resources to the apk decompile dir

        Merge manifest.xml
        Merge all res xml if the xml already exists in target apk.
        copy all others resources
    """

    if operations != None:
        for child in operations:
            if child['type'] == 'mergeManifest':
                manifestFrom = utils_file.getFullPath(os.path.join(sdkDir, child['from']))
                manifestFromTemp = manifestFrom
                manifestTo = utils_file.getFullPath(os.path.join(decompileDir, child['to']))

                if 'orientation' in game:
                    if game['orientation'] == 'portrait':
                        manifestFrom = manifestFrom[:-4] + "_portrait.xml"
                    else:
                        manifestFrom = manifestFrom[:-4] + "_landscape.xml"

                    if not os.path.exists(manifestFrom):
                        manifestFrom = manifestFromTemp

                utils_log.info("The sdk manifest file is %s", manifestFrom)

                # merge into xml
                bRet = mergeManifest(channel, manifestTo, manifestFrom)
                if bRet:
                    utils_log.info("merge manifest file success.")
                else:
                    utils_log.error("merge manifest file failed.")
                    return 1

            elif child['type'] == 'copyRes':

                if child['from'] == None or child['to'] == None:
                    utils_log.error("the sdk config file error. 'copyRes' need 'from' and 'to'.sdk name:%s", name)
                    return 1

                copyFrom = utils_file.getFullPath(os.path.join(sdkDir, child['from']))
                copyTo = utils_file.getFullPath(os.path.join(decompileDir, child['to']))

                if child['to'] == 'lib':
                    copyLibs(game, copyFrom, copyTo, decompileDir)
                else:
                    copyResToApk(copyFrom, copyTo)

            elif child['type'] == 'script' and pluginInfo != None:
                # now only third-plugin support script
                if child['from'] == None:
                    utils_log.error("the sdk config file is error. 'script' need 'from' attrib to specify script.py")
                    return 1

                scriptName = child['from']
                utils_log.info("now to execute plugin script. name:%s", scriptName)
                doScript(channel, pluginInfo, decompileDir, packageName, sdkDir, scriptName)

    return 0


def copyChannelResources(game, channel, decompileDir):
    """
        Copy channel resources to decompile folder. for example icon resources, assets and so on.
    """
    print channel
    resPath = "games/" + game['appName'] + "/channels/" + channel['id']
    resPath = utils_file.getFullPath(resPath)
    if not os.path.exists(resPath):
        utils_log.warning("the channel %s special res path is not exists. %s", channel['id'], resPath)
        return 0

    targetResPath = utils_file.getFullPath(decompileDir)

    assetsPath = os.path.join(resPath, 'assets')
    libsPath = os.path.join(resPath, 'libs')
    resourcePath = os.path.join(resPath, 'res')

    targetAssetsPath = os.path.join(decompileDir, 'assets')
    targetLibsPath = os.path.join(decompileDir, 'lib')
    targetResourcePath = os.path.join(decompileDir, 'res')

    copyResToApk(assetsPath, targetAssetsPath)
    copyResToApk(libsPath, targetLibsPath)
    copyResToApk(resourcePath, targetResourcePath)

    utils_log.info("copy channel %s special res to apk success.", channel['name'])

    return 0


def copyAppResources(game, decompileDir):
    """
        Copy game res files to apk.
    """
    resPath = "games/" + game['appName'] + "/res"
    resPath = utils_file.getFullPath(resPath)
    if not os.path.exists(resPath):
        utils_log.warning("the game %s has no extra res folder", game['appName'])
        return

    assetsPath = os.path.join(resPath, 'assets')
    libsPath = os.path.join(resPath, 'libs')
    resourcePath = os.path.join(resPath, 'res')

    targetAssetsPath = os.path.join(decompileDir, 'assets')
    targetLibsPath = os.path.join(decompileDir, 'lib')
    targetResourcePath = os.path.join(decompileDir, 'res')

    copyResToApk(assetsPath, targetAssetsPath)
    copyResToApk(libsPath, targetLibsPath)
    copyResToApk(resourcePath, targetResourcePath)


def copyAppRootResources(game, decompileDir):
    """
        Copy game root files to apk. the files will be in the root path of apk
    """
    resPath = "games/" + game['appName'] + "/root"
    resPath = utils_file.getFullPath(resPath)

    if not os.path.exists(resPath):
        utils_log.info("the game %s has no root folder", game['appName'])
        return

    targetResPath = utils_file.getFullPath(decompileDir)
    copyResToApk(resPath, targetResPath)

    return


def mergeManifest(channel, targetManifest, sdkManifest):
    """
        Merge sdk SdkManifest.xml to the apk AndroidManifest.xml
    """

    if not os.path.exists(targetManifest) or not os.path.exists(sdkManifest):
        utils_log.error("the manifest file is not exists.targetManifest:%s;sdkManifest:%s", targetManifest, sdkManifest)
        return False

    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(targetManifest)
    targetRoot = targetTree.getroot()

    ET.register_namespace('android', androidNS)
    sdkTree = ET.parse(sdkManifest)
    sdkRoot = sdkTree.getroot()

    f = open(targetManifest)
    targetContent = f.read()
    f.close()

    permissionConfigNode = sdkRoot.find('permissionConfig')
    if permissionConfigNode != None and len(permissionConfigNode) > 0:
        for child in list(permissionConfigNode):
            key = '{' + androidNS + '}name'
            val = child.get(key)
            if val != None and len(val) > 0:
                attrIndex = targetContent.find(val)
                if -1 == attrIndex:
                    targetRoot.append(child)

    appConfigNode = sdkRoot.find('applicationConfig')
    appNode = targetRoot.find('application')

    if appConfigNode != None:

        proxyApplicationName = appConfigNode.get('proxyApplication')
        if proxyApplicationName != None and len(proxyApplicationName) > 0:

            if 'PYW_APPLICATION_PROXY_NAME' in channel:

                channel['PYW_APPLICATION_PROXY_NAME'] = channel[
                                                            'PYW_APPLICATION_PROXY_NAME'] + ',' + proxyApplicationName
            else:

                channel['PYW_APPLICATION_PROXY_NAME'] = proxyApplicationName

        # 获取渠道闪屏名称
        launcherName = appConfigNode.get('channelLauncherName')
        # appKeyWord = appConfigNode.get('keyword')

        # exists = appKeyWord != None and len(appKeyWord.strip()) > 0 and targetContent.find(appKeyWord) != -1

        # if not exists:
        # remove keyword check...
        for child in list(appConfigNode):
            targetRoot.find('application').append(child)

    targetTree.write(targetManifest, 'UTF-8')
    # 修改闪屏 如果渠道 需要闪屏文件则增加此方法 不要则注释掉
    if launcherName != None and len(launcherName) > 0:
        mergeLauncher(launcherName, targetManifest)

    return True


def copyResToApk(copyFrom, copyTo):
    """
        Copy two resource folders
    """
   
    if not os.path.exists(copyFrom):
        utils_log.error("the copyFrom %s is not exists.", copyFrom)
        return

    if not os.path.exists(copyTo):
        os.makedirs(copyTo)

    if os.path.isfile(copyFrom) and not mergeResXml(copyFrom, copyTo):
        utils_file.copyFile(copyFrom, copyTo)
        return
    
    for f in os.listdir(copyFrom):
        
        sourcefile = os.path.join(copyFrom, f)
        targetfile = os.path.join(copyTo, f)

        if os.path.isfile(sourcefile):
            if not os.path.exists(copyTo):
                os.makedirs(copyTo)

            if mergeResXml(sourcefile, targetfile):
                continue
            if not os.path.exists(targetfile) or os.path.getsize(targetfile) != os.path.getsize(sourcefile):
                destfilestream = open(targetfile, 'wb')
                sourcefilestream = open(sourcefile, 'rb')
                destfilestream.write(sourcefilestream.read())
                destfilestream.close()
                sourcefilestream.close()

        if os.path.isdir(sourcefile):
            copyResToApk(sourcefile, targetfile)


def mergeResXml(copyFrom, copyTo):
    """
        Merge all android res xml
    """

    if not os.path.exists(copyTo):
        return False

    aryXml = ['strings.xml', 'styles.xml', 'colors.xml', 'dimens.xml', 'ids.xml', 'attrs.xml', 'integers.xml',
              'arrays.xml', 'bools.xml', 'drawables.xml']
    basename = os.path.basename(copyFrom)

    if basename in aryXml:
        if utils_config.is_py_env_2():
            f = open(copyTo)
        else:
            f = open(copyTo, 'r', encoding='utf-8')
        targetContent = f.read()
        f.close()

        fromTree = ET.parse(copyFrom)
        fromRoot = fromTree.getroot()
        toTree = ET.parse(copyTo)
        toRoot = toTree.getroot()
        for node in list(fromRoot):
            val = node.get('name')
            if val != None and len(val) > 0:
                valMatched = '"' + val + '"'
                attrIndex = targetContent.find(valMatched)
                if -1 == attrIndex:
                    toRoot.append(node)
                else:
                    utils_log.warning("The node %s is already exists in %s", val, basename)

        toTree.write(copyTo, 'UTF-8')
        return True
    return False


def copySplashToUnityResFolder(workDir, channel, decompileDir):
    splashPath = utils_file.getSplashPath()
    resPath = workDir + "/sdk/" + channel['name'] + "/splash/" + channel['splash'] + "/%s/u8_splash.png"
    resTargetPath = decompileDir + "/assets/bin/Data/splash.png"

    paths = ['drawable', 'drawable-hdpi', 'drawable-ldpi', 'drawable-mdpi', 'drawable-xhdpi']

    bFound = False
    for path in paths:
        imgPath = resPath % path
        if os.path.exists(imgPath):
            resPath = imgPath
            bFound = True
            break

    if not bFound:
        utils_log.error("the u8_splash is not found.path:%s", resPath)
        return 1

    if not os.path.exists(resTargetPath):
        utils_log.error("the unity splash is not exists. path:%s", resTargetPath)
        return 1

    utils_file.copy_file(resPath, resTargetPath)

    return 0


def addSplashScreen(workDir, channel, decompileDir):
    """
        if the splash attrib is not zero ,then set the splash activity
        if the splash_copy_to_unity attrib is set, then copy the splash img to unity res fold ,replace the default splash.png.

    """

    if channel['splash'] == '0':
        return 0

    if channel['splash_copy_to_unity'] == '1':
        return copySplashToUnityResFolder(workDir, channel, decompileDir)

    splashPath = utils_file.getSplashPath()
    smaliPath = splashPath + "/smali"
    smaliTargetPath = decompileDir + "/smali"

    copyResToApk(smaliPath, smaliTargetPath)

    splashLayoutPath = splashPath + "/pyw_splash.xml"
    splashTargetPath = decompileDir + "/res/layout/pyw_splash.xml"
    utils_file.copy_file(splashLayoutPath, splashTargetPath)

    resPath = workDir + "/sdk/" + channel['name'] + "/splash/" + channel['splash']
    resTargetPath = decompileDir + "/res"
    copyResToApk(resPath, resTargetPath)

    # remove original launcher activity of the game
    activityName = removeStartActivity(decompileDir)

    # append the launcher activity with the splash activity
    appendSplashActivity(decompileDir, channel['splash'])

    splashActivityPath = smaliTargetPath + "com/pyw/open/SplashActivity.smali"
    f = open(splashActivityPath, 'r+')
    content = str(f.read())
    f.close()

    replaceTxt = '{PYWSDK_Game_Activity}'

    idx = content.find(replaceTxt)
    if idx == -1:
        utils_log.error("modify splash file failed.the {PYWSDK_Game_Activity} not found in SplashActivity.smali")
        return 1

    content = content[:idx] + activityName + content[(idx + len(replaceTxt)):]
    f2 = open(splashActivityPath, 'w')
    f2.write(content)
    f2.close()

    utils_log.info("modify splash file success.")
    return 0


def removeStartActivity(decompileDir):
    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'

    tree = ET.parse(manifestFile)
    root = tree.getroot()

    applicationNode = root.find('application')
    if applicationNode is None:
        return

    activityNodeLst = applicationNode.findall('activity')
    if activityNodeLst is None:
        return

    activityName = ''

    for activityNode in activityNodeLst:
        bMain = False
        intentNodeLst = activityNode.findall('intent-filter')
        if intentNodeLst is None:
            break

        for intentNode in intentNodeLst:
            bFindAction = False
            bFindCategory = False

            actionNodeLst = intentNode.findall('action')
            if actionNodeLst is None:
                break
            for actionNode in actionNodeLst:
                if actionNode.attrib[key] == 'android.intent.action.MAIN':
                    bFindAction = True
                    break

            categoryNodeLst = intentNode.findall('category')
            if categoryNodeLst is None:
                break
            for categoryNode in categoryNodeLst:
                if categoryNode.attrib[key] == 'android.intent.category.LAUNCHER':
                    bFindCategory = True
                    break

            if bFindAction and bFindCategory:
                bMain = True
                intentNode.remove(actionNode)
                intentNode.remove(categoryNode)
                break

        if bMain:
            activityName = activityNode.attrib[key]
            break

    tree.write(manifestFile, 'UTF-8')
    return activityName


def appendSplashActivity(decompileDir, splashType):
    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    screenkey = '{' + androidNS + '}screenOrientation'
    theme = '{' + androidNS + '}theme'
    tree = ET.parse(manifestFile)
    root = tree.getroot()

    applicationNode = root.find('application')
    if applicationNode is None:
        return

    splashNode = SubElement(applicationNode, 'activity')
    splashNode.set(key, 'com.pyw.open.SplashActivity')
    splashNode.set(theme, '@android:style/Theme.Black.NoTitleBar.Fullscreen')

    if splashType[:1] == '1':
        splashNode.set(screenkey, 'landscape')
    else:
        splashNode.set(screenkey, 'portrait')

    intentNode = SubElement(splashNode, 'intent-filter')
    actionNode = SubElement(intentNode, 'action')
    actionNode.set(key, 'android.intent.action.MAIN')
    categoryNode = SubElement(intentNode, 'category')
    categoryNode.set(key, 'android.intent.category.LAUNCHER')
    tree.write(manifestFile, 'UTF-8')


def generateNewRFile(newPackageName, decompileDir):
    """
        Use all new resources to generate the new R.java, and compile it ,then copy it to the target smali dir
    """

    ret = checkValueResources(decompileDir)

    if ret:
        return 1

    decompileDir = utils_file.getFullPath(decompileDir)
    tempPath = os.path.dirname(decompileDir)
    tempPath = tempPath + "/temp"
    utils_log.debug("generate R:the temp path is %s", tempPath)
    if os.path.exists(tempPath):
        utils_file.del_file_folder(tempPath)
    if not os.path.exists(tempPath):
        os.makedirs(tempPath)

    resPath = os.path.join(decompileDir, "res")
    targetResPath = os.path.join(tempPath, "res")
    utils_file.copy_files(resPath, targetResPath)

    genPath = os.path.join(tempPath, "gen")
    if not os.path.exists(genPath):
        os.makedirs(genPath)

    aaptPath = utils_file.getFullToolPath("aapt")

    androidPath = utils_file.getFullToolPath("android.jar")
    manifestPath = os.path.join(decompileDir, "AndroidManifest.xml")
    cmd = '"%s" p -f -m -J "%s" -S "%s" -I "%s" -M "%s"' % (aaptPath, genPath, targetResPath, androidPath, manifestPath)
    ret = utils_file.execFormatCmd(cmd)
    if ret:
        return 1

    rPath = newPackageName.replace('.', '/')
    rPath = os.path.join(genPath, rPath)
    rPath = os.path.join(rPath, "R.java")

    cmd = '"%sjavac" -source 1.7 -target 1.7 -encoding UTF-8 "%s"' % (utils_file.getJavaBinDir(), rPath)
    ret = utils_file.execFormatCmd(cmd)
    if ret:
        return 1

    targetDexPath = os.path.join(tempPath, "classes.dex")

    dexToolPath = utils_file.getFullToolPath("/lib/dx.jar")

    heapSize = utils_config.getJDKHeapSize()
    cmd = utils_file.getJavaCMD() + ' -jar -Xmx%sm -Xms%sm "%s" --dex --output="%s" "%s"' % (
        heapSize, heapSize, dexToolPath, targetDexPath, genPath)

    ret = utils_file.execFormatCmd(cmd)
    if ret:
        return 1

    smaliPath = os.path.join(decompileDir, "smali")
    ret = dex2smali(targetDexPath, smaliPath, "baksmali.jar")

    return ret


def writeDevelopInfo(game_key, channel, defchannel, decompileDir):
    developConfigFile = os.path.join(decompileDir, "assets")
    if not os.path.exists(developConfigFile):
        os.makedirs(developConfigFile)

    developConfigFile = os.path.join(developConfigFile, "pywsdk.data")
    utils_config.writeDeveloperJson(game_key, channel, defchannel, developConfigFile)


def writePluginInfo(channel, decompileDir):
    developConfigFile = os.path.join(decompileDir, "assets")
    if not os.path.exists(developConfigFile):
        os.makedirs(developConfigFile)

    developConfigFile = os.path.join(developConfigFile, "apyx_plugin_config.xml")
    utils_config.writePluginConfigs(channel, developConfigFile)


def writeManifestMetaInfo(channel, decompileDir):
    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()

    key = '{' + androidNS + '}name'
    val = '{' + androidNS + '}value'

    appNode = root.find('application')
    if appNode is None:
        return

    metaDataList = appNode.findall('meta-data')

    if metaDataList != None:
        for metaDataNode in metaDataList:
            keyName = metaDataNode.attrib[key]
            for child in channel['params']:
                if keyName == child['name'] and child['bWriteInManifest'] == '1':
                    utils_log.warning("the meta-data node %s repeated. remove it .", keyName)
                    appNode.remove(metaDataNode)

    for child in channel['params']:
        if child['bWriteInManifest'] != None and child['bWriteInManifest'] == '1':
            metaNode = SubElement(appNode, 'meta-data')
            metaNode.set(key, child['name'])
            metaNode.set(val, child['value'])

    if 'APYX_APPLICATION_PROXY_NAME' in channel:
        metaNode = SubElement(appNode, 'meta-data')
        metaNode.set(key, "APYX_APPLICATION_PROXY_NAME")
        metaNode.set(val, channel['APYX_APPLICATION_PROXY_NAME'])


        # utils_log.info(ET.tostring(root,encoding="us-ascii", method="text"))

    tree.write(manifestFile, 'UTF-8')

    utils_log.info("The manifestFile meta-data write successfully")


def doScript(channel, pluginInfo, decompileDir, packageName, sdkTempDir, scriptName):
    if scriptName != 'script.py':
        utils_log.error("the script file name must be script.py")
        return 1

    sdkScript = os.path.join(sdkTempDir, scriptName)

    if not os.path.exists(sdkScript):
        return 0

    sys.path.append(sdkTempDir)

    import script
    ret = script.execute(channel, pluginInfo, decompileDir, packageName)
    del sys.modules['script']
    sys.path.remove(sdkTempDir)

    return ret


def doSDKScript(channel, decompileDir, packageName, sdkTempDir):
    sdkScript = os.path.join(sdkTempDir, "sdk_script.py")

    if not os.path.exists(sdkScript):
        return 0

    sys.path.append(sdkTempDir)

    import sdk_script
    ret = sdk_script.execute(channel, decompileDir, packageName)
    del sys.modules['sdk_script']
    sys.path.remove(sdkTempDir)

    return ret


def doGamePostScript(game, channel, decompileDir, packageName):
    scriptDir = utils_file.getFullPath("games/" + game['appName'] + "/scripts")

    if not os.path.exists(scriptDir):
        utils_log.info(
            "the game post script is not exists. if you have some specail logic, you can do it in games/[yourgame]/scripts/post_script.py")
        return 0

    sdkScript = os.path.join(scriptDir, "post_script.py")

    if not os.path.exists(sdkScript):
        utils_log.info(
            "the game post script is not exists. if you have some specail logic, you can do it in games/[yourgame]/scripts/post_script.py")
        return 0

    sys.path.append(scriptDir)

    import post_script

    utils_log.info("now to execute post_script.py of game %s ", game['appName'])
    ret = post_script.execute(game, channel, decompileDir, packageName)
    del sys.modules['post_script']
    sys.path.remove(scriptDir)

    return ret


def checkValueResources(decompileDir):
    valXmls = ['strings.xml', 'styles.xml', 'colors.xml', 'dimens.xml', 'ids.xml', 'attrs.xml', 'integers.xml',
               'arrays.xml', 'bools.xml', 'drawables.xml', 'public.xml']

    resDir = decompileDir + '/res/values'
    existsStrs = {}
    stringsXml = resDir + '/strings.xml'
    if os.path.exists(stringsXml):
        stringTree = ET.parse(stringsXml)
        root = stringTree.getroot()
        for node in list(root):
            stringItem = {}
            name = node.attrib.get('name')
            val = node.text
            stringItem['file'] = stringsXml
            stringItem['name'] = name
            stringItem['value'] = val
            existsStrs[name] = stringItem

    existsColors = {}
    colorsXml = resDir + 'colors.xml'
    if os.path.exists(colorsXml):
        colorTree = ET.parse(colorsXml)
        root = colorTree.getroot()
        for node in list(root):
            colorItem = {}
            name = node.attrib.get('name')
            val = node.text.lower()
            colorItem['file'] = colorsXml
            colorItem['name'] = name
            colorItem['value'] = val
            existsColors[name] = colorItem

    valueFiles = {}
    for filename in os.listdir(resDir):
        if filename in valXmls:
            continue

        srcFile = os.path.join(resDir, filename)
        if os.path.splitext(srcFile)[1] != '.xml':
            continue
        tree = ET.parse(srcFile)
        root = tree.getroot()
        if root.tag != 'resources':
            continue

        for node in list(root):
            dictRes = None
            if node.tag == 'string':
                dictRes = existsStrs
            elif node.tag == 'color':
                dictRes = existsColors
            else:
                continue

            name = node.attrib.get('name')
            val = node.text

            if name is None:
                continue

            resItem = dictRes.get(name)
            if resItem is not None:
                resVal = resItem.get('value')
                utils_log.warning("node %s duplicated!!! the val is %s;the newVal is %s", name, val, resVal)
                root.remove(node)

            else:
                valItem = {}
                valItem['file'] = srcFile
                valItem['name'] = name
                valItem['value'] = val
                dictRes[name] = valItem

        valueFiles[srcFile] = tree

    for valFile in valueFiles.keys():
        valueFiles[valFile].write(valFile, 'UTF-8')

    # check drawable resource
    ldpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-ldpi')
    mdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-mdpi')
    hdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-hdpi')
    xhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xhdpi')
    xxhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xxhdpi')
    xxxhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xxxhdpi')

    removeDuplicateDrawableRes(ldpiPath + "-v4", ldpiPath)
    removeDuplicateDrawableRes(mdpiPath + "-v4", mdpiPath)
    removeDuplicateDrawableRes(hdpiPath + "-v4", hdpiPath)
    removeDuplicateDrawableRes(xhdpiPath + "-v4", xhdpiPath)
    removeDuplicateDrawableRes(xxhdpiPath + "-v4", xxhdpiPath)
    removeDuplicateDrawableRes(xxxhdpiPath + "-v4", xxxhdpiPath)

    return 0


def removeDuplicateDrawableRes(path1, path2):
    if not os.path.exists(path1) or not os.path.exists(path2):
        return

    duplicatedFiles = []

    for f1 in os.listdir(path1):
        for f2 in os.listdir(path2):
            if f1 == f2:
                utils_log.warning("%s duplicated", os.path.join(path2, f2))
                duplicatedFiles.append(os.path.join(path2, f2))
                break

    for d in duplicatedFiles:
        os.remove(d)


def getAppIconName(decompileDir):
    """
        从AndroidManifest.xml中获取游戏图标的名称
    """

    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()

    applicationNode = root.find('application')
    if applicationNode is None:
        return "ic_launcher"

    key = '{' + androidNS + '}icon'
    iconName = applicationNode.get(key)

    if iconName is None:
        return "ic_launcher"

    name = iconName[10:]

    return name


def appendChannelIconMark(game, channel, decompileDir):
    """
        自动给游戏图标加上渠道SDK的角标
        没有角标，生成没有角标的ICON
    """

    gameIconPath = 'games/' + game['appName'] + '/icon/icon.png'
    gameIconPath = utils_file.getFullPath(gameIconPath)
    if not os.path.exists(gameIconPath):
        utils_log.error("the game %s icon is not exists:%s", game['appName'], gameIconPath)
        return 1

    useMark = True

    if 'icon' not in channel:
        utils_log.warning("the channel %s of game %s do not config icon in config.xml,no icon mark.", channel['name'],
                          game['appName'])
        useMark = False

    rlImg = Image.open(gameIconPath)

    if useMark:
        # 如果有角标，则添加角标
        markType = channel['icon']
        markName = 'right-bottom'
        if markType == 'rb':
            markName = 'right-bottom'
        elif markType == 'rt':
            markName = 'right-top'
        elif markType == 'lt':
            markName = 'left-top'
        elif markType == 'lb':
            markName = 'left-bottom'

        markPath = 'config/sdk/' + channel['name'] + '/icon_marks/' + markName + '.png'

        if not os.path.exists(markPath):
            utils_log.warning("the icon mark %s is not exists of sdk %s.no icon mark.", markPath, channel['name'])
        else:
            markIcon = Image.open(markPath)
            rlImg = image_utils.appendIconMark(rlImg, markIcon, (0, 0))

    ldpiSize = (36, 36)
    mdpiSize = (48, 48)
    hdpiSize = (72, 72)
    xhdpiSize = (96, 96)
    xxhdpiSize = (144, 144)
    xxxhdpiSize = (192, 192)

    ldpiIcon = rlImg.resize(ldpiSize, Image.ANTIALIAS)
    mdpiIcon = rlImg.resize(mdpiSize, Image.ANTIALIAS)
    hdpiIcon = rlImg.resize(hdpiSize, Image.ANTIALIAS)
    xhdpiIcon = rlImg.resize(xhdpiSize, Image.ANTIALIAS)
    xxhdpiIcon = rlImg.resize(xxhdpiSize, Image.ANTIALIAS)
    xxxhdpiIcon = rlImg.resize(xxxhdpiSize, Image.ANTIALIAS)

    ldpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-ldpi')
    mdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-mdpi')
    hdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-hdpi')
    xhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xhdpi')
    xxhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xxhdpi')
    xxxhdpiPath = utils_file.getFullPath(decompileDir + '/res/drawable-xxxhdpi')

    if not os.path.exists(ldpiPath):
        os.makedirs(ldpiPath)

    if not os.path.exists(mdpiPath):
        os.makedirs(mdpiPath)

    if not os.path.exists(hdpiPath):
        os.makedirs(hdpiPath)

    if not os.path.exists(xhdpiPath):
        os.makedirs(xhdpiPath)

    if not os.path.exists(xxhdpiPath):
        os.makedirs(xxhdpiPath)

    if not os.path.exists(xxxhdpiPath):
        os.makedirs(xxxhdpiPath)

    gameIconName = getAppIconName(decompileDir) + '.png'

    ldpiIcon.save(os.path.join(ldpiPath, gameIconName), 'PNG')
    if os.path.exists(ldpiPath + "-v4"):
        ldpiIcon.save(os.path.join(ldpiPath + "-v4", gameIconName), 'PNG')
    mdpiIcon.save(os.path.join(mdpiPath, gameIconName), 'PNG')
    if os.path.exists(mdpiPath + "-v4"):
        mdpiIcon.save(os.path.join(mdpiPath + "-v4", gameIconName), 'PNG')
    hdpiIcon.save(os.path.join(hdpiPath, gameIconName), 'PNG')
    if os.path.exists(hdpiPath + "-v4"):
        hdpiIcon.save(os.path.join(hdpiPath + "-v4", gameIconName), 'PNG')
    xhdpiIcon.save(os.path.join(xhdpiPath, gameIconName), 'PNG')
    if os.path.exists(xhdpiPath + "-v4"):
        xhdpiIcon.save(os.path.join(xhdpiPath + "-v4", gameIconName), 'PNG')

    xxhdpiIcon.save(os.path.join(xxhdpiPath, gameIconName), 'PNG')
    if os.path.exists(xxhdpiPath + "-v4"):
        xxhdpiIcon.save(os.path.join(xxhdpiPath + "-v4", gameIconName), 'PNG')

    xxxhdpiIcon.save(os.path.join(xxxhdpiPath, gameIconName), 'PNG')
    if os.path.exists(xxxhdpiPath + "-v4"):
        xxxhdpiIcon.save(os.path.join(xxxhdpiPath + "-v4", gameIconName), 'PNG')

    return 0


def checkCpuSupport(game, decompileDir):
    

    isfilter = ("cpuSupport" in game) and len(game["cpuSupport"]) > 0

    filters = None
    if isfilter:
        filters = game["cpuSupport"].split('|')
        print(filters)

        for f in os.listdir(os.path.join(decompileDir, 'lib')):
            if f not in filters:
                utils_file.del_file_folder(os.path.join(decompileDir, 'lib/' + f))

    # make sure so in armeabi and armeabi-v7a is same
    armeabiPath = os.path.join(decompileDir, 'lib/armeabi')
    armeabiv7aPath = os.path.join(decompileDir, 'lib/armeabi-v7a')

    if os.path.exists(armeabiPath) and os.path.exists(armeabiv7aPath):

        for f in os.listdir(armeabiPath):
            fv7 = os.path.join(armeabiv7aPath, f)
            if not os.path.exists(fv7):
                shutil.copy2(os.path.join(armeabiPath, f), fv7)

        for fv7 in os.listdir(armeabiv7aPath):
            f = os.path.join(armeabiPath, fv7)
            if not os.path.exists(f):
                shutil.copy2(os.path.join(armeabiv7aPath, fv7), f)


def modifyGameName(channel, decompileDir):
    """
        修改当前渠道的游戏名称,如果某个渠道的游戏名称特殊，可以配置gameName来指定。默认就是母包中游戏的名称
    """

    utils_log.info("now to modify game name ....")
    if 'gameName' not in channel:
        utils_log.info("now no game name modify")
        return

    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()

    labelKey = '{' + androidNS + '}label'
    applicationNode = root.find('application')
    applicationNode.set(labelKey, channel['gameName'])

    utils_log.info("the new game name is " + channel['gameName'])
    tree.write(manifestFile, 'UTF-8')


def checkApkForU8SDK(workDir, decompileDir):
    """
        检查母包中接入U8SDK抽象层是否正确
        不正确，则自动修正
    """
    ret = 0
    utils_log.info("now to check the u8.apk is correct?")

    manifestFile = decompileDir + "/AndroidManifest.xml"
    manifestFile = utils_file.getFullPath(manifestFile)
    ET.register_namespace('android', androidNS)
    tree = ET.parse(manifestFile)
    root = tree.getroot()

    key = '{' + androidNS + '}name'
    applicationNode = root.find('application')

    name = applicationNode.get(key)
    if not name or name != "com.apyx.unitysdk.open.APYXApplication":
        utils_log.error(
            "the android:name in application element must be 'com.apyx.unitysdk.open.APYXApplication'. now change it to com.apyx.sdk.APYXApplication, but maybe something will be wrong .")
        applicationNode.set(key, 'com.apyx.unitysdk.open.APYXApplication')
        tree.write(manifestFile, 'UTF-8')

    smaliName = utils_file.getFullPath(decompileDir + "/smali/com/apyx/unitysdk/open/APYXUnitySDK.smali")
    if not os.path.exists(smaliName):
        utils_log.error(
            "the apyxsdk2.jar is not packaged to the u8.apk. now merge it. but maybe something will be wrong .")

        apyxsdkJarPath = utils_file.getFullPath('config/local/apyx_unitysdk.jar')
        if not os.path.exists(apyxsdkJarPath):
            utils_log.error("the apyxsdk2.jar is not in config/local path. check failed")
            return 1

        targetPath = utils_file.getFullPath(workDir + "/local")
        if not os.path.exists(targetPath):
            os.makedirs(targetPath)

        utils_file.copy_file(apyxsdkJarPath, targetPath + "/apyx_unitysdk.jar")

        jar2dex(targetPath, targetPath)

        smaliPath = utils_file.getFullPath(decompileDir + "/smali")
        ret = dex2smali(targetPath + '/classes.dex', smaliPath)

    utils_log.info("check u8.apk successfully")

    return ret


def modifyYml(game, decompileDir):
    """
        修改apktool.yml 文件中的versionName,versionCode,minSdkVersion,targetSdkVersion
    """
    ymlPath = utils_file.getFullPath(decompileDir + "/apktool.yml")
    if not os.path.exists(ymlPath):
        utils_log.warning("the apktool.yml is not exists in " + decompileDir)
        return

    versionCode = None
    versionName = None
    if 'versionCode' in game:
        versionCode = game['versionCode']

    if 'versionName' in game:
        versionName = game['versionName']

    minSdkVersion = None
    targetSdkVersion = None
    maxSdkVersion = None

    if 'minSdkVersion' in game:
        minSdkVersion = game['minSdkVersion']

    if 'targetSdkVersion' in game:
        targetSdkVersion = game['targetSdkVersion']

    if 'maxSdkVersion' in game:
        maxSdkVersion = game['maxSdkVersion']

    isSDKConfiged = (minSdkVersion is not None) and (targetSdkVersion is not None) and (maxSdkVersion is not None)

    utils_log.info("the minSdkVersion targetSdkVersion maxSdkVersion must configed all or configed zero")

    ymlFile = open(ymlPath, 'r')
    lines = ymlFile.readlines()
    ymlFile.close()

    newLines = []
    for line in lines:
        if 'versionCode' in line and versionCode is not None:
            newLines.append("  versionCode: '" + versionCode + "'\n")
        elif 'versionName' in line and versionName is not None:
            newLines.append("  versionName: " + versionName + "\n")
        elif 'sdkInfo' in line and isSDKConfiged:
            continue
        elif 'minSdkVersion' in line and isSDKConfiged:
            continue
        elif 'targetSdkVersion' in line and isSDKConfiged:
            continue
        elif 'maxSdkVersion' in line and isSDKConfiged:
            continue
        else:
            newLines.append(line)

    if isSDKConfiged:
        newLines.append('sdkInfo:\n')
        newLines.append("  minSdkVersion: '" + minSdkVersion + "'\n")
        newLines.append("  targetSdkVersion: '" + targetSdkVersion + "'\n")
        newLines.append("  maxSdkVersion: '" + maxSdkVersion + "'\n")

    content = ''
    for line in newLines:
        content = content + line

    ymlFile = open(ymlPath, 'w')
    ymlFile.write(content)
    ymlFile.close()


def getOutputApkName(game, channel, packageName, decompileDir):
    """
        获取输出的最终apk包名
    """

    channelName = channel['name']
    channelName = channelName.replace(' ', '')
    if "outputApkName" not in game:
        apkName = channelName + '-' + time.strftime('%Y%m%d%H')
        if 'signApk' in channel and channel['signApk'] == '0':
            apkName = apkName + '_unsigned'

        return apkName + '.apk'

    formatStr = game['outputApkName']
    utils_log.debug("the output apk format string is " + formatStr)

    formatStr = formatStr.replace('{bundleID}', packageName)
    formatStr = formatStr.replace('{time}', time.strftime('%Y%m%d%H%M%S'))
    formatStr = formatStr.replace('{channelID}', channel['id'])
    formatStr = formatStr.replace('{channelName}', channelName)
    formatStr = formatStr.replace('{appName}', game['appName'])
    formatStr = formatStr.replace('{appID}', game['appID'])

    versionCode = getVersionCode(game, decompileDir)
    versionName = getVersionName(game, decompileDir)
    utils_log.debug("the versionCode is " + versionCode + ";versionName is " + versionName)

    formatStr = formatStr.replace('{versionCode}', versionCode)
    formatStr = formatStr.replace('{versionName}', versionName)

    apkName = formatStr
    if 'signApk' in channel and channel['signApk'] == '0':
        fname, fext = os.path.splitext(formatStr)
        apkName = fname + '_unsigned' + fext

    return apkName


def getVersionCode(game, decompileDir):
    """
        获取AndroidManifest.xml中设置的versionCode
    """

    if "versionCode" in game:
        return game['versionCode']

    ymlPath = utils_file.getFullPath(decompileDir + "/apktool.yml")
    if not os.path.exists(ymlPath):
        utils_log.warning("the apktool.yml is not exists in " + decompileDir)
        return "0"

    ymlFile = open(ymlPath, 'r')
    lines = ymlFile.readlines()
    ymlFile.close()

    for line in lines:
        if 'versionCode' in line:
            # versionCode: '15'
            return line.replace('versionCode:', '').strip()

    return "0"


def getVersionName(game, decompileDir):
    """
        获取AndroidManifest.xml中设置的versionName
    """

    if "versionName" in game:
        return game['versionName']

    ymlPath = utils_file.getFullPath(decompileDir + "/apktool.yml")
    if not os.path.exists(ymlPath):
        utils_log.warning("the apktool.yml is not exists in " + decompileDir)
        return "0"

    ymlFile = open(ymlPath, 'r')
    lines = ymlFile.readlines()
    ymlFile.close()

    for line in lines:
        if 'versionName' in line:
            # versionCode: '15'
            return line.replace('versionName:', '').strip()

    return "0"


# 解压jar到指定目录
def unzipJar(game, sourefile, targetdir, workDir):
    f = zipfile.ZipFile(sourefile, 'r')
    for file in f.namelist():
        f.extract(file, targetdir)
    if game['appId'] == '25':
        copyYybAssets(targetdir, workDir)


# 复制应用宝jar中的assets
def copyYybAssets(sourefile, targetdir):
    fromDir = sourefile + "/assets"
    targetdir = targetdir + "/assets"
    print "copy assets :" + fromDir + " to " + targetdir
    copyResToApk(fromDir, targetdir)


# 修改闪屏文件
def mergeLauncher(targetLauncherName, sourefile):
    if not os.path.exists(sourefile):
        utils_log.info("%s file not exist ", sourefile)
        exit(-1)
    print sourefile
    DOMTree = xml.dom.minidom.parse(sourefile)
    Data = DOMTree.documentElement
    # 在集合中获取所有act
    Activitys = Data.getElementsByTagName("activity")
    for activity in Activitys:
        if activity.hasAttribute("android:name"):
            # print "android:name: %s" % activity.getAttribute("android:name")
            act = activity.getAttribute("android:name")
            if activity.getElementsByTagName("intent-filter"):
                itemlist = activity.getElementsByTagName('action')
                for item in itemlist:
                    if str(item.getAttribute("android:name")) == 'android.intent.action.MAIN':
                        # 调用修改方法
                        if not os.path.exists(sourefile):  # 看一下这个文件是否存在
                            utils_log.info("%s file not exist ", sourefile)
                            exit(-1)  # 不存在就退出
                        lines = open(sourefile, 'r').readlines()
                        fp = open(sourefile, 'w')
                        for s in lines:
                            fp.write(s.replace(str(act), targetLauncherName))
                        fp.close
