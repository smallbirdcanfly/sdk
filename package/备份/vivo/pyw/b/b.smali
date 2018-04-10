.class public Lcom/pyw/b/b;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/pyw/open/PYWUser;

.field public static c:Ljava/lang/String;

.field private static e:Landroid/content/Context;

.field private static f:Landroid/app/Application;

.field private static g:Lorg/json/JSONObject;

.field private static h:Lorg/json/JSONObject;

.field private static i:Lorg/json/JSONArray;

.field private static j:Landroid/os/Bundle;

.field private static k:Lcom/pyw/plugin/PYWPlugin;

.field private static l:Lcom/pyw/plugin/PYWPlugin;

.field private static m:Lcom/pyw/plugin/PYWPlugin;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pyw/open/IApplicationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Lcom/pyw/b/b;

.field private static t:Lcom/pyw/plugin/excutecallback/CallbackCreator;


# instance fields
.field public d:Z

.field private p:Lcom/pengyouwan/sdk/ui/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/pyw/b/b;->r:Ljava/util/List;

    .line 508
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pyw/b/b;->d:Z

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 229
    const/16 v3, 0x80

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 231
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v1

    .line 234
    :catch_0
    move-exception v1

    .line 237
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/pyw/b/b;
    .locals 3

    .prologue
    .line 101
    const-class v1, Lcom/pyw/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pyw/b/b;->s:Lcom/pyw/b/b;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pengyouwan/framework/b/a;->a(Z)V

    .line 103
    new-instance v0, Lcom/pyw/b/b;

    invoke-direct {v0}, Lcom/pyw/b/b;-><init>()V

    sput-object v0, Lcom/pyw/b/b;->s:Lcom/pyw/b/b;

    .line 104
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->load(Landroid/content/Context;)V

    .line 105
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->getPYWChannelPlugin(Landroid/content/Context;)Lcom/pyw/plugin/PYWPlugin;

    move-result-object v0

    sput-object v0, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    .line 106
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->getChannelPlugin(Landroid/content/Context;)Lcom/pyw/plugin/PYWPlugin;

    move-result-object v0

    sput-object v0, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    .line 107
    sget-object v0, Lcom/pyw/b/b;->h:Lorg/json/JSONObject;

    const-string v2, "game_key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pyw/b/b;->a:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-direct {v0}, Lcom/pyw/plugin/excutecallback/CallbackCreator;-><init>()V

    sput-object v0, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    .line 109
    sget-object v0, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    sput-object v0, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    .line 112
    :cond_0
    sget-object v0, Lcom/pyw/b/b;->s:Lcom/pyw/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/app/Application;Ljava/lang/String;)Lcom/pyw/open/IApplicationListener;
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "proxyAppName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 185
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 206
    :goto_0
    return-object v2

    .line 189
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "com.pyw"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pyw/open/IApplicationListener;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 197
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v2, v3

    .line 206
    goto :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcom/pyw/open/PayParams;)Ljava/util/HashMap;
    .locals 13
    .param p1, "params"    # Lcom/pyw/open/PayParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pyw/open/PayParams;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v11, Lcom/pyw/b/b;->h:Lorg/json/JSONObject;

    .line 465
    const-string v12, "channel_id"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "channelId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getChargeType()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, "chargeType":Ljava/lang/String;
    sget-object v11, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    const-string v12, "channel_uid"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 468
    .local v2, "channelUId":Ljava/lang/String;
    sget-object v11, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    const-string v12, "cp_uid"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 469
    .local v7, "cpUid":Ljava/lang/String;
    sget-object v11, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    const-string v12, "account"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 470
    .local v0, "account":Ljava/lang/String;
    sget-object v11, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    const-string v12, "gameid"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 471
    .local v8, "gameId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getProductId()Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, "cpProduceId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getPrice()I

    move-result v9

    .line 473
    .local v9, "orderPrice":I
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "cpOrderSN":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "cpOrderInfo":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 478
    .local v10, "pywGetOrderParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "gameid"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v11, "gamekey"

    sget-object v12, Lcom/pyw/b/b;->a:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v11, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v11, "channel_id"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v11, "channel_uid"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v11, "charge_type"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v11, "cp_uid"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v11, "cp_product_id"

    const-string v12, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v6, ""

    .end local v6    # "cpProduceId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v11, "order_price"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v11, "cp_order_sn"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v11, "cp_order_info"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v11, "account"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 492
    const-string v11, "rolename"

    .line 493
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getRoleName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 492
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_1
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 496
    const-string v11, "service"

    .line 497
    invoke-virtual {p1}, Lcom/pyw/open/PayParams;->getServerName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 496
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :cond_2
    return-object v10
.end method

.method public static a(Landroid/app/Application;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 117
    sget-object v1, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pyw/open/IApplicationListener;

    .line 118
    .local v0, "lis":Lcom/pyw/open/IApplicationListener;
    invoke-interface {v0}, Lcom/pyw/open/IApplicationListener;->onProxyCreate()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;Landroid/content/Context;)V
    .locals 13
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    sput-object p1, Lcom/pyw/b/b;->e:Landroid/content/Context;

    .line 126
    sput-object p0, Lcom/pyw/b/b;->f:Landroid/app/Application;

    .line 127
    sget-object v8, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 129
    const-string v8, "pywsdk.data"

    invoke-static {p1, v8}, Lcom/pyw/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "sdkData":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v8, Lcom/pyw/b/b;->g:Lorg/json/JSONObject;

    .line 133
    sget-object v8, Lcom/pyw/b/b;->g:Lorg/json/JSONObject;

    const-string v9, "info"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    sput-object v8, Lcom/pyw/b/b;->h:Lorg/json/JSONObject;

    .line 134
    sget-object v8, Lcom/pyw/b/b;->g:Lorg/json/JSONObject;

    const-string v9, "channels"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    sput-object v8, Lcom/pyw/b/b;->i:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-static {p1}, Lcom/pyw/b/b;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    sput-object v8, Lcom/pyw/b/b;->j:Landroid/os/Bundle;

    .line 141
    sget-object v8, Lcom/pyw/b/b;->j:Landroid/os/Bundle;

    const-string v9, "PYW_APPLICATION_PROXY_NAME"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    sget-object v8, Lcom/pyw/b/b;->j:Landroid/os/Bundle;

    const-string v9, "PYW_APPLICATION_PROXY_NAME"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "proxyAppNames":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "proxyApps":[Ljava/lang/String;
    array-length v9, v6

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_2

    .line 157
    .end local v5    # "proxyAppNames":Ljava/lang/String;
    .end local v6    # "proxyApps":[Ljava/lang/String;
    :cond_0
    sget-object v8, Lcom/pyw/b/b;->j:Landroid/os/Bundle;

    const-string v9, "PYW_Game_Application"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    sget-object v8, Lcom/pyw/b/b;->j:Landroid/os/Bundle;

    const-string v9, "PYW_Game_Application"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "gameAppName":Ljava/lang/String;
    sget-object v8, Lcom/pyw/b/b;->f:Landroid/app/Application;

    .line 159
    invoke-static {v8, v1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/pyw/open/IApplicationListener;

    move-result-object v3

    .line 161
    .local v3, "listener":Lcom/pyw/open/IApplicationListener;
    if-eqz v3, :cond_1

    .line 162
    const-string v8, "onAppAttachBaseContext"

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "add a game application listener:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-static {v8, v9}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v8, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v1    # "gameAppName":Ljava/lang/String;
    .end local v3    # "listener":Lcom/pyw/open/IApplicationListener;
    :cond_1
    sget-object v8, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 172
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v5    # "proxyAppNames":Ljava/lang/String;
    .restart local v6    # "proxyApps":[Ljava/lang/String;
    :cond_2
    aget-object v4, v6, v8

    .line 145
    .local v4, "proxy":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 146
    const-string v10, "onAppAttachBaseContext"

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "add a new application listener:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-static {v10, v11}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v10, Lcom/pyw/b/b;->f:Landroid/app/Application;

    .line 148
    invoke-static {v10, v4}, Lcom/pyw/b/b;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/pyw/open/IApplicationListener;

    move-result-object v3

    .line 150
    .restart local v3    # "listener":Lcom/pyw/open/IApplicationListener;
    if-eqz v3, :cond_3

    .line 151
    sget-object v10, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "listener":Lcom/pyw/open/IApplicationListener;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 169
    .end local v4    # "proxy":Ljava/lang/String;
    .end local v5    # "proxyAppNames":Ljava/lang/String;
    .end local v6    # "proxyApps":[Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pyw/open/IApplicationListener;

    .line 170
    .local v2, "lis":Lcom/pyw/open/IApplicationListener;
    invoke-interface {v2, p1}, Lcom/pyw/open/IApplicationListener;->onProxyAttachBaseContext(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static a(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 176
    sget-object v1, Lcom/pyw/b/b;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    return-void

    .line 176
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pyw/open/IApplicationListener;

    .line 177
    .local v0, "lis":Lcom/pyw/open/IApplicationListener;
    invoke-interface {v0, p1}, Lcom/pyw/open/IApplicationListener;->onProxyConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/pyw/b/b;->a(Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "callback"    # Lcom/pyw/open/IPayListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pyw/open/IPayListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "pay"

    .line 505
    sget-object v3, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v3, p1}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createPYWPayCallback(Lcom/pyw/open/IPayListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v3

    .line 504
    invoke-static {v0, v1, v2, p2, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method private a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "params"    # Lcom/pyw/open/PayParams;
    .param p2, "callback"    # Lcom/pyw/open/IPayListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pyw/open/PayParams;",
            "Lcom/pyw/open/IPayListener;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p3, "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;)Ljava/util/HashMap;

    move-result-object v0

    .line 373
    .local v0, "pywGetOrderParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v1

    .line 374
    sget-object v2, Lcom/pyw/a/a;->c:Ljava/lang/String;

    new-instance v3, Lcom/pyw/b/b$1;

    invoke-direct {v3, p0, p3, p2}, Lcom/pyw/b/b$1;-><init>(Lcom/pyw/b/b;Ljava/util/HashMap;Lcom/pyw/open/IPayListener;)V

    .line 444
    new-instance v4, Lcom/pyw/b/b$2;

    invoke-direct {v4, p0, p2}, Lcom/pyw/b/b$2;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)V

    .line 373
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 455
    .end local v0    # "pywGetOrderParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/pyw/b/b;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic b(Lcom/pyw/plugin/PYWPlugin;)V
    .locals 0

    .prologue
    .line 80
    sput-object p0, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    return-void
.end method

.method private b(Ljava/util/HashMap;Lcom/pyw/open/IUserListener;)V
    .locals 4
    .param p2, "callback"    # Lcom/pyw/open/IUserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/open/IUserListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "login"

    .line 319
    sget-object v3, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v3, p0, p2}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createPYWLoginCallback(Lcom/pyw/b/b;Lcom/pyw/open/IUserListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v3

    .line 318
    invoke-static {v0, v1, v2, p1, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method static synthetic t()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic u()Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v()Lcom/pyw/plugin/PYWPlugin;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    return-object v0
.end method

.method static synthetic w()Lcom/pyw/plugin/excutecallback/CallbackCreator;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    return-object v0
.end method

.method private static x()V
    .locals 9

    .prologue
    .line 242
    invoke-static {}, Lcom/pyw/b/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 244
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 245
    .local v3, "gamekey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 246
    .local v2, "dcode":Ljava/lang/String;
    const-string v5, "channel_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "channel_code":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "game_key"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "department_code"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    sget-object v5, Lcom/pyw/b/b;->e:Landroid/content/Context;

    const-string v6, "gamekey\u4e3a\u7a7a"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 256
    :cond_0
    new-instance v4, Lcom/pengyouwan/sdk/open/SDKConfig;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/open/SDKConfig;-><init>()V

    .line 257
    .local v4, "sdkconfig":Lcom/pengyouwan/sdk/open/SDKConfig;
    invoke-virtual {v4, v3}, Lcom/pengyouwan/sdk/open/SDKConfig;->setGameKey(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4, v2}, Lcom/pengyouwan/sdk/open/SDKConfig;->setDepartmentCode(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4, v0}, Lcom/pengyouwan/sdk/open/SDKConfig;->setChannel_code(Ljava/lang/String;)V

    .line 260
    sget-object v5, Lcom/pyw/b/b;->f:Landroid/app/Application;

    sget-object v6, Lcom/pyw/b/b;->e:Landroid/content/Context;

    .line 261
    new-instance v7, Lcom/pyw/b/c;

    sget-object v8, Lcom/pyw/b/b;->f:Landroid/app/Application;

    invoke-direct {v7, v8}, Lcom/pyw/b/c;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-static {v5, v6, v4, v7}, Lcom/pengyouwan/sdk/open/PYWPlatform;->initSDK(Landroid/app/Application;Landroid/content/Context;Lcom/pengyouwan/sdk/open/SDKConfig;Lcom/pengyouwan/sdk/open/OnSDKEventListener;)V

    .line 262
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 683
    invoke-static {p1, p2, p3}, Lcom/pyw/plugin/PYWPluginManager;->pluginsActivityResult(IILandroid/content/Intent;)V

    .line 684
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/pyw/open/IDefListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pyw/open/IDefListener;

    .prologue
    .line 273
    invoke-static {}, Lcom/pyw/b/b;->x()V

    .line 274
    sput-object p1, Lcom/pyw/b/b;->e:Landroid/content/Context;

    .line 275
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316\uff0c\u8bf7\u7a0d\u540e..."

    invoke-virtual {p0, v0, v1}, Lcom/pyw/b/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "init"

    const/4 v3, 0x0

    .line 278
    sget-object v4, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v4, p2, p0}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createInitCallback(Lcom/pyw/open/IDefListener;Lcom/pyw/b/b;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v4

    .line 277
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 690
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 691
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 692
    iget-object v1, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-direct {v1, v0, p2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 697
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 675
    invoke-static {p1}, Lcom/pyw/plugin/PYWPluginManager;->pluginsNewIntent(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 679
    invoke-static {p1}, Lcom/pyw/plugin/PYWPluginManager;->pluginsConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 680
    return-void
.end method

.method public a(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V
    .locals 7
    .param p1, "params"    # Lcom/pyw/entity/UserParams;
    .param p2, "listener"    # Lcom/pyw/open/IGetRoleListener;

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 553
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 555
    .local v1, "datas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p1}, Lcom/pyw/a/b;->a(Ljava/lang/Object;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 560
    :goto_1
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    const-string v3, "roleid"

    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_2
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 564
    const-string v3, "roleName"

    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_3
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerArea()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 567
    const-string v3, "serverArea"

    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerArea()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_4
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleLevel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 570
    const-string v3, "roleLevel"

    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getRoleLevel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_5
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerAreaName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 573
    const-string v3, "serverAreaName"

    .line 574
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getServerAreaName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    :cond_6
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 577
    const-string v3, "gamekey"

    sget-object v4, Lcom/pyw/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v3, "channel_id"

    sget-object v4, Lcom/pyw/b/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v3, "game_id"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v3, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    sget-object v4, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 581
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    .line 582
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 581
    if-eqz v3, :cond_7

    .line 583
    const-string v3, "account"

    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v4

    .line 584
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_2
    const-string v3, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v3

    sget-object v4, Lcom/pengyouwan/sdk/e/i;->C:Ljava/lang/String;

    .line 591
    new-instance v5, Lcom/pyw/b/b$3;

    invoke-direct {v5, p0, p2}, Lcom/pyw/b/b$3;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IGetRoleListener;)V

    .line 610
    new-instance v6, Lcom/pyw/b/b$4;

    invoke-direct {v6, p0, p2}, Lcom/pyw/b/b$4;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IGetRoleListener;)V

    .line 590
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 620
    sget-object v3, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v4, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    const-string v5, "getRoleMessage"

    .line 621
    new-instance v6, Lcom/pyw/b/b$5;

    invoke-direct {v6, p0}, Lcom/pyw/b/b$5;-><init>(Lcom/pyw/b/b;)V

    .line 620
    invoke-static {v3, v4, v5, v1, v6}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 556
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 587
    .end local v2    # "e1":Ljava/lang/Exception;
    :cond_7
    const-string v4, "account"

    sget-object v3, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    const-string v5, "account"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public a(Lcom/pyw/open/ILogoutCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/pyw/open/ILogoutCallback;

    .prologue
    .line 638
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "setCallback"

    .line 639
    new-instance v3, Lcom/pyw/b/b$6;

    invoke-direct {v3, p0, p1}, Lcom/pyw/b/b$6;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/ILogoutCallback;)V

    .line 638
    invoke-static {v0, v1, v2, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)Ljava/lang/Object;

    .line 648
    return-void
.end method

.method public a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;)V
    .locals 5
    .param p1, "params"    # Lcom/pyw/open/PayParams;
    .param p2, "callback"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 353
    :try_start_0
    invoke-static {p1}, Lcom/pyw/a/b;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    .line 354
    .local v1, "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    sget-object v3, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-direct {p0, p2, v1}, Lcom/pyw/b/b;->a(Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V

    .line 365
    .end local v1    # "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 359
    .restart local v1    # "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v1    # "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x15

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pay interface transform error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-interface {p2, v2, v3}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/pyw/plugin/PYWPlugin;)V
    .locals 0
    .param p1, "p"    # Lcom/pyw/plugin/PYWPlugin;

    .prologue
    .line 745
    sput-object p1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    .line 746
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 709
    sput-object p1, Lcom/pyw/b/b;->o:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "sPayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    .line 726
    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/pyw/open/IDefListener;)V
    .locals 4
    .param p1, "channelData"    # Ljava/util/HashMap;
    .param p2, "listener"    # Lcom/pyw/open/IDefListener;

    .prologue
    .line 758
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "init"

    .line 759
    new-instance v3, Lcom/pyw/b/b$7;

    invoke-direct {v3, p0, p2}, Lcom/pyw/b/b$7;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IDefListener;)V

    .line 758
    invoke-static {v0, v1, v2, p1, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 775
    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/pyw/open/IGameExitListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/pyw/open/IGameExitListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/open/IGameExitListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "gameExit"

    .line 533
    sget-object v3, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v3, p2}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createGameExitExcuteCallback(Lcom/pyw/open/IGameExitListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v3

    .line 532
    invoke-static {v0, v1, v2, p1, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 534
    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/pyw/open/ILogoutListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/pyw/open/ILogoutListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/open/ILogoutListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "logout"

    .line 520
    sget-object v3, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v3, p2}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createLogoutCallback(Lcom/pyw/open/ILogoutListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v3

    .line 519
    invoke-static {v0, v1, v2, p1, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/pyw/open/IUserListener;)V
    .locals 5
    .param p2, "callback"    # Lcom/pyw/open/IUserListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/open/IUserListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/pyw/b/b;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/pyw/b/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25,\u8bf7\u91cd\u542f\u6e38\u620f."

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/e;

    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 299
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->l()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-direct {v1, v0, v2}, Lcom/pengyouwan/sdk/ui/a/e;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/e;->show()V

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lcom/pyw/b/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pyw/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/pyw/b/b;->b(Ljava/util/HashMap;Lcom/pyw/open/IUserListener;)V

    goto :goto_0

    .line 307
    :cond_2
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "login"

    .line 308
    sget-object v3, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    .line 309
    sget-object v4, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    .line 308
    invoke-virtual {v3, p0, v4, p2}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createOtherLoginCallback(Lcom/pyw/b/b;Lcom/pyw/plugin/PYWPlugin;Lcom/pyw/open/IUserListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v3

    .line 307
    invoke-static {v0, v1, v2, p1, v3}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 737
    sput-object p1, Lcom/pyw/b/b;->n:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 326
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "showFloatView"

    .line 327
    const/4 v3, 0x0

    sget-object v4, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v4}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createSilenceCallback()Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v4

    .line 326
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 778
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string v0, "19"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 335
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    const-string v2, "hideFloatView"

    .line 336
    const/4 v3, 0x0

    sget-object v4, Lcom/pyw/b/b;->t:Lcom/pyw/plugin/excutecallback/CallbackCreator;

    invoke-virtual {v4}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createSilenceCallback()Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v4

    .line 335
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 651
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->pluginsPause(Landroid/content/Context;)V

    .line 652
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->pluginsResume(Landroid/content/Context;)V

    .line 656
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->destroyAll(Landroid/content/Context;)V

    .line 660
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->pluginsStop(Landroid/content/Context;)V

    .line 664
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->pluginsRestart(Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/pyw/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/pyw/plugin/PYWPluginManager;->pluginsStart(Landroid/content/Context;)V

    .line 672
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/pyw/b/b;->p:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 706
    :cond_0
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lcom/pyw/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 717
    sget-object v0, Lcom/pyw/b/b;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public n()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    sget-object v0, Lcom/pyw/b/b;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method public o()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 729
    sget-object v0, Lcom/pyw/b/b;->i:Lorg/json/JSONArray;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lcom/pyw/b/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/pyw/plugin/PYWPlugin;
    .locals 1

    .prologue
    .line 741
    sget-object v0, Lcom/pyw/b/b;->l:Lcom/pyw/plugin/PYWPlugin;

    return-object v0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/pyw/b/b;->k:Lcom/pyw/plugin/PYWPlugin;

    sput-object v0, Lcom/pyw/b/b;->m:Lcom/pyw/plugin/PYWPlugin;

    .line 750
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/pyw/b/b;->o:Ljava/lang/String;

    return-object v0
.end method
