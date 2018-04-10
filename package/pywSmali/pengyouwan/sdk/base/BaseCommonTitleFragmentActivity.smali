.class public abstract Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.super Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;
.source "BaseCommonTitleFragmentActivity.java"


# instance fields
.field private n:Landroid/view/View;

.field private o:Landroid/view/View$OnClickListener;

.field protected p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity$1;-><init>(Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->o:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected c(I)V
    .locals 1
    .param p1, "strResId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->finish()V

    .line 100
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->onContentChanged()V

    .line 41
    const-string v0, "pyw_layout_common_title_bar_back"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->n:Landroid/view/View;

    .line 43
    const-string v0, "pyw_tv_common_title_bar_title"

    .line 42
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->n:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not find R.id.iv_common_title_bar_back."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->p:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not find R.id.tv_common_title_bar_title."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->a(Landroid/app/Activity;)V

    .line 35
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->onDestroy()V

    .line 105
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/f;->b(Landroid/app/Activity;)V

    .line 106
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->h()V

    .line 109
    :cond_0
    return-void
.end method
