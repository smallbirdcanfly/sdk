.class public Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;
.super Landroid/widget/ImageView;
.source "LoadingAnimView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_loading"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 33
    .local v0, "loadingAnim":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    .end local v0    # "loadingAnim":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/LoadingAnimView;->clearAnimation()V

    goto :goto_0
.end method
