.class public abstract Lcom/pengyouwan/sdk/g/b;
.super Lcom/pengyouwan/sdk/g/a;
.source "AccountRegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/b$a;

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
    .line 25
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 54
    new-instance v0, Lcom/pengyouwan/sdk/g/b$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/b$1;-><init>(Lcom/pengyouwan/sdk/g/b;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/b;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 86
    new-instance v0, Lcom/pengyouwan/sdk/g/b$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/b$2;-><init>(Lcom/pengyouwan/sdk/g/b;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/b;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/b;->a:Lcom/pengyouwan/sdk/g/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "tidString":Ljava/lang/String;
    const-string v8, "tid"

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v8, "gameid"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "apiSecret":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "apiSecret2":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "signstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "md5Str":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v7

    .line 40
    .local v7, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v7, :cond_0

    .line 41
    const-string v8, "passport_token"

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    const-string v8, "sign"

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v8, "passport"

    invoke-virtual {v4, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v8, "tid"

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v8, Lcom/pengyouwan/sdk/g/b$a;

    invoke-direct {v8, p0}, Lcom/pengyouwan/sdk/g/b$a;-><init>(Lcom/pengyouwan/sdk/g/b;)V

    iput-object v8, p0, Lcom/pengyouwan/sdk/g/b;->a:Lcom/pengyouwan/sdk/g/b$a;

    .line 49
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v8

    .line 50
    sget-object v9, Lcom/pengyouwan/sdk/e/i;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/b;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/b;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 49
    invoke-virtual {v8, v4, v9, v10, v11}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 51
    return-void
.end method
