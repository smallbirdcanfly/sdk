.class public Lcom/pengyouwan/sdk/entity/Voucher;
.super Ljava/lang/Object;
.source "Voucher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/pengyouwan/sdk/entity/Voucher$1;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/Voucher$1;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/entity/Voucher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->k:Z

    .line 13
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .param p1, "current_consumption_amount"    # F

    .prologue
    .line 54
    iput p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->j:F

    .line 55
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->h:I

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->g:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "highlight"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->k:Z

    .line 47
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->k:Z

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->j:F

    return v0
.end method

.method public b(F)V
    .locals 0
    .param p1, "leftMoney"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->e:F

    .line 127
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->a:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->f:Z

    .line 91
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "useTime"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->b:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "voucherId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->d:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->f:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "buyMoney"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->c:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->e:F

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "coupon_tips"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/Voucher;->i:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->i:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 149
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/Voucher;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
