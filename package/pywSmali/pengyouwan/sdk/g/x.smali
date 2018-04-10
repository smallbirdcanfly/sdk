.class public abstract Lcom/pengyouwan/sdk/g/x;
.super Lcom/pengyouwan/sdk/g/a;
.source "SetLoginPasswordTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/x$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/x$a;

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

    .line 61
    new-instance v0, Lcom/pengyouwan/sdk/g/x$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/x$1;-><init>(Lcom/pengyouwan/sdk/g/x;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/x;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 85
    new-instance v0, Lcom/pengyouwan/sdk/g/x$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/x$2;-><init>(Lcom/pengyouwan/sdk/g/x;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/x;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/x;)Lcom/pengyouwan/sdk/g/x$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/x;->a:Lcom/pengyouwan/sdk/g/x$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "old_pwd"    # Ljava/lang/String;
    .param p2, "new_pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v5

    .line 33
    .local v5, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v4, v7}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "api2":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 37
    .local v0, "accountType":I
    const-string v6, ""

    .line 38
    .local v6, "username":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    .line 39
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v6

    .line 40
    const-string v7, "token"

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "sign":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v7, "gameid"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v7, "username"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v7, "old_pwd"

    invoke-static {p1}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v7, "tid"

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v7, "new_pwd"

    invoke-static {p2}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v7, Lcom/pengyouwan/sdk/g/x$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/x$a;-><init>(Lcom/pengyouwan/sdk/g/x;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/x;->a:Lcom/pengyouwan/sdk/g/x$a;

    .line 55
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 56
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/x;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 57
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/x;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 55
    invoke-virtual {v7, v2, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 58
    return-void

    .line 42
    .end local v3    # "sign":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v6

    .line 43
    const-string v7, "passport_token"

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
