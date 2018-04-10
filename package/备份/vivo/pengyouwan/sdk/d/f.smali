.class public Lcom/pengyouwan/sdk/d/f;
.super Ljava/lang/Object;
.source "SDKControler.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/pengyouwan/sdk/open/OnSDKEventListener;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I

.field private static e:Lcom/pengyouwan/sdk/open/SDKConfig;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Lcom/pengyouwan/sdk/ui/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pengyouwan/sdk/d/f;->f:Z

    .line 63
    const-string v0, "1"

    sput-object v0, Lcom/pengyouwan/sdk/d/f;->h:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/pengyouwan/sdk/d/f;->k:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "orderId"    # Ljava/lang/String;

    .prologue
    .line 411
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 413
    .local v1, "jobj":Lorg/json/JSONObject;
    const-string v2, "product_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    .end local v1    # "jobj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 417
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v1    # "jobj":Lorg/json/JSONObject;
    const-string v2, "product_id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 422
    .end local v1    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "\u65e0\u6cd5\u8f6c\u6362\u6210JSONObject\u6216\u8005\u53c2\u6570\u7c7b\u578b\u6709\u8bef"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 424
    const-string v2, ""

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    sget v0, Lcom/pengyouwan/sdk/d/f;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pengyouwan/sdk/d/f;->d:I

    .line 167
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleLevel"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverArea"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverAreaName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 304
    if-eqz v2, :cond_0

    .line 305
    const-string v2, "\u89d2\u8272\u4fe1\u606f\u4e3a\u7a7a\u3002"

    invoke-static {v2}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 310
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->f(Landroid/app/Activity;)V

    .line 311
    new-instance v1, Lcom/pengyouwan/sdk/d/f$2;

    invoke-direct {v1}, Lcom/pengyouwan/sdk/d/f$2;-><init>()V

    .line 333
    .local v1, "task":Lcom/pengyouwan/sdk/g/i;
    invoke-virtual {v1, p1}, Lcom/pengyouwan/sdk/g/i;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/i;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 336
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->t()V

    .line 337
    const/16 v2, 0x9

    .line 338
    const/4 v3, 0x0

    .line 337
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "isAnyAmount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    if-nez v3, :cond_1

    .line 264
    const-string v3, "pyw_login_tip"

    .line 263
    invoke-static {p0, v3}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x2

    .line 268
    .local v1, "isAny":I
    :goto_1
    invoke-static {p1, p2}, Lcom/pengyouwan/sdk/d/f;->a(Ljava/util/Map;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    :try_start_0
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->f(Landroid/app/Activity;)V

    .line 271
    new-instance v2, Lcom/pengyouwan/sdk/d/f$1;

    invoke-direct {v2, p1, p0, v1}, Lcom/pengyouwan/sdk/d/f$1;-><init>(Ljava/util/Map;Landroid/app/Activity;I)V

    .line 281
    .local v2, "task":Lcom/pengyouwan/sdk/g/w;
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/g/w;->a()V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v2    # "task":Lcom/pengyouwan/sdk/g/w;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 284
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->t()V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    .end local v1    # "isAny":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/pengyouwan/sdk/open/SDKConfig;Lcom/pengyouwan/sdk/open/OnSDKEventListener;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkconfig"    # Lcom/pengyouwan/sdk/open/SDKConfig;
    .param p2, "listener"    # Lcom/pengyouwan/sdk/open/OnSDKEventListener;
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const-string v1, "context can not be null"

    invoke-static {v1}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 80
    const-string v1, "sdkconfig can not be null"

    invoke-static {v1}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    sput-object p0, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    .line 90
    sput-object p1, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    .line 91
    sput-object p2, Lcom/pengyouwan/sdk/d/f;->b:Lcom/pengyouwan/sdk/open/OnSDKEventListener;

    .line 92
    sput-object p4, Lcom/pengyouwan/sdk/d/f;->g:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->p()Z

    move-result v1

    sput-boolean v1, Lcom/pengyouwan/sdk/d/f;->f:Z

    .line 97
    :try_start_0
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/e/g;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->s()V

    .line 101
    invoke-static {}, Lcom/pengyouwan/sdk/d/a;->a()V

    .line 103
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->n()V

    .line 105
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    sput-object p0, Lcom/pengyouwan/sdk/d/f;->k:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private static a(Ljava/util/Map;Z)Z
    .locals 7
    .param p1, "isAnyAmount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    const-string v3, ""

    .line 349
    .local v3, "productId":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 350
    const-string v4, "product_id"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    const-string v4, "\u4ea7\u54c1id\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 395
    :goto_0
    return v4

    .line 355
    :cond_0
    const-string v4, "product_id"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 354
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 358
    :cond_1
    const-string v4, "order_id"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 359
    const-string v4, "\u8ba2\u5355id\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    const-string v4, "order_id"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "orderId":Ljava/lang/String;
    const-string v4, "pay_money"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    const-string v4, "\u5546\u54c1\u4ef7\u683c\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 366
    goto :goto_0

    .line 368
    :cond_3
    const-string v4, "pay_money"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    .line 369
    const-string v4, "\u8bf7\u786e\u4fdd\u4ef7\u683c\u4e3a\u6b63\u6574\u578b"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 370
    goto :goto_0

    .line 372
    :cond_4
    const-string v4, "pay_money"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 373
    .local v1, "money":I
    if-ge v1, v6, :cond_5

    .line 374
    const-string v4, "\u4ef7\u683c\u6700\u4f4e\u4e3a1\u5143"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 375
    goto :goto_0

    .line 379
    :cond_5
    const-string v4, "product_name"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 380
    const-string v4, "\u5546\u54c1\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    move v4, v5

    .line 381
    goto :goto_0

    .line 383
    :cond_6
    const-string v4, "product_extra"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 384
    const-string v4, "product_extra"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-static {v4, v3, v2}, Lcom/pengyouwan/sdk/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "cpParams":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    .line 387
    goto/16 :goto_0

    .line 389
    :cond_7
    invoke-static {v0}, Lcom/pengyouwan/sdk/d/f;->b(Ljava/lang/String;)V

    move v4, v6

    .line 390
    goto/16 :goto_0

    .line 393
    .end local v0    # "cpParams":Ljava/lang/String;
    :cond_8
    const-string v4, ""

    invoke-static {v4, v3, v2}, Lcom/pengyouwan/sdk/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .restart local v0    # "cpParams":Ljava/lang/String;
    invoke-static {v0}, Lcom/pengyouwan/sdk/d/f;->b(Ljava/lang/String;)V

    move v4, v6

    .line 395
    goto/16 :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    sget v0, Lcom/pengyouwan/sdk/d/f;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/pengyouwan/sdk/d/f;->d:I

    .line 172
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .param p0, "cpParams"    # Ljava/lang/String;

    .prologue
    .line 404
    sput-object p0, Lcom/pengyouwan/sdk/d/f;->j:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 241
    invoke-static {}, Lcom/pengyouwan/sdk/d/c;->a()Lcom/pengyouwan/sdk/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/d/c;->a(Landroid/app/Activity;)V

    .line 242
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0
    .param p0, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 440
    sput-object p0, Lcom/pengyouwan/sdk/d/f;->i:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 250
    const-string v1, "pyw_login_tip"

    .line 249
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/pengyouwan/sdk/d/f;->f:Z

    return v0
.end method

.method public static e()Lcom/pengyouwan/sdk/open/OnSDKEventListener;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->b:Lcom/pengyouwan/sdk/open/OnSDKEventListener;

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 432
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/f;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/f;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/f;->show()V

    .line 433
    return-void
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/pengyouwan/sdk/d/f;->d:I

    return v0
.end method

.method private static f(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 469
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    .line 472
    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 473
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 180
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->q()V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->r()V

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/open/SDKConfig;->getGameKey()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Lcom/pengyouwan/sdk/open/SDKConfig;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()V
    .locals 0

    .prologue
    .line 478
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->t()V

    return-void
.end method

.method private static n()V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    .line 115
    const-string v2, "pyw_sdk_type"

    .line 114
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/d/f;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private static o()V
    .locals 3

    .prologue
    .line 122
    sget-object v2, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/pengyouwan/sdk/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    new-instance v1, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v1}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 125
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v1, v0}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pengyouwan/sdk/b/d;->b(Lcom/pengyouwan/sdk/entity/c;)J

    .line 127
    sget-object v2, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/pengyouwan/sdk/f/a;->c(Landroid/content/Context;)V

    .line 129
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    return-void
.end method

.method private static p()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/open/SDKConfig;->getGameKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 142
    const-string v0, "appkey\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static q()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 189
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    return-void

    .line 189
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 190
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private static r()V
    .locals 3

    .prologue
    .line 198
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 204
    return-void

    .line 198
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 199
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private static s()V
    .locals 3

    .prologue
    .line 447
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "promoAndchannel":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 450
    new-instance v1, Lcom/pengyouwan/sdk/d/e;

    sget-object v2, Lcom/pengyouwan/sdk/d/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pengyouwan/sdk/d/e;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/e;->a()[Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    if-eqz v0, :cond_2

    .line 454
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 456
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/open/SDKConfig;->setChannel(Ljava/lang/String;)V

    .line 458
    :cond_1
    sget-object v1, Lcom/pengyouwan/sdk/d/f;->e:Lcom/pengyouwan/sdk/open/SDKConfig;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/open/SDKConfig;->setPromo(Ljava/lang/String;)V

    .line 461
    :cond_2
    return-void
.end method

.method private static t()V
    .locals 1

    .prologue
    .line 479
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    sget-object v0, Lcom/pengyouwan/sdk/d/f;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 482
    :cond_0
    return-void
.end method
