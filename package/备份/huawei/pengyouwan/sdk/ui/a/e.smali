.class public Lcom/pengyouwan/sdk/ui/a/e;
.super Lcom/pengyouwan/framework/base/b;
.source "DownloadProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/e$a;,
        Lcom/pengyouwan/sdk/ui/a/e$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/Button;

.field private final g:I

.field private final h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->g:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->h:I

    .line 210
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/e$b;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/e$b;-><init>(Lcom/pengyouwan/sdk/ui/a/e;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->i:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/e;->setCancelable(Z)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/pengyouwan/sdk/ui/a/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->d:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u51fa\u9519\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->f:Landroid/widget/Button;

    const-string v1, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v5, "pyw_dialog_download"

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/a/e;->setContentView(I)V

    .line 66
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/a/e;->a(I)V

    .line 68
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 69
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    .local v3, "parentWidth":I
    mul-int/lit8 v5, v3, 0x8

    div-int/lit8 v4, v5, 0xa

    .line 73
    .local v4, "width":I
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    const-string v5, "pyw_pb_progress"

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->e:Landroid/widget/ProgressBar;

    .line 78
    const-string v5, "pyw_tv_progress"

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->d:Landroid/widget/TextView;

    .line 79
    const-string v5, "pyw_btn_dialog_switch"

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/a/e;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->f:Landroid/widget/Button;

    .line 81
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->f:Landroid/widget/Button;

    new-instance v6, Lcom/pengyouwan/sdk/ui/a/e$1;

    invoke-direct {v6, p0}, Lcom/pengyouwan/sdk/ui/a/e$1;-><init>(Lcom/pengyouwan/sdk/ui/a/e;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/e;->a:Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v5, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef"

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pengyouwan/sdk/d/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->b:Ljava/lang/String;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pengyouwan/sdk/d/a;->e:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/e;->c:Ljava/lang/String;

    .line 99
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/pengyouwan/sdk/ui/a/e$2;

    invoke-direct {v6, p0}, Lcom/pengyouwan/sdk/ui/a/e$2;-><init>(Lcom/pengyouwan/sdk/ui/a/e;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const-string v1, "\u4e0b\u8f7d\u6e38\u620f\u51fa\u9519"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/e;->a()V

    goto :goto_0

    .line 235
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 236
    .local v0, "progress":I
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/e;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 237
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/e;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u4e0b\u8f7d:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/e;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/a/e;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/pengyouwan/sdk/ui/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tempName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v2, Lcom/pengyouwan/sdk/e/b;

    invoke-direct {v2, p1}, Lcom/pengyouwan/sdk/e/b;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "pkg":Lcom/pengyouwan/sdk/e/b;
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/e$a;

    invoke-direct {v1, p0, p2}, Lcom/pengyouwan/sdk/ui/a/e$a;-><init>(Lcom/pengyouwan/sdk/ui/a/e;Ljava/lang/String;)V

    .line 122
    .local v1, "iListener":Lcom/pengyouwan/sdk/ui/a/e$a;
    :try_start_0
    invoke-static {v2, v1}, Lcom/pengyouwan/sdk/utils/e;->a(Lcom/pengyouwan/sdk/e/f;Lcom/pengyouwan/sdk/utils/e$a;)V

    .line 123
    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/e$a;->a(Lcom/pengyouwan/sdk/ui/a/e$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-static {p2}, Lcom/pengyouwan/sdk/utils/f;->c(Ljava/lang/String;)Z

    .line 127
    :cond_0
    invoke-static {p2, p3}, Lcom/pengyouwan/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u51c6\u5907\u5b89\u88c5"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p3}, Lcom/pengyouwan/sdk/ui/a/e;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/e;->i:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/e$a;->a()V

    .line 134
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 149
    :cond_0
    const/4 v2, 0x0

    .line 156
    :goto_0
    return v2

    .line 152
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 153
    const-string v3, "application/vnd.android.package-archive"

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-static {}, Lcom/pengyouwan/sdk/utils/k;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const-string v1, "SD\u5361\u672a\u6302\u8f7d"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 257
    :goto_0
    return v0

    .line 253
    :cond_0
    const-wide/32 v1, 0x500000

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/k;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    const-string v1, "SD\u5361\u7a7a\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u8f7d\u66f4\u591a\u5185\u5bb9"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/e;)Z
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/e;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 267
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 268
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/pengyouwan/framework/base/b;->show()V

    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    return-void
.end method
