.class public Lcom/pyw/plugin/oppo/OPPOSplashActivity;
.super Landroid/app/Activity;
.source "OPPOSplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->requestWindowFeature(I)Z

    .line 18
    invoke-virtual {p0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 21
    invoke-virtual {p0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "jjy_splash_landscape"

    .line 22
    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->setContentView(I)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;-><init>(Lcom/pyw/plugin/oppo/OPPOSplashActivity;)V

    .line 33
    const-wide/16 v2, 0xbb8

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
