.class public abstract Lcom/pengyouwan/sdk/g/k;
.super Lcom/pengyouwan/sdk/g/a;
.source "DelCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/k$a;

.field private b:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/pengyouwan/framework/volley/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 46
    new-instance v0, Lcom/pengyouwan/sdk/g/k$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/k$1;-><init>(Lcom/pengyouwan/sdk/g/k;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/k;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 70
    new-instance v0, Lcom/pengyouwan/sdk/g/k$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/k$2;-><init>(Lcom/pengyouwan/sdk/g/k;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/k;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/k;)Lcom/pengyouwan/sdk/g/k$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/k;->a:Lcom/pengyouwan/sdk/g/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "api2":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "gameid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "sign":Ljava/lang/String;
    const-string v5, "sign"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v5, "gameid"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v5, "gamekey"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v5, "username"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v5, "tid"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v5, Lcom/pengyouwan/sdk/g/k$a;

    invoke-direct {v5, p0}, Lcom/pengyouwan/sdk/g/k$a;-><init>(Lcom/pengyouwan/sdk/g/k;)V

    iput-object v5, p0, Lcom/pengyouwan/sdk/g/k;->a:Lcom/pengyouwan/sdk/g/k$a;

    .line 41
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    .line 42
    sget-object v6, Lcom/pengyouwan/sdk/e/i;->x:Ljava/lang/String;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/k;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/k;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 41
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 43
    return-void
.end method
