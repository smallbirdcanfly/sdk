.class public Lcom/pyw/plugin/vivo/VIVOChannel;
.super Lcom/pyw/plugin/PYWPlugin;
.source "VIVOChannel.java"

# interfaces
.implements Lcom/vivo/unionsdk/open/VivoAccountCallback;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private cpid:Ljava/lang/String;

.field private gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private mOrderID:Ljava/lang/String;

.field private mVivoPayCallback:Lcom/vivo/unionsdk/open/VivoPayCallback;

.field private mVivoPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

.field private paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private playerInfocallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pyw/plugin/PYWPlugin;-><init>()V

    .line 50
    const-string v0, "bed71e3c85576f14efc39552da656e32"

    iput-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->appid:Ljava/lang/String;

    .line 51
    const-string v0, "ace7969fddf7db303ab7b2915e9388c3"

    iput-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->appkey:Ljava/lang/String;

    .line 52
    const-string v0, "a6124c46d4c3b0d515d9"

    iput-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->cpid:Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/pyw/plugin/vivo/VIVOChannel$1;

    invoke-direct {v0, p0}, Lcom/pyw/plugin/vivo/VIVOChannel$1;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel;)V

    iput-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mVivoPayCallback:Lcom/vivo/unionsdk/open/VivoPayCallback;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mOrderID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pyw/plugin/vivo/VIVOChannel;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pyw/plugin/vivo/VIVOChannel;Lcom/vivo/unionsdk/open/VivoPayInfo;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mVivoPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    return-void
.end method

.method static synthetic access$7(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/vivo/unionsdk/open/VivoPayInfo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mVivoPayInfo:Lcom/vivo/unionsdk/open/VivoPayInfo;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/vivo/unionsdk/open/VivoPayCallback;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mVivoPayCallback:Lcom/vivo/unionsdk/open/VivoPayCallback;

    return-object v0
.end method

.method private pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "cpOrderid"    # Ljava/lang/String;
    .param p4, "extrol"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "notifyUrl"

    .line 246
    const-string v2, "http://unitysdkapi.pyw.cn/ChannelPayCallback/paySuccess/51/4f26140988acdd35e3fc4b120b4780bc"

    .line 245
    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "orderAmount"

    invoke-virtual {v6, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "orderDesc"

    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "orderTitle"

    invoke-virtual {v6, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v7, "format":Ljava/text/SimpleDateFormat;
    const-string v1, "orderTime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "cpId"

    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->cpid:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "appId"

    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->appid:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "cpOrderNumber"

    invoke-virtual {v6, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "extInfo"

    invoke-virtual {v6, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->appkey:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/pyw/plugin/vivo/VivoSignUtils;->getVivoSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "str":Ljava/lang/String;
    const-string v1, "signature"

    invoke-virtual {v6, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "signMethod"

    const-string v2, "MD5"

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v8

    .line 262
    .local v8, "mQueue":Lcom/android/volley/RequestQueue;
    invoke-static {}, Lcom/pyw/plugin/vivo/HTTPSTrustManager;->allowAllSSL()V

    .line 263
    new-instance v0, Lcom/pyw/plugin/vivo/VIVOChannel$5;

    const/4 v2, 0x1

    const-string v3, "https://pay.vivo.com.cn/vcoin/trade"

    .line 264
    new-instance v4, Lcom/pyw/plugin/vivo/VIVOChannel$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/pyw/plugin/vivo/VIVOChannel$3;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v5, Lcom/pyw/plugin/vivo/VIVOChannel$4;

    invoke-direct {v5, p0}, Lcom/pyw/plugin/vivo/VIVOChannel$4;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel;)V

    move-object v1, p0

    .line 263
    invoke-direct/range {v0 .. v6}, Lcom/pyw/plugin/vivo/VIVOChannel$5;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 296
    .local v0, "jsonObjectRequest":Lcom/android/volley/toolbox/StringRequest;
    invoke-virtual {v8, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 297
    invoke-virtual {v8}, Lcom/android/volley/RequestQueue;->start()V

    .line 298
    return-void
.end method


# virtual methods
.method public gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 142
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 143
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 145
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    new-instance v0, Lcom/pyw/plugin/vivo/VIVOChannel$2;

    invoke-direct {v0, p0}, Lcom/pyw/plugin/vivo/VIVOChannel$2;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel;)V

    invoke-static {p1, v0}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->exit(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoExitCallback;)V

    .line 158
    return-void
.end method

.method public getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const-string v0, "channel"

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v0, "vivo"

    return-object v0
.end method

.method public getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverArea"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->sid:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/vivo/unionsdk/open/VivoRoleInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleid"

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

    .line 71
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleLevel"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    .line 72
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roleName"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    :goto_3
    iget-object v4, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->sid:Ljava/lang/String;

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverAreaName"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ""

    .line 70
    :goto_4
    invoke-direct/range {v0 .. v5}, Lcom/vivo/unionsdk/open/VivoRoleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->reportRoleInfo(Lcom/vivo/unionsdk/open/VivoRoleInfo;)V

    .line 74
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverArea"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleid"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 71
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleLevel"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 72
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roleName"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 73
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverAreaName"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public getVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public hideFloatView(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 164
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 62
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 64
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, p0}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->registerAccountCallback(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoAccountCallback;)V

    .line 65
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
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
    .line 84
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 85
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 86
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->login(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method public logout(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 137
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 138
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 214
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 206
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    return-void
.end method

.method public onVivoAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->uid:Ljava/lang/String;

    .line 220
    move-object v0, p3

    .line 221
    .local v0, "token":Ljava/lang/String;
    new-instance v1, Lcom/pyw/entity/UserParams;

    invoke-direct {v1}, Lcom/pyw/entity/UserParams;-><init>()V

    .line 222
    .local v1, "userParams":Lcom/pyw/entity/UserParams;
    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pyw/entity/UserParams;->setSdkUserID(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v0}, Lcom/pyw/entity/UserParams;->setToken(Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pyw/entity/UserParams;->setSuc(Z)V

    .line 225
    if-eqz v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-interface {v2, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onVivoAccountLoginCancel()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 233
    return-void
.end method

.method public onVivoAccountLogout(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 239
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 101
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 103
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 104
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "productName"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "productName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orderID"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mOrderID:Ljava/lang/String;

    .line 108
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    const-string v7, "nameValuePairs"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 111
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "rate"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 112
    .local v6, "rate":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v7, "price"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "price":Ljava/lang/String;
    iget-object v7, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->mOrderID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    :cond_0
    const-string v7, "pay params error!!!"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_1
    const-string v2, ""

    .line 118
    .local v2, "extrol":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v3, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "gamekey"

    sget-object v8, Lcom/pyw/b/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v7, "game_version_code"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/pengyouwan/sdk/utils/a;->c(Landroid/content/Context;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channel_order_sn"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v4, v7, v2}, Lcom/pyw/plugin/vivo/VIVOChannel;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .line 134
    return-void
.end method

.method public setExitGame(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 78
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 79
    return-void
.end method

.method public setLoginCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 98
    return-void
.end method

.method public showFloatView(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 161
    return-void
.end method

.method public switchLogin(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 90
    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->logincall:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 91
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel;->context:Landroid/content/Context;

    .line 93
    return-void
.end method
