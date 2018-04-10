.class public Lcom/pengyouwan/sdk/activity/MianzeActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "MianzeActivity.java"


# instance fields
.field private n:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    return-void
.end method

.method private g()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    const-string v1, "pyw_btn_back"

    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MianzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/pengyouwan/sdk/activity/MianzeActivity$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/activity/MianzeActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/MianzeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v1, "pyw_webview"

    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MianzeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity;->n:Landroid/webkit/WebView;

    .line 46
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity;->n:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 47
    .local v0, "mWebSettings":Landroid/webkit/WebSettings;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 48
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 51
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity;->n:Landroid/webkit/WebView;

    new-instance v2, Lcom/pengyouwan/sdk/activity/MianzeActivity$2;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/activity/MianzeActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/MianzeActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity;->n:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pengyouwan/sdk/e/i;->D:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "pyw_activity_mianze"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/MianzeActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MianzeActivity;->g()V

    .line 35
    return-void
.end method
