.class public Lcom/pengyouwan/sdk/e/e;
.super Ljava/lang/Object;
.source "RequestNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/e/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/pengyouwan/sdk/e/e;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/pengyouwan/sdk/e/e$a;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/HashMap;
    .locals 8
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
    .line 51
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ver"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v5, "os"

    const-string v6, "ANDROID"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v5, "ios_ver"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v5, "device_phone_num"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v5, "imie"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v5, "imei"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v5, "networktype"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v5, "sdk_type"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/open/SDKConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/open/SDKConfig;->getPromo()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "promo":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/open/SDKConfig;->getDepartmentCode()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "dcode":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/open/SDKConfig;->getChannel_code()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "channel_code":Ljava/lang/String;
    const-string v5, "promo_channel"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "pyw"

    .end local v0    # "channel":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v5, "promo_code"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, ""

    .end local v4    # "promo":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v5, "channel_code"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v5, "department_code"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v5, "game_version_code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/a;->c(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v5, "game_version_name"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v3
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 6
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/pengyouwan/framework/volley/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pengyouwan/framework/volley/p$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/e;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 40
    new-instance v0, Lcom/pengyouwan/sdk/e/d;

    const/4 v1, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pengyouwan/sdk/e/d;-><init>(ILjava/lang/String;Ljava/util/HashMap;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 42
    .local v0, "req":Lcom/pengyouwan/sdk/e/d;
    invoke-static {}, Lcom/pengyouwan/sdk/e/g;->a()Lcom/pengyouwan/sdk/e/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pengyouwan/sdk/e/g;->a(Lcom/pengyouwan/framework/volley/n;)V

    .line 43
    return-void
.end method
