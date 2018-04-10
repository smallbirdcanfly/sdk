.class public Lcom/pyw/plugin/oppo/OPPOPlugin;
.super Lcom/pyw/plugin/PYWPlugin;
.source "OPPOPlugin.java"


# instance fields
.field appid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private mOrderID:Ljava/lang/String;

.field private paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

.field private serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pyw/plugin/PYWPlugin;-><init>()V

    .line 40
    const-string v0, "3602778"

    iput-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->appid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pyw/plugin/oppo/OPPOPlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->mOrderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    return-object v0
.end method


# virtual methods
.method public gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 163
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 164
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 165
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/pyw/plugin/oppo/OPPOPlugin$4;

    invoke-direct {v2, p0, p1}, Lcom/pyw/plugin/oppo/OPPOPlugin$4;-><init>(Lcom/pyw/plugin/oppo/OPPOPlugin;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->onExit(Landroid/app/Activity;Lcom/nearme/game/sdk/callback/GameExitCallback;)V

    .line 174
    return-void
.end method

.method public getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    const-string v0, "channel"

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v0, "oppo"

    return-object v0
.end method

.method public getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverArea"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->serverId:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;

    iget-object v2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->appid:Ljava/lang/String;

    iget-object v3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->serverId:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roleName"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 61
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roleLevel"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, "param":Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    new-instance v2, Lcom/pyw/plugin/oppo/OPPOPlugin$1;

    invoke-direct {v2, p0}, Lcom/pyw/plugin/oppo/OPPOPlugin$1;-><init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V

    invoke-virtual {v1, v0, v2}, Lcom/nearme/game/sdk/GameCenterSDK;->doReportUserGameInfoData(Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 76
    return-void

    .line 57
    .end local v0    # "param":Lcom/nearme/game/sdk/common/model/biz/ReportUserGameInfoParam;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverArea"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roleName"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getTokenAndSsoid()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/pyw/plugin/oppo/OPPOPlugin$5;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/oppo/OPPOPlugin$5;-><init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doGetTokenAndSsoid(Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 201
    return-void
.end method

.method public getVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 47
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 48
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 81
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/pyw/plugin/oppo/OPPOPlugin$2;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/oppo/OPPOPlugin$2;-><init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V

    invoke-virtual {v0, p1, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doLogin(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 97
    return-void
.end method

.method public logout(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 157
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 159
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 271
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 266
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nearme/game/sdk/GameCenterSDK;->onPause()V

    .line 232
    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/GameCenterSDK;->onResume(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 108
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 109
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "productName"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "productName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orderID"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->mOrderID:Ljava/lang/String;

    .line 112
    const-string v6, "price"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/lit8 v0, v6, 0x64

    .line 114
    .local v0, "amount":I
    const-string v2, ""

    .line 115
    .local v2, "extrol":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v3, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "gamekey"

    sget-object v7, Lcom/pyw/b/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v6, "game_version_code"

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/sdk/utils/a;->c(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 127
    :goto_0
    new-instance v4, Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel_order_sn"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2, v0}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    .local v4, "payInfo":Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    invoke-virtual {v4, v5}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4, v5}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setProductDesc(Ljava/lang/String;)V

    .line 132
    const-string v6, "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/52/18d2bc03aa82c9120bdd33a2b4de7379"

    .line 131
    invoke-virtual {v4, v6}, Lcom/nearme/game/sdk/common/model/biz/PayInfo;->setCallbackUrl(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v6

    new-instance v7, Lcom/pyw/plugin/oppo/OPPOPlugin$3;

    invoke-direct {v7, p0}, Lcom/pyw/plugin/oppo/OPPOPlugin$3;-><init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V

    invoke-virtual {v6, p1, v4, v7}, Lcom/nearme/game/sdk/GameCenterSDK;->doPay(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 154
    return-void

    .line 123
    .end local v4    # "payInfo":Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .line 206
    return-void
.end method

.method public setExitGame(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 102
    iput-object p3, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 103
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public setLoginCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->context:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 211
    return-void
.end method
