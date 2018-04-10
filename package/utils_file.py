#!/usr/bin/python
# -*- coding: utf-8 -*-
import os
import os.path
import re
import platform
import subprocess
import inspect
import sys
import codecs
import threading
import time
import utils_log
import zipfile

curDir = os.getcwd()


def list_files(src, resFiles, igoreFiles):
    if os.path.exists(src):

        if os.path.isfile(src) and src not in igoreFiles:
            resFiles.append(src)
        elif os.path.isdir(src):
            for f in os.listdir(src):
                if src not in igoreFiles:
                    list_files(os.path.join(src, f), resFiles, igoreFiles)

    return resFiles


def del_file_folder(src):
    if os.path.exists(src):
        if os.path.isfile(src):
            try:
                src = src.replace('\\', '/')
                os.remove(src)
            except:
                pass

        elif os.path.isdir(src):
            for item in os.listdir(src):
                itemsrc = os.path.join(src, item)
                del_file_folder(itemsrc)

            try:
                os.rmdir(src)
            except:
                pass


def copy_files(src, dest):
    if not os.path.exists(src):
        utils_log.warning("the src is not exists.path:%s", src)
        return

    if os.path.isfile(src):
        copy_file(src, dest)
        return

    for f in os.listdir(src):
        sourcefile = os.path.join(src, f)
        targetfile = os.path.join(dest, f)
        if os.path.isfile(sourcefile):
            copy_file(sourcefile, targetfile)
        else:
            copy_files(sourcefile, targetfile)


def copy_file(src, dest):
    sourcefile = getFullPath(src)
    destfile = getFullPath(dest)
    if not os.path.exists(sourcefile):
        return
    if not os.path.exists(destfile) or os.path.getsize(destfile) != os.path.getsize(sourcefile):
        destdir = os.path.dirname(destfile)
        if not os.path.exists(destdir):
            os.makedirs(destdir)
        destfilestream = open(destfile, 'wb')
        sourcefilestream = open(sourcefile, 'rb')
        destfilestream.write(sourcefilestream.read())
        destfilestream.close()
        sourcefilestream.close()


def modifyFileContent(sourcefile, oldContent, newContent):
    if os.path.isdir(sourcefile):
        utils_log.warning("the source %s must be a file not a dir", sourcefile)
        return

    if not os.path.exists(sourcefile):
        utils_log.warning("the source is not exists.path:%s", sourcefile)
        return

    f = open(sourcefile, 'r+')
    data = str(f.read())
    f.close()
    bRet = False
    idx = data.find(oldContent)
    while idx != -1:
        data = data[:idx] + newContent + data[idx + len(oldContent):]
        idx = data.find(oldContent, idx + len(oldContent))
        bRet = True

    if bRet:
        fw = open(sourcefile, 'w')
        fw.write(data)
        fw.close()
        utils_log.info("modify file success.path:%s", sourcefile)
    else:
        utils_log.warning("there is no content matched in file:%s with content:%s", sourcefile, oldContent)


def getCurrDir():
    global curDir
    retPath = curDir
    if platform.system() == 'Darwin':
        retPath = sys.path[0]
        lstPath = os.path.split(retPath)
        if lstPath[1]:
            retPath = lstPath[0]


    return retPath


def getFullPath(filename):
    if os.path.isabs(filename):
        return filename
    currdir = getCurrDir()
    filename = os.path.join(currdir, filename)
    filename = filename.replace('\\', '/')
    filename = re.sub('/+', '/', filename)
    return filename


def getSplashPath():
    return getFullPath("resource/splash")


def getJavaBinDir():
    if platform.system() == 'Windows':
        return getFullPath("tools/win/jre/bin/")
    else:
        return ""


def getJavaCMD():
    return getJavaBinDir() + "java"


def getToolPath(filename):
    if platform.system() == 'Windows':
        return "tools/win/" + filename
    else:
        return "tools/mac/" + filename


def getFullToolPath(filename):
    return getFullPath(getToolPath(filename))


def getFullOutputPath(appName, channel):
    path = getFullPath('output/' + appName + '/' + channel)
    # del_file_folder(path)
    if not os.path.exists(path):
        os.makedirs(path)
    return path


def execFormatCmd(cmd):
    cmd = cmd.replace('\\', '/')
    cmd = re.sub('/+', '/', cmd)
    ret = 0
    utils_log.info("execFormatCmd")
    try:
        reload(sys)
        sys.setdefaultencoding('utf-8')

        if platform.system() == 'Windows':
            st = subprocess.STARTUPINFO
            st.dwFlags = subprocess.STARTF_USESHOWWINDOW
            st.wShowWindow = subprocess.SW_HIDE
            # cmd = str(cmd).encode('gbk')
        s = subprocess.Popen(cmd, shell=True)
        ret = s.wait()
        if ret:
            s = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            stdoutput, erroutput = s.communicate()

            utils_log.error("*******ERROR*******")
            utils_log.error(stdoutput)
            utils_log.error(erroutput)
            utils_log.error("*******************")

            cmd = 'error::' + cmd + '  !!!exec Fail!!!  '
        else:

            s = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            stdoutput, erroutput = s.communicate()

            utils_log.info(stdoutput)
            utils_log.info(erroutput)

            cmd = cmd + ' !!!exec success!!! '

        utils_log.info(cmd)

    except Exception as e:
        print(e)
        return

    return ret


def execWinCommand(cmd):
    os.system(cmd)


def execWinCommandInput(tip):
    r = os.popen("set /p s=" + tip)
    txt = r.read()
    r.close()
    return txt


def on_access_error(func, path, exc_info):
    if not os.access(path, os.W_OK):
        os.chmod(path, stat.S_IWUSR)
        func(path)
    else:
        raise


# 删除整合包的meta-info重新打包
def resetApk(soureDir, targetFile):
    # 删除旧文件夹
    del_file_folder(soureDir)
    # 先解压
    f = zipfile.ZipFile(targetFile, 'r')
    for file in f.namelist():
        f.extract(file, soureDir)
    # 再删除
    del_file_folder(soureDir + "\META-INF")

    # 再重新打包
    newPackage = zip_dir(soureDir, targetFile)
    return newPackage


# zip形式打包apk
def zip_dir(dirname, zipfilename):
    targetFile = zipfilename
    zipfilename = zipfilename.replace(".apk", "_reset.apk")
    filelist = []
    if os.path.isfile(dirname):
        filelist.append(dirname)
    else:
        for root, dirs, files in os.walk(dirname):
            for name in files:
                filelist.append(os.path.join(root, name))
    zf = zipfile.ZipFile(zipfilename, "w", zipfile.zlib.DEFLATED)
    for tar in filelist:
        arcname = tar[len(dirname):]
        # print arcname
        zf.write(tar, arcname)
    zf.close()
    # 打包好删除文件夹
    del_file_folder(dirname)
    return zipfilename
