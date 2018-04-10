# -*- coding: utf-8 -*-

import sys
import utils_config
import utils_log
import os
import os.path
import main


# import main_thread


def entry(isPublic, isSelectable, threadNum):
    utils_log.info("Curr Python Version::%s", utils_config.get_py_version())

    print(u"**********所有游戏**********")
    print(u"\t appID \t\t 游戏文件夹 \t\t 游戏名称 \n\n")

    games = utils_config.getAllGames()
    if games != None and len(games) > 0:
        for ch in games:
            print(u"\t %s \t\t %s \t\t\t%s" % (ch['appID'], ch['appName'], ch['appDesc']))

    sys.stdout.write(u"请选择一个游戏(输入appID)：")
    sys.stdout.flush()

    selectedGameID = raw_input()
    selectedGameID = str(selectedGameID)

    game = getGameByAppID(selectedGameID, games)

    utils_log.info("current selected game is %s(%s)", game['appName'], game['appDesc'])

    # if isSelectable:
    main.main(game, isPublic)
    # else:
    # main_thread.main(game, isPublic, threadNum)


def getGameByAppID(appID, games):
    if games == None or len(games) <= 0:
        return None

    for game in games:
        if game['appID'] == appID:
            return game

    return None
