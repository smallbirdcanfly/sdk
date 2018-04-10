.class public Lcom/pengyouwan/sdk/entity/a;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/pengyouwan/sdk/entity/a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/pengyouwan/sdk/entity/a;->b:I

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pengyouwan/sdk/entity/a;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pengyouwan/sdk/entity/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "isFreeze"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/pengyouwan/sdk/entity/a;->c:I

    .line 63
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/pengyouwan/sdk/entity/a;->c:I

    return v0
.end method
