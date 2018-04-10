.class Lcom/pengyouwan/framework/v4/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pengyouwan/framework/v4/ViewPager$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/ViewPager$b;Lcom/pengyouwan/framework/v4/ViewPager$b;)I
    .locals 2
    .param p1, "lhs"    # Lcom/pengyouwan/framework/v4/ViewPager$b;
    .param p2, "rhs"    # Lcom/pengyouwan/framework/v4/ViewPager$b;

    .prologue
    .line 113
    iget v0, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v1, p2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/pengyouwan/framework/v4/ViewPager$b;

    check-cast p2, Lcom/pengyouwan/framework/v4/ViewPager$b;

    invoke-virtual {p0, p1, p2}, Lcom/pengyouwan/framework/v4/ViewPager$1;->a(Lcom/pengyouwan/framework/v4/ViewPager$b;Lcom/pengyouwan/framework/v4/ViewPager$b;)I

    move-result v0

    return v0
.end method
