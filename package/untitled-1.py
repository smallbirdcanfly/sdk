#!/usr/bin/env python
# -*- coding: utf-8 -*-
# 打包

import sys
import core
import os
import os.path
import utils_log
import utils_file
import utils_apk

if __name__ == '__main__':
    
    app_name = "sample"
    packgame = "output\\" + app_name + ".apk"
    decompileDir = "workspace\sample\yyb\decompile"
    utils_log.info("now to decompileDir package %s...", packgame)

    utils_apk.recompileApk(decompileDir, packgame, "apktool2.jar")

    utils_log.info("now to reset package %s...", packgame)

    # 整合apk（删除meta-inf）
    newPackageName = utils_file.resetApk("tempApk", packgame)

    # 删除旧包
    if os.path.exists(packgame):
        os.remove(packgame)

        utils_log.info("now to sign game %s...", newPackageName)

        # 重签
        utils_apk.signApk("sample", "25", newPackageName);

