.class public abstract Lcom/pengyouwan/sdk/g/aa;
.super Lcom/pengyouwan/sdk/g/a;
.source "UserCenterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/aa$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/aa$a;

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
    .line 27
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 59
    new-instance v0, Lcom/pengyouwan/sdk/g/aa$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/aa$1;-><init>(Lcom/pengyouwan/sdk/g/aa;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/aa;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 121
    new-instance v0, Lcom/pengyouwan/sdk/g/aa$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/aa$2;-><init>(Lcom/pengyouwan/sdk/g/aa;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/aa;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/aa;->a:Lcom/pengyouwan/sdk/g/aa$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "passport"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "apiSecret":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "apiSecret2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "md5":Ljava/lang/String;
    invoke-static {v3}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "md5Str":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v7, "tid"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    .line 42
    const-string v7, "passport_token"

    invoke-virtual {v5, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    const-string v7, "passport"

    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v7, "account"

    invoke-virtual {v5, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v7, "gameid"

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v7, Lcom/pengyouwan/sdk/g/aa$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/aa$a;-><init>(Lcom/pengyouwan/sdk/g/aa;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/aa;->a:Lcom/pengyouwan/sdk/g/aa$a;

    .line 53
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 54
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/aa;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 55
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/aa;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 53
    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 56
    return-void

    .line 44
    :cond_0
    const-string v7, "token"

    invoke-virtual {v5, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
