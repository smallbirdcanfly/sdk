.class public Lcom/pyw/open/PYWPoxyApplication;
.super Landroid/app/Application;
.source "PYWPoxyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 24
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 30
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 31
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    invoke-static {p0}, Lcom/pyw/b/b;->a(Landroid/app/Application;)V

    .line 15
    const-string v0, "A7b649a54f881aB6Fbe93C40de85B0c9"

    .line 16
    .local v0, "appSecret":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/nearme/game/sdk/GameCenterSDK;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
