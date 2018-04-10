.class public abstract Lcom/pengyouwan/sdk/g/ab;
.super Lcom/pengyouwan/sdk/g/a;
.source "VoucherListTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/ab$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/ab$a;

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
    .line 30
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 64
    new-instance v0, Lcom/pengyouwan/sdk/g/ab$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/ab$1;-><init>(Lcom/pengyouwan/sdk/g/ab;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/ab;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 121
    new-instance v0, Lcom/pengyouwan/sdk/g/ab$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/ab$2;-><init>(Lcom/pengyouwan/sdk/g/ab;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/ab;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/ab;->a:Lcom/pengyouwan/sdk/g/ab$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 12
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v7

    .line 36
    .local v7, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "api2":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v1

    .line 39
    .local v1, "accountType":I
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "account":Ljava/lang/String;
    const-string v4, ""

    .line 41
    .local v4, "passport":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    .line 42
    const-string v8, "token"

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "sign":Ljava/lang/String;
    const-string v8, "sign"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v8, "account_type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v8, "gameid"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v8, "passport"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v8, "account"

    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v8, "tid"

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v8, "page"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v8, "status"

    invoke-virtual {v3, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v8, Lcom/pengyouwan/sdk/g/ab$a;

    invoke-direct {v8, p0}, Lcom/pengyouwan/sdk/g/ab$a;-><init>(Lcom/pengyouwan/sdk/g/ab;)V

    iput-object v8, p0, Lcom/pengyouwan/sdk/g/ab;->a:Lcom/pengyouwan/sdk/g/ab$a;

    .line 59
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v8

    .line 60
    sget-object v9, Lcom/pengyouwan/sdk/e/i;->f:Ljava/lang/String;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/ab;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 59
    invoke-virtual {v8, v3, v9, v10, v11}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 61
    return-void

    .line 44
    .end local v5    # "sign":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v8, "passport_token"

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
