.class public abstract Lcom/pengyouwan/sdk/g/n;
.super Lcom/pengyouwan/sdk/g/a;
.source "GetAccountListTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/n$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/n$a;

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

    .line 51
    new-instance v0, Lcom/pengyouwan/sdk/g/n$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/n$1;-><init>(Lcom/pengyouwan/sdk/g/n;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/n;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 88
    new-instance v0, Lcom/pengyouwan/sdk/g/n$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/n$2;-><init>(Lcom/pengyouwan/sdk/g/n;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/n;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/n;->a:Lcom/pengyouwan/sdk/g/n$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "passnotoken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "api2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "tid"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v4, "gameid"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "passport"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "passport_token"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v4, Lcom/pengyouwan/sdk/g/n$a;

    invoke-direct {v4, p0}, Lcom/pengyouwan/sdk/g/n$a;-><init>(Lcom/pengyouwan/sdk/g/n;)V

    iput-object v4, p0, Lcom/pengyouwan/sdk/g/n;->a:Lcom/pengyouwan/sdk/g/n$a;

    .line 46
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v4

    .line 47
    sget-object v5, Lcom/pengyouwan/sdk/e/i;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/n;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/n;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 46
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 48
    return-void
.end method
