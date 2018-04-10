.class Lcom/pengyouwan/framework/v4/u$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/u;

.field private final synthetic b:Lcom/pengyouwan/framework/v4/Fragment;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/u;Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/u$2;->a:Lcom/pengyouwan/framework/v4/u;

    iput-object p2, p0, Lcom/pengyouwan/framework/v4/u$2;->b:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 1019
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u$2;->b:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u$2;->b:Lcom/pengyouwan/framework/v4/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    .line 1021
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u$2;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u$2;->b:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u$2;->b:Lcom/pengyouwan/framework/v4/Fragment;

    iget v2, v2, Lcom/pengyouwan/framework/v4/Fragment;->f:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1024
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1027
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1030
    return-void
.end method
