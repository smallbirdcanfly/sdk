.class public abstract Lcom/pengyouwan/sdk/g/c;
.super Lcom/pengyouwan/sdk/g/a;
.source "BindAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/c$a;

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
    .line 28
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 65
    new-instance v0, Lcom/pengyouwan/sdk/g/c$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/c$1;-><init>(Lcom/pengyouwan/sdk/g/c;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/c;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 85
    new-instance v0, Lcom/pengyouwan/sdk/g/c$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/c$2;-><init>(Lcom/pengyouwan/sdk/g/c;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/c;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/c;)Lcom/pengyouwan/sdk/g/c$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/c;->a:Lcom/pengyouwan/sdk/g/c$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "account_pwd"    # Ljava/lang/String;
    .param p2, "phoneno"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    .line 41
    .local v6, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "api2":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 44
    .local v0, "accountType":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 45
    const-string v7, "token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    const-string v7, "passport"

    invoke-virtual {v3, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v7, "account"

    invoke-virtual {v3, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "gameid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    .line 53
    .local v4, "sign":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v7, "gameid"

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v7, "tid"

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v7, "account_pwd"

    invoke-static {p1}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v7, Lcom/pengyouwan/sdk/g/c$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/c$a;-><init>(Lcom/pengyouwan/sdk/g/c;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/c;->a:Lcom/pengyouwan/sdk/g/c$a;

    .line 60
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 61
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->q:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/c;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/c;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 60
    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 62
    return-void

    .line 47
    .end local v2    # "gameid":Ljava/lang/String;
    .end local v4    # "sign":Ljava/lang/String;
    :cond_0
    const-string v7, "passport_token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
