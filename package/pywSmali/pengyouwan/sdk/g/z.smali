.class public abstract Lcom/pengyouwan/sdk/g/z;
.super Lcom/pengyouwan/sdk/g/a;
.source "UserCenterCreateAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/z$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/z$a;

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

    .line 50
    new-instance v0, Lcom/pengyouwan/sdk/g/z$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/z$1;-><init>(Lcom/pengyouwan/sdk/g/z;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/z;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 72
    new-instance v0, Lcom/pengyouwan/sdk/g/z$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/z$2;-><init>(Lcom/pengyouwan/sdk/g/z;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/z;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/z;)Lcom/pengyouwan/sdk/g/z$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/z;->a:Lcom/pengyouwan/sdk/g/z$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
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

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "tidString":Ljava/lang/String;
    const-string v7, "gameid"

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "apiSecret":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "apiSecret2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "signstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "md5Str":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v7, "passport"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v7, "passport_token"

    invoke-virtual {v4, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v7, "tid"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v7, Lcom/pengyouwan/sdk/g/z$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/z$a;-><init>(Lcom/pengyouwan/sdk/g/z;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/z;->a:Lcom/pengyouwan/sdk/g/z$a;

    .line 45
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 46
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->z:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/z;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/z;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 45
    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 47
    return-void
.end method
