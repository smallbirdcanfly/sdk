.class public Lcom/pengyouwan/sdk/entity/d;
.super Ljava/lang/Object;
.source "UserCenter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/entity/d;->l:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/pengyouwan/sdk/entity/d;->b:F

    return v0
.end method

.method public a(F)V
    .locals 0
    .param p1, "pywBalance"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/pengyouwan/sdk/entity/d;->b:F

    .line 54
    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/pengyouwan/sdk/entity/d;->c:I

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "setPwdUrl"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "have_pay_pwd"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/d;->j:Z

    .line 134
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/pengyouwan/sdk/entity/d;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "coupon_count"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/pengyouwan/sdk/entity/d;->d:I

    .line 70
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "modifyPwdUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isVerify"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/d;->l:Z

    .line 142
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/pengyouwan/sdk/entity/d;->d:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "forgetPwdUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->g:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "creditUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->h:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->i:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->k:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->a:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "idCardName"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->m:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "idCardNo"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/d;->n:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/d;->j:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/d;->l:Z

    return v0
.end method
