.class public Lcom/pengyouwan/framework/v4/ao;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/ao$a;,
        Lcom/pengyouwan/framework/v4/ao$b;,
        Lcom/pengyouwan/framework/v4/ao$c;
    }
.end annotation


# static fields
.field static final a:Lcom/pengyouwan/framework/v4/ao$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/pengyouwan/framework/v4/ao$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ao$b;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ao;->a:Lcom/pengyouwan/framework/v4/ao$c;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/v4/ao$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ao$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ao;->a:Lcom/pengyouwan/framework/v4/ao$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "pointerId"    # I

    .prologue
    .line 82
    sget-object v0, Lcom/pengyouwan/framework/v4/ao;->a:Lcom/pengyouwan/framework/v4/ao$c;

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/framework/v4/ao$c;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
