.class public Lcom/pengyouwan/sdk/activity/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->c()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/LauncherActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/framework/b/d;->a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v3, ".pyw.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bf7\u786e\u4fdd\u4e3b\u754c\u9762\u914d\u7f6e\u6b63\u786e"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pengyouwan/sdk/activity/LauncherActivity$1;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/LauncherActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v0, "countThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "pyw_activity_launcher_landscape"

    .line 32
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->setContentView(I)V

    .line 38
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->a()V

    .line 39
    return-void

    .line 36
    :cond_0
    const-string v0, "pyw_activity_launcher_portrait"

    .line 35
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->setContentView(I)V

    goto :goto_0
.end method
