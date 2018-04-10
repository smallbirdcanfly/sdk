.class Lcom/pengyouwan/framework/v4/aq$f;
.super Lcom/pengyouwan/framework/v4/aq$e;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/aq$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 471
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/au;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 472
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 463
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/au;->a(Landroid/view/View;)V

    .line 464
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .prologue
    .line 483
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/au;->a(Landroid/view/View;I)V

    .line 484
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 479
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/au;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method
