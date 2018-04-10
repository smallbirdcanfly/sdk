.class public Lcom/pengyouwan/sdk/entity/c;
.super Ljava/lang/Object;
.source "SDKUser.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/pengyouwan/sdk/entity/c;->j:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/pengyouwan/sdk/entity/c;->j:I

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "havePayPwd"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/c;->e:Z

    .line 78
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "accountType"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/pengyouwan/sdk/entity/c;->i:I

    .line 102
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isVerify"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/entity/c;->k:Z

    .line 136
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNo"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/c;->e:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNoToken"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->g:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/c;->c:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/pengyouwan/sdk/entity/c;->i:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/pengyouwan/sdk/open/User;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/pengyouwan/sdk/open/User;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/open/User;-><init>()V

    .line 125
    .local v0, "user":Lcom/pengyouwan/sdk/open/User;
    iget-object v1, p0, Lcom/pengyouwan/sdk/entity/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/open/User;->setToken(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/pengyouwan/sdk/entity/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/open/User;->setUserId(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/entity/c;->k:Z

    return v0
.end method
