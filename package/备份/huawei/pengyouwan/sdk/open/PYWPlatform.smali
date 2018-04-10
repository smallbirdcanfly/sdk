.class public Lcom/pengyouwan/sdk/open/PYWPlatform;
.super Ljava/lang/Object;
.source "PYWPlatform.java"


# static fields
.field public static final VERSION_CODE:I = 0x8aa

.field public static final VERSION_NAME:Ljava/lang/String; = "2.2.18"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInit()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 132
    const-string v0, "context can not be null"

    invoke-static {v0}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static exit(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->e(Landroid/app/Activity;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static getCurrentUser()Lcom/pengyouwan/sdk/open/User;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRoleMessage(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 1
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
    .line 93
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1}, Lcom/pengyouwan/sdk/d/f;->a(Landroid/app/Activity;Ljava/util/Map;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static initSDK(Landroid/app/Application;Landroid/content/Context;Lcom/pengyouwan/sdk/open/SDKConfig;Lcom/pengyouwan/sdk/open/OnSDKEventListener;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/pengyouwan/sdk/open/SDKConfig;
    .param p3, "onSDKEventListener"    # Lcom/pengyouwan/sdk/open/OnSDKEventListener;

    .prologue
    .line 32
    const/16 v0, 0x8aa

    .line 33
    const-string v1, "2.2.18"

    .line 32
    invoke-static {p1, p2, p3, v0, v1}, Lcom/pengyouwan/sdk/d/f;->a(Landroid/content/Context;Lcom/pengyouwan/sdk/open/SDKConfig;Lcom/pengyouwan/sdk/open/OnSDKEventListener;ILjava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/g;->a(Landroid/app/Application;)Lcom/pengyouwan/sdk/utils/g;

    .line 35
    invoke-static {}, Lcom/pengyouwan/sdk/utils/g;->a()Lcom/pengyouwan/sdk/utils/g;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/pengyouwan/sdk/open/PYWPlatform$1;

    invoke-direct {v1}, Lcom/pengyouwan/sdk/open/PYWPlatform$1;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/utils/g;->a(Lcom/pengyouwan/sdk/utils/g$a;)V

    .line 49
    return-void
.end method

.method public static openChargeCenter(Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 1
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
    .line 80
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Lcom/pengyouwan/sdk/d/f;->a(Landroid/app/Activity;Ljava/util/Map;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public static openLogin(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->c(Landroid/app/Activity;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static openUsercenter(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->checkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->d(Landroid/app/Activity;)V

    .line 67
    :cond_0
    return-void
.end method
