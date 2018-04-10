.class public Lcom/pengyouwan/framework/v4/ad;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/ad$a;,
        Lcom/pengyouwan/framework/v4/ad$b;,
        Lcom/pengyouwan/framework/v4/ad$c;
    }
.end annotation


# static fields
.field static final a:Lcom/pengyouwan/framework/v4/ad$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Lcom/pengyouwan/framework/v4/ad$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ad$b;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    .line 176
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/v4/ad$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ad$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerId"    # I

    .prologue
    .line 201
    sget-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/ad$c;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 210
    sget-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/ad$c;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 219
    sget-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/ad$c;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 228
    sget-object v0, Lcom/pengyouwan/framework/v4/ad;->a:Lcom/pengyouwan/framework/v4/ad$c;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/ad$c;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
