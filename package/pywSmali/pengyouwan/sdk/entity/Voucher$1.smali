.class Lcom/pengyouwan/sdk/entity/Voucher$1;
.super Ljava/lang/Object;
.source "Voucher.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/entity/Voucher;
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
        "Lcom/pengyouwan/sdk/entity/Voucher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/pengyouwan/sdk/entity/Voucher;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 165
    new-instance v0, Lcom/pengyouwan/sdk/entity/Voucher;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/Voucher;-><init>()V

    .line 166
    .local v0, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->c(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->e(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->d(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->b(F)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/Voucher;->a(Ljava/lang/String;)V

    .line 173
    return-object v0

    .line 171
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/pengyouwan/sdk/entity/Voucher;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 178
    new-array v0, p1, [Lcom/pengyouwan/sdk/entity/Voucher;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/entity/Voucher$1;->a(Landroid/os/Parcel;)Lcom/pengyouwan/sdk/entity/Voucher;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/entity/Voucher$1;->a(I)[Lcom/pengyouwan/sdk/entity/Voucher;

    move-result-object v0

    return-object v0
.end method
