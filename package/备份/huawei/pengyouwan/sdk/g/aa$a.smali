.class public Lcom/pengyouwan/sdk/g/aa$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "UserCenterTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/aa;

.field private b:Lcom/pengyouwan/sdk/entity/d;

.field private c:Ljava/lang/String;

.field private d:F

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/aa;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/aa$a;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/g/aa$a;->e:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .param p1, "balance"    # F

    .prologue
    .line 152
    iput p1, p0, Lcom/pengyouwan/sdk/g/aa$a;->d:F

    .line 153
    return-void
.end method

.method public a(Lcom/pengyouwan/sdk/entity/d;)V
    .locals 0
    .param p1, "userCenter"    # Lcom/pengyouwan/sdk/entity/d;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/aa$a;->b:Lcom/pengyouwan/sdk/entity/d;

    .line 161
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/aa$a;->c:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public b()Lcom/pengyouwan/sdk/entity/d;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/aa$a;->b:Lcom/pengyouwan/sdk/entity/d;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isTokenError"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/g/aa$a;->e:Z

    .line 177
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/g/aa$a;->e:Z

    return v0
.end method
