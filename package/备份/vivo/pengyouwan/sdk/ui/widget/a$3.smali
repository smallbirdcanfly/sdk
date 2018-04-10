.class Lcom/pengyouwan/sdk/ui/widget/a$3;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/widget/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/widget/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a$3;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$3;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/a;->b(Lcom/pengyouwan/sdk/ui/widget/a;Z)V

    .line 459
    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a$3;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/a;->l(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/app/Activity;

    move-result-object v1

    .line 460
    const-string v2, "pyw_img_float_transparent"

    .line 459
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 462
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 454
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 449
    return-void
.end method
