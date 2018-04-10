.class public abstract Lcom/pengyouwan/sdk/g/o;
.super Lcom/pengyouwan/sdk/g/a;
.source "GetSmsCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/o$a;

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

    .line 56
    new-instance v0, Lcom/pengyouwan/sdk/g/o$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/o$1;-><init>(Lcom/pengyouwan/sdk/g/o;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/o;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 82
    new-instance v0, Lcom/pengyouwan/sdk/g/o$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/o$2;-><init>(Lcom/pengyouwan/sdk/g/o;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/o;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/o;->a:Lcom/pengyouwan/sdk/g/o$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "smsType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "api2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "sign":Ljava/lang/String;
    const-string v5, "tid"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v5, "gameid"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v5, "sign"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v5, "smstype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v5, Lcom/pengyouwan/sdk/g/o$a;

    invoke-direct {v5, p0}, Lcom/pengyouwan/sdk/g/o$a;-><init>(Lcom/pengyouwan/sdk/g/o;)V

    iput-object v5, p0, Lcom/pengyouwan/sdk/g/o;->a:Lcom/pengyouwan/sdk/g/o$a;

    .line 40
    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    .line 41
    const/4 v5, 0x5

    if-ne p2, v5, :cond_1

    .line 42
    :cond_0
    const-string v5, "username"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    sget-object v6, Lcom/pengyouwan/sdk/e/i;->n:Ljava/lang/String;

    .line 45
    iget-object v7, p0, Lcom/pengyouwan/sdk/g/o;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/o;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 44
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v5, "passport"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    sget-object v6, Lcom/pengyouwan/sdk/e/i;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/o;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 50
    iget-object v8, p0, Lcom/pengyouwan/sdk/g/o;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 49
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    goto :goto_0
.end method
