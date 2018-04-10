.class Lcom/pengyouwan/framework/v4/aq$d;
.super Lcom/pengyouwan/framework/v4/aq$c;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/aq$c;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/pengyouwan/framework/v4/as;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 393
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/as;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 394
    return-void
.end method
