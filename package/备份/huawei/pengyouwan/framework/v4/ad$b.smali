.class Lcom/pengyouwan/framework/v4/ad$b;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/ad$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/ae;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/ae;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/ae;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/ae;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
