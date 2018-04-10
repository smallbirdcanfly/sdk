.class public abstract Lcom/pengyouwan/sdk/g/m;
.super Lcom/pengyouwan/sdk/g/a;
.source "FastRegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/m$a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/pengyouwan/framework/volley/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 60
    new-instance v0, Lcom/pengyouwan/sdk/g/m$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/m$1;-><init>(Lcom/pengyouwan/sdk/g/m;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/m;->e:Lcom/pengyouwan/framework/volley/p$b;

    .line 98
    new-instance v0, Lcom/pengyouwan/sdk/g/m$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/m$2;-><init>(Lcom/pengyouwan/sdk/g/m;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/m;->f:Lcom/pengyouwan/framework/volley/p$a;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m;->a:Lcom/pengyouwan/sdk/g/m$a;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/g/m;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/pengyouwan/sdk/g/m;->b:I

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/g/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/g/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "apiSecret":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "apiSecret2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "signstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "md5Str":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v7, "gameid"

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v7, "flag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v7, "tid"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v7, 0x2

    if-ne p3, v7, :cond_1

    .line 45
    const-string v7, "account"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-ge v7, v8, :cond_0

    .line 47
    invoke-static {p2}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    :cond_0
    const-string v7, "password"

    invoke-virtual {v4, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    iput p3, p0, Lcom/pengyouwan/sdk/g/m;->b:I

    .line 52
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m;->c:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/pengyouwan/sdk/g/m;->d:Ljava/lang/String;

    .line 54
    new-instance v7, Lcom/pengyouwan/sdk/g/m$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/m$a;-><init>(Lcom/pengyouwan/sdk/g/m;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/m;->a:Lcom/pengyouwan/sdk/g/m$a;

    .line 55
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    .line 56
    sget-object v8, Lcom/pengyouwan/sdk/e/i;->k:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/m;->e:Lcom/pengyouwan/framework/volley/p$b;

    .line 57
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/m;->f:Lcom/pengyouwan/framework/volley/p$a;

    .line 55
    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 58
    return-void
.end method
