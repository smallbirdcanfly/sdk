.class Lcom/pengyouwan/framework/v4/j$a;
.super Lcom/pengyouwan/framework/v4/j$e;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/j$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/pengyouwan/framework/v4/k;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 422
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/k;->a(Ljava/lang/Object;I)V

    .line 423
    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 462
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/k;->a(Ljava/lang/Object;Z)V

    .line 463
    return-void
.end method

.method public b(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 432
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/k;->b(Ljava/lang/Object;I)V

    .line 433
    return-void
.end method

.method public c(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 472
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/k;->c(Ljava/lang/Object;I)V

    .line 473
    return-void
.end method
