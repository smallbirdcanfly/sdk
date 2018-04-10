.class public Lcom/pengyouwan/sdk/d/b;
.super Ljava/lang/Object;
.source "InitManager.java"


# static fields
.field private static i:Lcom/pengyouwan/sdk/d/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/pengyouwan/sdk/d/b;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/d/b;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/d/b;->i:Lcom/pengyouwan/sdk/d/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/b;->g:Z

    .line 36
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/d/b;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/pengyouwan/sdk/d/b;->i:Lcom/pengyouwan/sdk/d/b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/pengyouwan/sdk/d/b;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/d/b;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/d/b;->i:Lcom/pengyouwan/sdk/d/b;

    .line 42
    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/d/b;->i:Lcom/pengyouwan/sdk/d/b;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "fastFlag"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/pengyouwan/sdk/d/b;->h:I

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/b;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isClickable"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/d/b;->e:Z

    .line 96
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "apisecret"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/b;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/d/b;->g:Z

    .line 104
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "exitShowUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/b;->c:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "isDelable"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/d/b;->f:Z

    .line 112
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "exitGoUrl"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/b;->d:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/d/b;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/d/b;->g:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/d/b;->f:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/pengyouwan/sdk/d/b;->h:I

    return v0
.end method
