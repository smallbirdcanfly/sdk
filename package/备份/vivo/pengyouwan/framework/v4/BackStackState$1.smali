.class Lcom/pengyouwan/framework/v4/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/BackStackState;
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
        "Lcom/pengyouwan/framework/v4/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/BackStackState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    new-instance v0, Lcom/pengyouwan/framework/v4/BackStackState;

    invoke-direct {v0, p1}, Lcom/pengyouwan/framework/v4/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/pengyouwan/framework/v4/BackStackState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    new-array v0, p1, [Lcom/pengyouwan/framework/v4/BackStackState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/BackStackState$1;->a(Landroid/os/Parcel;)Lcom/pengyouwan/framework/v4/BackStackState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/BackStackState$1;->a(I)[Lcom/pengyouwan/framework/v4/BackStackState;

    move-result-object v0

    return-object v0
.end method
