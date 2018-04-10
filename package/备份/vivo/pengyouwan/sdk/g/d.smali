.class public abstract Lcom/pengyouwan/sdk/g/d;
.super Lcom/pengyouwan/sdk/g/a;
.source "BindPhoneTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/d$a;

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

    .line 55
    new-instance v0, Lcom/pengyouwan/sdk/g/d$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/d$1;-><init>(Lcom/pengyouwan/sdk/g/d;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/d;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 79
    new-instance v0, Lcom/pengyouwan/sdk/g/d$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/d$2;-><init>(Lcom/pengyouwan/sdk/g/d;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/d;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/d;)Lcom/pengyouwan/sdk/g/d$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/d;->a:Lcom/pengyouwan/sdk/g/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "account_pwd"    # Ljava/lang/String;
    .param p2, "phoneno"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v5

    .line 36
    .local v5, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "api2":Ljava/lang/String;
    const-string v6, "token"

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v6, "passport"

    invoke-virtual {v2, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v6, "account"

    invoke-virtual {v2, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "gameid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "sign":Ljava/lang/String;
    const-string v6, "sign"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v6, "gameid"

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v6, "tid"

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v6, "passport_pwd"

    invoke-static {p1}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v6, Lcom/pengyouwan/sdk/g/d$a;

    invoke-direct {v6, p0}, Lcom/pengyouwan/sdk/g/d$a;-><init>(Lcom/pengyouwan/sdk/g/d;)V

    iput-object v6, p0, Lcom/pengyouwan/sdk/g/d;->a:Lcom/pengyouwan/sdk/g/d$a;

    .line 50
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v6

    .line 51
    sget-object v7, Lcom/pengyouwan/sdk/e/i;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/d;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/d;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 50
    invoke-virtual {v6, v2, v7, v8, v9}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 52
    return-void
.end method
