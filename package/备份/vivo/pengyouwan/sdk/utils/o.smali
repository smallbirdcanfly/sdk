.class public Lcom/pengyouwan/sdk/utils/o;
.super Ljava/lang/Object;
.source "VoucherHelper.java"


# static fields
.field private static a:Lcom/pengyouwan/sdk/utils/o;


# instance fields
.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    .line 25
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/utils/o;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/pengyouwan/sdk/utils/o;->a:Lcom/pengyouwan/sdk/utils/o;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/pengyouwan/sdk/utils/o;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/utils/o;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/utils/o;->a:Lcom/pengyouwan/sdk/utils/o;

    .line 31
    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/utils/o;->a:Lcom/pengyouwan/sdk/utils/o;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .param p1, "total"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/pengyouwan/sdk/utils/o;->c:F

    .line 36
    return-void
.end method

.method public a(Lcom/pengyouwan/sdk/entity/Voucher;)V
    .locals 2
    .param p1, "v"    # Lcom/pengyouwan/sdk/entity/Voucher;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    iget v0, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    .line 65
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 97
    iput v1, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    .line 98
    iput v1, p0, Lcom/pengyouwan/sdk/utils/o;->c:F

    .line 99
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 101
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/utils/o;->d:F

    .line 106
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 108
    :cond_0
    return-void
.end method

.method public e()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/o;->b:Ljava/util/LinkedList;

    return-object v0
.end method
