.class public Lcom/pengyouwan/sdk/g/ab$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "VoucherListTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/ab;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/ab;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->e:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "totalPage"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->c:I

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->f:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "vou":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->b:Ljava/util/ArrayList;

    .line 156
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "currtenPage"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->d:I

    .line 192
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isTokenError"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->e:Z

    .line 176
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "num_not_use"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->g:I

    .line 200
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->e:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0
    .param p1, "num_have_used"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->h:I

    .line 208
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->g:I

    return v0
.end method

.method public e(I)V
    .locals 0
    .param p1, "num_expire"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/pengyouwan/sdk/g/ab$a;->i:I

    .line 216
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/pengyouwan/sdk/g/ab$a;->i:I

    return v0
.end method
