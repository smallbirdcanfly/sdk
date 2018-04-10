.class public abstract Lcom/pengyouwan/sdk/g/w;
.super Lcom/pengyouwan/sdk/g/a;
.source "SecondInitTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/w$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/w$a;

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
    .line 26
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 52
    new-instance v0, Lcom/pengyouwan/sdk/g/w$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/w$1;-><init>(Lcom/pengyouwan/sdk/g/w;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/w;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 87
    new-instance v0, Lcom/pengyouwan/sdk/g/w$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/w$2;-><init>(Lcom/pengyouwan/sdk/g/w;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/w;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/w;->a:Lcom/pengyouwan/sdk/g/w$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    .line 33
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-static {v5, v7}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "api2":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "gameid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    .line 36
    .local v6, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "account":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "sign":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v7, "gameid"

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v7, "gamekey"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v7, "account"

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v7, "tid"

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v7, Lcom/pengyouwan/sdk/g/w$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/w$a;-><init>(Lcom/pengyouwan/sdk/g/w;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/w;->a:Lcom/pengyouwan/sdk/g/w$a;

    .line 46
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 47
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->A:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/w;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 48
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/w;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 46
    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 49
    return-void
.end method
