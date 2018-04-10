.class final Lcom/pengyouwan/framework/v4/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pengyouwan/framework/v4/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:[Lcom/pengyouwan/framework/v4/FragmentState;

.field b:[I

.field c:[Lcom/pengyouwan/framework/v4/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/pengyouwan/framework/v4/FragmentManagerState$1;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/FragmentManagerState$1;-><init>()V

    .line 377
    sput-object v0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 386
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    sget-object v0, Lcom/pengyouwan/framework/v4/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pengyouwan/framework/v4/FragmentState;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    .line 364
    sget-object v0, Lcom/pengyouwan/framework/v4/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pengyouwan/framework/v4/BackStackState;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    .line 365
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 373
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 374
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 375
    return-void
.end method
