.class public Lcom/pengyouwan/framework/volley/p;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/p$a;,
        Lcom/pengyouwan/framework/volley/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/pengyouwan/framework/volley/b$a;

.field public final c:Lcom/pengyouwan/framework/volley/u;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/pengyouwan/framework/volley/u;)V
    .locals 2
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .local p0, "this":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<TT;>;"
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/p;->d:Z

    .line 81
    iput-object v1, p0, Lcom/pengyouwan/framework/volley/p;->a:Ljava/lang/Object;

    .line 82
    iput-object v1, p0, Lcom/pengyouwan/framework/volley/p;->b:Lcom/pengyouwan/framework/volley/b$a;

    .line 83
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/p;->c:Lcom/pengyouwan/framework/volley/u;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)V
    .locals 1
    .param p2, "cacheEntry"    # Lcom/pengyouwan/framework/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/pengyouwan/framework/volley/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/p;->d:Z

    .line 75
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/p;->a:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/p;->b:Lcom/pengyouwan/framework/volley/b$a;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/p;->c:Lcom/pengyouwan/framework/volley/u;

    .line 78
    return-void
.end method

.method public static a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/p;
    .locals 1
    .param p0, "error"    # Lcom/pengyouwan/framework/volley/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pengyouwan/framework/volley/u;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcom/pengyouwan/framework/volley/p;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/volley/p;-><init>(Lcom/pengyouwan/framework/volley/u;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/p;
    .locals 1
    .param p1, "cacheEntry"    # Lcom/pengyouwan/framework/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/pengyouwan/framework/volley/b$a;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/pengyouwan/framework/volley/p;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/volley/p;-><init>(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/p;->c:Lcom/pengyouwan/framework/volley/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
