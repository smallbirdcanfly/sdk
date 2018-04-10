import zipfile
import os, os.path
import utils_file
import utils_apk
import utils_log



    
            
            
if __name__ == "__main__":
    
    # 反编译apk
    utils_log.info("start copyfile and decompile")
    
    workDir = 'res/fq'
    utils_file.del_file_folder(workDir)
    workDir = utils_file.getFullPath(workDir)
    tempApkSource = workDir + "/temp.apk"
    utils_file.copy_file(utils_file.getFullPath('game.apk'), tempApkSource)
    decompileDir = workDir + "/decompile"
    utils_apk.decompileApk(tempApkSource, decompileDir)
    utils_log.info("copyfile and decompile success!!")
    
    # 修改string 
    sourefile = "res\\fq\\decompile\\res\\values\\strings.xml"
    if not os.path.exists(sourefile):  
        utils_log.info("%s String.xml file not exist ", sourefile)
        exit(-1)  
    utils_log.info("replace string.xml start")
    temp = "<string name=\"pyw_sdk_type\">1</string>"
    targetLauncherName = "<string name=\"pyw_sdk_type\">3</string>"
    lines = open(sourefile, 'r').readlines()
    fp = open(sourefile, 'w')
    for s in lines:
        fp.write(s.replace(str(temp), targetLauncherName))    
    fp.close
    utils_log.info("replace string.xml end")
    
    # 修改图片
    sourefile = "res\\fq\\decompile\\res\\drawable-xxhdpi\\pyw_img_sdk_logo.png";
    temp = "res\\fq\\decompile\\res\\drawable-xxhdpi"
    
    if not os.path.exists(sourefile):  
        utils_log.info("%s xxhdpi file not exist ", sourefile)
        exit(-1)  
    utils_log.info("replace xxhdpi start")    
    utils_file.del_file_folder(sourefile)
    utils_log.info("del_xxhdpi")  
   
    utils_apk.copyResToApk("fqres", temp)
    utils_log.info("replace xxhdpi end")
     
    utils_log.info("now to package game %s...")

    decompileDir = "res\\fq\\decompile"  

    app_name = "sample"

    packgame = "output\\" + app_name + ".apk"
    

    #执行apktool方法
   
    apkpath = 'apktool b '+ decompileDir
    os.system(apkpath + ' -o ' + packgame)
    
    utils_log.info("now to resetApk game %s...")
    
    # 整合apk（删除meta-inf）
    newPackageName = utils_file.resetApk("tempApk", packgame)

    # 删除旧包
    if os.path.exists(packgame):
        os.remove(packgame)

    # 重签
    utils_apk.signApk("sample", "25", newPackageName)