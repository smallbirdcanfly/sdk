.class Lcom/pengyouwan/framework/v4/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/v4/ai",
        "<",
        "Lcom/pengyouwan/framework/v4/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/pengyouwan/framework/v4/ViewPager$SavedState$1;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager$SavedState$1;->b(I)[Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/pengyouwan/framework/v4/ViewPager$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1234
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/pengyouwan/framework/v4/ViewPager$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1238
    new-array v0, p1, [Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    return-object v0
.end method
