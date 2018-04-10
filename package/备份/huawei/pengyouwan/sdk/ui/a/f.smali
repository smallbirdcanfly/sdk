.class public Lcom/pengyouwan/sdk/ui/a/f;
.super Lcom/pengyouwan/framework/base/b;
.source "ExitDialog.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    .line 50
    const-string v0, "PYWTheme_Widget_Dialog"

    .line 49
    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 117
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/f$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/f$1;-><init>(Lcom/pengyouwan/sdk/ui/a/f;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->e:Landroid/view/View$OnClickListener;

    .line 51
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/f;->a()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const-string v1, "pyw_dialog_exit"

    .line 55
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/f;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    const-string v1, "pyw_btn_exit_cancel"

    .line 57
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->a:Landroid/widget/Button;

    .line 59
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    const-string v1, "pyw_btn_exit_ensure"

    .line 59
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->b:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    const-string v1, "pyw_wv_ad"

    .line 61
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    .line 63
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    const-string v1, "pyw_iv_click_web"

    .line 63
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/f;->b()V

    .line 69
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 76
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 78
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/b;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    const-string v2, "\u662f\u5426\u786e\u8ba4\u9000\u51fa\u6e38\u620f\uff1f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 85
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/pengyouwan/sdk/ui/a/f$2;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/a/f$2;-><init>(Lcom/pengyouwan/sdk/ui/a/f;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->c:Landroid/webkit/WebView;

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 106
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 139
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->h()V

    .line 140
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/f;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/f;->c()V

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/f;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pengyouwan/sdk/ui/a/f$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/f$3;-><init>(Lcom/pengyouwan/sdk/ui/a/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/pengyouwan/framework/base/b;->show()V

    .line 114
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/f;->d()V

    .line 115
    return-void
.end method
