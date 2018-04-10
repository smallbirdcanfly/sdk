.class public Lcom/pyw/open/PYWPoxyApplication;
.super Landroid/app/Application;
.source "PYWPoxyApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
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
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 25
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 33
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/pyw/b/b;->a(Landroid/app/Application;)V

    .line 16
    const-string v0, "bed71e3c85576f14efc39552da656e32"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->initSdk(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 17
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
