.class Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState$1;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;
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
        "Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    new-instance v0, Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;)V

    return-object v0
.end method

.method public a(I)[Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    new-array v0, p1, [Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState$1;->a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState$1;->a(I)[Lcom/pengyouwan/framework/v4/FragmentTabHost$SavedState;

    move-result-object v0

    return-object v0
.end method
