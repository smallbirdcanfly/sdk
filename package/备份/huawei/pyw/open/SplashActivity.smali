.class public Lcom/pyw/open/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field public hasPywSplash:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pyw/open/SplashActivity;->hasPywSplash:Z

    .line 12
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/open/SplashActivity;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/pyw/open/SplashActivity;->goMainAcitivity()V

    return-void
.end method

.method private countDown()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pyw/open/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/pyw/open/SplashActivity$1;-><init>(Lcom/pyw/open/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .local v0, "countThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method private goMainAcitivity()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/framework/b/d;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v3, ".pyw.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/pyw/open/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u786e\u4fdd\u95ea\u5c4f\u754c\u9762\u914d\u7f6e\u6b63\u786e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pyw/open/SplashActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "layoutID":I
    :try_start_0
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "pyw_splash_landscape"

    .line 28
    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 33
    :goto_0
    invoke-virtual {p0, v1}, Lcom/pyw/open/SplashActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/pyw/open/SplashActivity;->countDown()V

    .line 39
    :goto_1
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "pyw_splash_portrait"

    .line 31
    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/pyw/open/SplashActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u786e\u4fdd\u95ea\u5c4f\u754c\u9762\u8d44\u6e90\u9f50\u5168"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 37
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public setHasPywSplash(Z)V
    .locals 0
    .param p1, "hasPywSplash"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pyw/open/SplashActivity;->hasPywSplash:Z

    .line 43
    return-void
.end method
