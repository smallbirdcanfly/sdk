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
    .line 22
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    invoke-static {p0, p1}, Lcom/pyw/b/b;->a(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 30
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    invoke-static {p0}, Lcom/pyw/b/b;->a(Landroid/app/Application;)V

    .line 15
    invoke-static {p0}, Lcom/huawei/android/hms/agent/HMSAgent;->init(Landroid/app/Application;)Z

    .line 16
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
