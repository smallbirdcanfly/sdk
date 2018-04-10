#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import os
import os.path
import json
import utils_file
import utils_log
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree


def getJDKHeapSize():
    return 1024


def get_py_version():
    version = sys.version_info
    major = version.major
    minor = version.minor
    micro = version.micro

    currVersion = str(major) + "." + str(minor) + "." + str(micro)

    return currVersion


def is_py_env_2():
    version = sys.version_info
    major = version.major
    return major == 2


def getAllGames():
    """
        get all games
    """
    configFile = utils_file.getFullPath("games/configs.xml")
    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse games.xml.path:%s", configFile)
        return None
    gamesNode = root.find('games')
    games = gamesNode.findall('game')
    if gamesNode == None:
        return None

    if games == None or len(games) <= 0:
        return None

    lstGames = []
    for cNode in games:
        game = {}
        params = cNode.findall('param')
        if params != None and len(params) > 0:
            for cParam in params:
                key = cParam.get("name")
                val = cParam.get("value")
                game[key] = val

        logNode = cNode.find('log')
        if logNode != None:
            game['log'] = dict()
            logParams = logNode.findall('param')
            if logParams != None and len(logParams) > 0:
                for lParam in logParams:
                    key = lParam.get("name")
                    val = lParam.get('value')
                    game['log'][key] = val

        lstGames.append(game)

    return lstGames


def getTestKeyStore():
    keystore = {}
    keystore['keystore'] = "config/keystore/xiaohei.keystore"
    keystore['password'] = "xiaohei"
    keystore['aliaskey'] = "xiaohei"
    keystore['aliaspwd'] = "xiaohei"

    return keystore


def getKeystore(appName, channelId):
    lstKeystores = getAllKeystores(appName)
    #utils_log.info("the lstKeystores is %s", keystore['keystore'])
    if lstKeystores != None and len(lstKeystores) > 0:
        for keystore in lstKeystores:
            if keystore['channelId'] == channelId:
                return keystore

    return getDefaultKeystore(appName)


def getDefaultKeystore(appName):
    fileName = "games/" + appName + "/keystore.xml"
    configFile = utils_file.getFullPath(fileName)
    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse keystore.xml.path:%s", configFile)
        return None

    params = root.find("default").findall("param")
    channel = {}
    for cParam in params:
        key = cParam.get('name')
        val = cParam.get('value')
        channel[key] = val

    return channel


def getAllKeystores(appName):
    fileName = "games/" + appName + "/keystore.xml"

    configFile = utils_file.getFullPath(fileName)

    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse keystore.xml.path:%s", configFile)
        return None

    channels = root.find("keystores").findall("channel")
    lstKeystores = []

    for cNode in channels:
        channel = {}
        params = cNode.findall("param")
        for cParam in params:
            key = cParam.get('name')
            val = cParam.get('value')
            channel[key] = val

        lstKeystores.append(channel)

    return lstKeystores


def getAppID():
    configFile = utils_file.getFullPath("config/config.xml")

    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse config.xml.path:%s", configFile)
        return None

    gameNode = root.find("game")

    if gameNode == None:
        return None

    appID = gameNode.get('appID')

    return appID


def getAppKey():
    configFile = utils_file.getFullPath("config/config.xml")

    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse config.xml.path:%s", configFile)
        return None

    gameNode = root.find("game")

    if gameNode == None:
        return None

    appID = gameNode.get('appKey')

    return appID


def getAllChannels(appName, isPublic):
    fileName = "games/" + appName + "/config.xml"

    configFile = utils_file.getFullPath(fileName)

    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except Exception as e:
        utils_log.error("can not parse config.xml.path:%s", configFile)
        return None

    channels = root.find("channels").findall("channel")
    lstChannels = []
    for cNode in channels:
        channel = {}
        params = cNode.findall("param")
        for cParam in params:
            key = cParam.get('name')
            val = cParam.get('value')
            channel[key] = val

        sdkVersionNode = cNode.find('sdk-version')
        if sdkVersionNode != None and len(sdkVersionNode) > 0:
            versionCodeNode = sdkVersionNode.find('versionCode')
            versionNameNode = sdkVersionNode.find('versionName')
            if versionCodeNode != None and versionNameNode != None:
                # u8server use the logic version code to decide which sdk version to use
                channel['sdkLogicVersionCode'] = versionCodeNode.text
                channel['sdkLogicVersionName'] = versionNameNode.text

        sdkParams = cNode.find("sdk-params")
        tblSDKParams = {}

        if sdkParams != None:
            sdkParamNodes = sdkParams.findall('param')
            if sdkParamNodes != None and len(sdkParamNodes) > 0:
                for cParam in sdkParamNodes:
                    key = cParam.get('name')
                    val = cParam.get('value')
                    tblSDKParams[key] = val

        channel['sdkParams'] = tblSDKParams

        # if len(lstGPlugins) > 0:
        #     for p in lstGPlugins:
        #         loadThirdPluginUserConfig(appName, channel, p, p['name'])


        ret = loadChannelUserConfig(appName, channel)
        if ret:
            # lstPlugins = [] + lstGPlugins
            lstPlugins = []
            pluginsNode = cNode.find("plugins")

            if pluginsNode != None:
                pluginNodeLst = pluginsNode.findall("plugin")
                if pluginNodeLst != None and len(pluginNodeLst) > 0:

                    for cPlugin in pluginNodeLst:
                        plugin = {}
                        plugin['name'] = cPlugin.get('name')

                        exists = False
                        for p in lstPlugins:
                            if p['name'] == plugin['name']:
                                exists = True
                                break

                        if not exists:
                            plugin['desc'] = cPlugin.get('desc')
                            loadThirdPluginUserConfig(appName, channel, plugin, plugin['name'])
                            lstPlugins.append(plugin)

            channel['third-plugins'] = lstPlugins
            lstChannels.append(channel)

    return lstChannels


def loadChannelUserConfig(appName, channel):
    configFile = utils_file.getFullPath("resource/channel_sdk/" + channel['sdk'] + "/config.xml")

    if not os.path.exists(configFile):
        utils_log.error("the config.xml is not exists of channel_sdk %s.path:%s", channel['name'], configFile)
        return 0

    try:
        tree = ET.parse(configFile)
        root = tree.getroot()
    except:
        utils_log.error("can not parse config.xml.path:%s", configFile)
        return 0

    configNode = root

    paramNodes = configNode.find("params")
    channel['params'] = []
    if paramNodes != None and len(paramNodes) > 0:

        for paramNode in paramNodes:
            param = {}
            param['name'] = paramNode.get('name')
            param['required'] = paramNode.get('required')

            if param['required'] == '1':

                key = param['name']
                if key in channel['sdkParams'] and channel['sdkParams'][key] != None:
                    param['value'] = channel['sdkParams'][key]
                else:
                    utils_log.error("the sdk %s 'sdkParam's is not all configed in the config.xml.path:%s",
                                    channel['name'], configFile)
                    return 0
            else:
                param['value'] = paramNode.get('value')

            param['showName'] = paramNode.get('showName')
            param['bWriteInManifest'] = paramNode.get('bWriteInManifest')
            param['bWriteInClient'] = paramNode.get('bWriteInClient')
            channel['params'].append(param)

    operationNodes = configNode.find("operations")
    channel['operations'] = []
    if operationNodes != None and len(operationNodes) > 0:

        for opNode in operationNodes:
            op = {}
            op['type'] = opNode.get('type')
            op['from'] = opNode.get('from')
            op['to'] = opNode.get('to')
            channel['operations'].append(op)

    pluginNodes = configNode.find("plugins")
    if pluginNodes != None and len(pluginNodes) > 0:
        channel['plugins'] = []
        for pNode in pluginNodes:
            p = {}
            p['name'] = pNode.get('name')
            p['type'] = pNode.get('type')
            channel['plugins'].append(p)

    versionNode = configNode.find("version")
    if versionNode != None and len(versionNode) > 0:
        versionCodeNode = versionNode.find("versionCode")
        versionNameNode = versionNode.find("versionName")
        # the sdk version code is used to check version update for the sdk.
        if versionCodeNode != None and versionNameNode != None:
            channel['sdkVersionCode'] = versionCodeNode.text
            channel['sdkVersionName'] = versionNameNode.text

    return 1


def writeDeveloperJson(game_key, channel, defchannel, targetFilePath):
    targetFilePath = utils_file.getFullPath(targetFilePath)
    proStr = {
        "info": {
            "channel_id": "",
            "game_key": ""
        },
        "channels": [
            {
                "name": "",
                "version": ""
            }
        ]
    }
    projson = json.loads(json.dumps(proStr))

    projson["info"]["channel_id"] = channel["id"]
    projson["info"]["game_key"] = game_key
    # projson["info"]["ver"] = '1.0'

    if channel['params'] is not None and len(channel['params']) > 0:
        projson["channels"][0]["name"] = channel['name']
        # projson["channels"][0]["sdk_channel_id"] = channel["id"]
        projson["channels"][0]["version"] = channel["sdkLogicVersionCode"]

    if defchannel is not None and defchannel['params'] is not None and len(defchannel['params']) > 0:
        temp = projson["channels"][0].copy()
        temp["name"] = defchannel['name']
        # temp["sdk_channel_id"] = channel["id"]
        temp["version"] = defchannel["sdkLogicVersionCode"]
        projson["channels"].append(temp)

    for param in channel['params']:
        if param['bWriteInClient'] == '1':
            for plugin in projson["channels"]:
                if plugin['name'] == channel['name']:
                    plugin.update({param['name']: ""})

    if defchannel is not None and defchannel['params'] is not None and len(defchannel['params']) > 0:
        for param in defchannel['params']:
            if param['bWriteInClient'] == '1':
                for plugin in projson["channels"]:
                    if plugin['name'] == defchannel['name']:
                        plugin.update({param['name']: ""})

    utils_log.debug("the develop info is %s", proStr)
    targetFile = open(targetFilePath, 'wb')
    pro_str = json.dumps(projson, sort_keys=True, indent=2)
    pro_str = pro_str.encode('UTF-8')
    print pro_str
    targetFile.write(pro_str)
    targetFile.close()


def writePluginConfigs(channel, targetFilePath):
    targetTree = None
    targetRoot = None
    pluginNodes = None

    targetTree = ElementTree()
    targetRoot = Element('plugins')
    targetTree._setroot(targetRoot)

    if 'plugins' in channel:
        for plugin in channel['plugins']:
            typeTag = 'plugin'
            typeName = plugin['name']
            typeVal = plugin['type']
            pluginNode = SubElement(targetRoot, typeTag)
            pluginNode.set('name', typeName)
            pluginNode.set('type', typeVal)

    # write third plugin info

    thirdPlugins = channel.get('third-plugins')
    if thirdPlugins != None and len(thirdPlugins) > 0:
        for cPlugin in thirdPlugins:

            if 'plugins' in cPlugin and cPlugin['plugins'] != None and len(cPlugin['plugins']) > 0:
                for plugin in cPlugin['plugins']:
                    typeTag = 'plugin'
                    typeName = plugin['name']
                    typeVal = plugin['type']
                    pluginNode = SubElement(targetRoot, typeTag)
                    pluginNode.set('name', typeName)
                    pluginNode.set('type', typeVal)

    targetTree.write(targetFilePath, 'UTF-8')
