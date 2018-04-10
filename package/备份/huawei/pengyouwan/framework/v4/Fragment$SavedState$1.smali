.class Lcom/pengyouwan/framework/v4/Fragment$SavedState$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/Fragment$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/pengyouwan/framework/v4/Fragment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/Fragment$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 314
    new-instance v0, Lcom/pengyouwan/framework/v4/Fragment$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pengyouwan/framework/v4/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/pengyouwan/framework/v4/Fragment$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 318
    new-array v0, p1, [Lcom/pengyouwan/framework/v4/Fragment$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment$SavedState$1;->a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment$SavedState$1;->a(I)[Lcom/pengyouwan/framework/v4/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
