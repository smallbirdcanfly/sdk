.class Lcom/pengyouwan/framework/v4/aq$c;
.super Lcom/pengyouwan/framework/v4/aq$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/aq$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/ar;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
