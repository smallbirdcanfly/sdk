.class public Lcom/pengyouwan/sdk/ui/a/d;
.super Lcom/pengyouwan/framework/base/b;
.source "CustomProgressDialog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messageText"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/d;->setCancelable(Z)V

    .line 30
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/d;->a:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/d;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_dialog_custom_progress"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/d;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_progress_loading_bar"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/d;->c:Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;

    .line 40
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_loading_tips"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/d;->b:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/d;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/pengyouwan/framework/base/b;->show()V

    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/d;->c:Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;->setVisibility(I)V

    .line 55
    return-void
.end method
