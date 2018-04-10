#!/usr/bin/python
# -*- coding: utf-8 -*-

import zipfile
import os, os.path
import time
import utils_file
import subprocess
import utils_apk
import utils_log

def iterbrowse(path):
    for home, dirs, files in os.walk(path):
        for filename in files:
            yield os.path.join(home, filename)


if __name__ == '__main__':
    # 打包
    # utils_apk.recompileApk("workspace\sample\yyb\decompile", "game111.apk", "apktool2.jar")
    # f = zipfile.ZipFile("game111.apk", 'r')
    # for file in f.namelist():
    #     f.extract(file, "unzipTest")
    #     print file
    # utils_file.del_file_folder("unzipTest\META-INF")
    # zip_dir("unzipTest", "newApk.apk")
    # zipFileFullDir = os.path.join("unzipTest", 'newApk.apk')
    # newF = zipfile.ZipFile(zipFileFullDir, 'w', zipfile.ZIP_DEFLATED)
    # for fullname in iterbrowse("unzipTest"):
    #     if not fullname.endswith("newApk.apk"):
    #         newF.write(fullname.replace("unzipTest\\", ""))
    #     #print fullname.replace("unzipTest\\", "")
    # newF.close()
    utils_log.info("now to package game %s...")
    
    app_name = "sample"
    #
    packgame = "output\\" + app_name + ".apk"

    decompileDir = "workspace\sample\ky\decompile"
   
    # 打包
    utils_apk.recompileApk(decompileDir, packgame, "apktool2.jar")

    # 整合apk（删除meta-inf）
    newPackageName = utils_file.resetApk("tempApk", packgame)

    # 删除旧包
    if os.path.exists(packgame):
        os.remove(packgame)

    # 重签
    utils_apk.signApk("sample", "25", newPackageName)
    #

    #utils_apk.mergeManifest("25", "workspace\sample\yyb\decompile\AndroidManifest.xml",
                            #"resource\channel_sdk\yyb\SDKManifest.xml"
                            #)
