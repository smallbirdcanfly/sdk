.class public Lcom/pyw/plugin/vivo/VVSplashActivity;
.super Landroid/app/Activity;
.source "VVSplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/vivo/VVSplashActivity;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->goMainAcitivity()V

    return-void
.end method

.method private countDown()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pyw/plugin/vivo/VVSplashActivity$1;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/vivo/VVSplashActivity$1;-><init>(Lcom/pyw/plugin/vivo/VVSplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .local v0, "countThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method private goMainAcitivity()V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/framework/b/d;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v3, ".pyw.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/pyw/plugin/vivo/VVSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u786e\u4fdd\u95ea\u5c4f\u754c\u9762\u914d\u7f6e\u6b63\u786e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pyw/plugin/vivo/VVSplashActivity;->requestWindowFeature(I)Z

    .line 19
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "layoutID":I
    :try_start_0
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "jjy_splash_landscape"

    .line 25
    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 30
    :goto_0
    invoke-virtual {p0, v1}, Lcom/pyw/plugin/vivo/VVSplashActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->countDown()V

    .line 37
    :goto_1
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "jjy_splash_portrait"

    .line 28
    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    invoke-virtual {p0}, Lcom/pyw/plugin/vivo/VVSplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u786e\u4fdd\u4e3b\u754c\u9762\u914d\u7f6e\u6b63\u786e"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
