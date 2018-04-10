.class Lcom/pengyouwan/framework/v4/aq$e;
.super Lcom/pengyouwan/framework/v4/aq$d;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/aq$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/pengyouwan/framework/v4/a;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delegate"    # Lcom/pengyouwan/framework/v4/a;

    .prologue
    .line 448
    invoke-virtual {p2}, Lcom/pengyouwan/framework/v4/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/at;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 428
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/at;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
