.class Lcom/pengyouwan/framework/v4/q$b;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/r;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 96
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/r;->a(Ljava/lang/Object;II)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/r;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;F)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/r;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/r;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/r;->b(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "edgeEffect"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/r;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
