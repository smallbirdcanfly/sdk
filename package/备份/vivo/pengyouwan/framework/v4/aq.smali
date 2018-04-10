.class public Lcom/pengyouwan/framework/v4/aq;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/aq$a;,
        Lcom/pengyouwan/framework/v4/aq$b;,
        Lcom/pengyouwan/framework/v4/aq$c;,
        Lcom/pengyouwan/framework/v4/aq$d;,
        Lcom/pengyouwan/framework/v4/aq$e;,
        Lcom/pengyouwan/framework/v4/aq$f;,
        Lcom/pengyouwan/framework/v4/aq$g;,
        Lcom/pengyouwan/framework/v4/aq$h;,
        Lcom/pengyouwan/framework/v4/aq$i;
    }
.end annotation


# static fields
.field static final a:Lcom/pengyouwan/framework/v4/aq$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 547
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 548
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$h;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$h;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    .line 562
    :goto_0
    return-void

    .line 549
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 550
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$g;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$g;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0

    .line 551
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 552
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$f;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$f;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0

    .line 553
    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 554
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$e;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$e;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0

    .line 555
    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 556
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$d;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$d;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0

    .line 557
    :cond_4
    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    .line 558
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$c;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$c;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0

    .line 560
    :cond_5
    new-instance v1, Lcom/pengyouwan/framework/v4/aq$a;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/aq$a;-><init>()V

    sput-object v1, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 596
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/aq$i;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 951
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0, p1, p2}, Lcom/pengyouwan/framework/v4/aq$i;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 952
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/pengyouwan/framework/v4/a;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "delegate"    # Lcom/pengyouwan/framework/v4/a;

    .prologue
    .line 733
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/aq$i;->a(Landroid/view/View;Lcom/pengyouwan/framework/v4/a;)V

    .line 734
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 801
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/aq$i;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 802
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "direction"    # I

    .prologue
    .line 572
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/aq$i;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 769
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/aq$i;->b(Landroid/view/View;)V

    .line 770
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .prologue
    .line 852
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/aq$i;->b(Landroid/view/View;I)V

    .line 853
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 835
    sget-object v0, Lcom/pengyouwan/framework/v4/aq;->a:Lcom/pengyouwan/framework/v4/aq$i;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/aq$i;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method
