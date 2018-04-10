.class public abstract Lcom/pengyouwan/sdk/g/l;
.super Lcom/pengyouwan/sdk/g/a;
.source "DeleteAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/l$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/l$a;

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

    .line 56
    new-instance v0, Lcom/pengyouwan/sdk/g/l$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/l$1;-><init>(Lcom/pengyouwan/sdk/g/l;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/l;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 80
    new-instance v0, Lcom/pengyouwan/sdk/g/l$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/l$2;-><init>(Lcom/pengyouwan/sdk/g/l;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/l;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/l;)Lcom/pengyouwan/sdk/g/l$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/l;->a:Lcom/pengyouwan/sdk/g/l$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 10
    .param p1, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v5

    .line 38
    .local v5, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "api2":Ljava/lang/String;
    const-string v6, "passport_token"

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v6, "passport"

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v6, "account"

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "gameid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "sign":Ljava/lang/String;
    const-string v6, "sign"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v6, "gameid"

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v6, "tid"

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Lcom/pengyouwan/sdk/g/l$a;

    invoke-direct {v6, p0}, Lcom/pengyouwan/sdk/g/l$a;-><init>(Lcom/pengyouwan/sdk/g/l;)V

    iput-object v6, p0, Lcom/pengyouwan/sdk/g/l;->a:Lcom/pengyouwan/sdk/g/l$a;

    .line 51
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v6

    .line 52
    sget-object v7, Lcom/pengyouwan/sdk/e/i;->w:Ljava/lang/String;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/l;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/l;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 51
    invoke-virtual {v6, v2, v7, v8, v9}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 53
    return-void
.end method
