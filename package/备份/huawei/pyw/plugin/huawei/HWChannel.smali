.class public Lcom/pyw/plugin/huawei/HWChannel;
.super Lcom/pyw/plugin/PYWPlugin;
.source "HWChannel.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private orderID:Ljava/lang/String;

.field private paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private playerInfocallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pyw/plugin/PYWPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/huawei/HWChannel;Lcom/huawei/hms/support/api/entity/game/GameUserData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/pyw/plugin/huawei/HWChannel;->getParam(Lcom/huawei/hms/support/api/entity/game/GameUserData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/pyw/plugin/huawei/HWChannel;Ljava/lang/Object;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/pyw/plugin/huawei/HWChannel;->doSuccessCallback(Ljava/lang/Object;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pyw/plugin/huawei/HWChannel;ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/pyw/plugin/huawei/HWChannel;->doFailedCallback(ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pyw/plugin/huawei/HWChannel;)Lcom/pyw/plugin/PYWPluginExecutor$Callback;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pyw/plugin/huawei/HWChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pyw/plugin/huawei/HWChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pyw/plugin/huawei/HWChannel;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3}, Lcom/pyw/plugin/huawei/HWChannel;->doPayCallback(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkUpdate(Landroid/app/Activity;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/huawei/android/hms/agent/HMSAgent;->checkUpdate(Landroid/app/Activity;)V

    .line 179
    return-void
.end method

.method private createPayReq(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/pay/PayReq;
    .locals 7
    .param p1, "totalAmount"    # F
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 369
    new-instance v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;

    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/pay/PayReq;-><init>()V

    .line 374
    .local v1, "payReq":Lcom/huawei/hms/support/api/entity/pay/PayReq;
    const-string v2, "%.2f"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "amount":Ljava/lang/String;
    iput-object p2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->productName:Ljava/lang/String;

    .line 379
    iput-object p2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->productDesc:Ljava/lang/String;

    .line 381
    const-string v2, "890086000102068711"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->merchantId:Ljava/lang/String;

    .line 383
    const-string v2, "100236163"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->applicationID:Ljava/lang/String;

    .line 385
    iput-object v0, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->amount:Ljava/lang/String;

    .line 387
    iput-object p3, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->requestId:Ljava/lang/String;

    .line 389
    const-string v2, "CN"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->country:Ljava/lang/String;

    .line 391
    const-string v2, "CNY"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->currency:Ljava/lang/String;

    .line 393
    iput v6, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->sdkChannel:I

    .line 395
    const-string v2, "1"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->urlVer:Ljava/lang/String;

    .line 398
    const-string v2, "pyw"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->merchantName:Ljava/lang/String;

    .line 402
    const-string v2, "X6"

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->serviceCatalog:Ljava/lang/String;

    .line 404
    invoke-direct {p0, p4}, Lcom/pyw/plugin/huawei/HWChannel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->extReserved:Ljava/lang/String;

    .line 408
    sget-object v2, Lcom/pyw/plugin/huawei/GlobalParam;->PAY_RSA_PRIVATE:Ljava/lang/String;

    .line 407
    invoke-static {v1, v2}, Lcom/huawei/android/hms/agent/pay/PaySignUtil;->calculateSignString(Lcom/huawei/hms/support/api/entity/pay/PayReq;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/hms/support/api/entity/pay/PayReq;->sign:Ljava/lang/String;

    .line 410
    return-object v1
.end method

.method private doFailedCallback(ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/pyw/plugin/huawei/HWChannel$4;-><init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method private doPayCallback(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    if-eqz v0, :cond_0

    .line 415
    if-eqz p1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-interface {v0, p3}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private doSuccessCallback(Ljava/lang/Object;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/pyw/plugin/huawei/HWChannel$3;-><init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private getParam(Lcom/huawei/hms/support/api/entity/game/GameUserData;)Ljava/lang/String;
    .locals 4
    .param p1, "userData"    # Lcom/huawei/hms/support/api/entity/game/GameUserData;

    .prologue
    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v1, "j":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "app_id"

    const-string v3, "100236163"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "displayName"

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "isAuth"

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getIsAuth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "playerSSign"

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getGameAuthSign()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "ts"

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getTs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "playerLevel"

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getPlayerLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 425
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 427
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "gamekey"

    sget-object v3, Lcom/pyw/b/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string v2, "game_version_code"

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/a;->c(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v2, "channel_uid"

    sget-object v3, Lcom/pyw/plugin/huawei/GlobalParam;->PLAYID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 436
    :goto_0
    return-object v2

    .line 432
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 436
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string v0, "channel"

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const-string v0, "huawei"

    return-object v0
.end method

.method public getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 183
    new-instance v0, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;-><init>()V

    .line 184
    .local v0, "info":Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;
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
    iput-object v1, v0, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;->area:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;->rank:Ljava/lang/String;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    iput-object v1, v0, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;->role:Ljava/lang/String;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAreaName"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_3
    iput-object v1, v0, Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;->sociaty:Ljava/lang/String;

    .line 192
    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$5;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/huawei/HWChannel$5;-><init>(Lcom/pyw/plugin/huawei/HWChannel;)V

    invoke-static {v0, v1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->savePlayerInfo(Lcom/huawei/hms/support/api/entity/game/GamePlayerInfo;Lcom/huawei/android/hms/agent/game/handler/SaveInfoHandler;)V

    .line 200
    return-void

    .line 185
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

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 189
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 191
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAreaName"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public getVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public hideFloatView(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 292
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->hideFloatWindow(Landroid/app/Activity;)V

    .line 295
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 52
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel;->activity:Landroid/app/Activity;

    .line 53
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$1;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/huawei/HWChannel$1;-><init>(Lcom/pyw/plugin/huawei/HWChannel;)V

    invoke-static {v0, v1}, Lcom/huawei/android/hms/agent/HMSAgent;->connect(Landroid/app/Activity;Lcom/huawei/android/hms/agent/common/handler/ConnectHandler;)V

    .line 60
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p3}, Lcom/pyw/plugin/huawei/HWChannel;->checkUpdate(Landroid/app/Activity;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    .line 62
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
    .line 67
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p3, p0, Lcom/pyw/plugin/huawei/HWChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 68
    const-string v0, "px"

    const-string v1, "channel--login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/pyw/plugin/huawei/HWChannel$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/pyw/plugin/huawei/HWChannel$2;-><init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;Landroid/content/Context;)V

    .line 132
    const/4 v1, 0x1

    .line 69
    invoke-static {v0, v1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->login(Lcom/huawei/android/hms/agent/game/handler/LoginHandler;I)V

    .line 133
    return-void
.end method

.method public logout(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 203
    iput-object p3, p0, Lcom/pyw/plugin/huawei/HWChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 204
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    new-instance v0, Lcom/pyw/plugin/huawei/HWChannel$6;

    invoke-direct {v0, p0}, Lcom/pyw/plugin/huawei/HWChannel$6;-><init>(Lcom/pyw/plugin/huawei/HWChannel;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 279
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 274
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-static {}, Lcom/huawei/android/hms/agent/HMSAgent;->destroy()V

    .line 249
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 235
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->hideFloatWindow(Landroid/app/Activity;)V

    .line 237
    :cond_0
    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 242
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->showFloatWindow(Landroid/app/Activity;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 306
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 307
    const-string v1, "nameValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 308
    .local v8, "param":Ljava/util/HashMap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "order_price"

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "price":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_prod_id"

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "productName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_order_info"

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "productDesc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel_order_sn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "requestId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pyw/plugin/huawei/HWChannel;->orderID:Ljava/lang/String;

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "s":Ljava/lang/String;
    const-string v5, ""

    .line 319
    .local v5, "code":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 321
    const/16 v13, 0x4000

    .line 320
    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 321
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 327
    :goto_0
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/pyw/plugin/huawei/HWChannel;->createPayReq(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/pay/PayReq;

    move-result-object v11

    .line 330
    .local v11, "req":Lcom/huawei/hms/support/api/entity/pay/PayReq;
    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$7;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/huawei/HWChannel$7;-><init>(Lcom/pyw/plugin/huawei/HWChannel;)V

    invoke-static {v11, v1}, Lcom/huawei/android/hms/agent/HMSAgent$Pay;->pay(Lcom/huawei/hms/support/api/entity/pay/PayReq;Lcom/huawei/android/hms/agent/pay/handler/PayHandler;)V

    .line 365
    return-void

    .line 323
    .end local v11    # "req":Lcom/huawei/hms/support/api/entity/pay/PayReq;
    :catch_0
    move-exception v7

    .line 325
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 282
    iput-object p2, p0, Lcom/pyw/plugin/huawei/HWChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .line 283
    return-void
.end method

.method public showFloatView(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 299
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 300
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/huawei/android/hms/agent/HMSAgent$Game;->showFloatWindow(Landroid/app/Activity;)V

    .line 302
    :cond_0
    return-void
.end method
