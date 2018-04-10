#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import core
import os
import os.path
import utils_log
import utils_file
import utils_config

try:
    input = raw_input
except NameError:
    pass


def main(game, is_public):
    appName = game['appName']

    channels = utils_config.getAllChannels(appName, is_public)
    utils_log.info("channels data: " + str(channels))
    if channels is None or len(channels) == 0:
        print(u"没有任何可以打包的渠道")
        return

    for ch in channels:
        name = ch['name']
        if ch['name'] == 'pyw':
            defchannel = ch
        elif ch['name'] == 'oppo':
            channel = ch   

    game = {'appId': '52', 'appKey': '8c7f4751', 'appName': 'sample'}
    # channel = {'id':'17','name':'pyw','sdk':'pyw','suffix':'.pyw'}  朋友玩:17 应用宝:25 九九游:26  可游:27 六六九:28 华为:29 智游：31 UC:33 柠檬：34
    utils_log.info("channel data: " + str(channel))
    utils_log.info("defchannel data: " + str(defchannel))

    baseApkPath = utils_file.getFullPath('games/' + game['appName'] + '/game.apk')
    utils_log.info("the base apk file is : %s", baseApkPath)
    core.pack(game, channel, defchannel, baseApkPath, is_public)
