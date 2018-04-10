.class public abstract Lcom/pengyouwan/sdk/g/t;
.super Lcom/pengyouwan/sdk/g/a;
.source "PassportRegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/t$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/t$a;

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
    .line 29
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 62
    new-instance v0, Lcom/pengyouwan/sdk/g/t$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/t$1;-><init>(Lcom/pengyouwan/sdk/g/t;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/t;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 109
    new-instance v0, Lcom/pengyouwan/sdk/g/t$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/t$2;-><init>(Lcom/pengyouwan/sdk/g/t;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/t;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/t;->a:Lcom/pengyouwan/sdk/g/t$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "smsType"    # I
    .param p4, "isCheckCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "apiSecret":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "tid":Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "apiSecret2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "signstr":Ljava/lang/String;
    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "md5Str":Ljava/lang/String;
    const-string v7, "sign"

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v7, "tid"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v7, "passport"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_0

    .line 46
    const-string v7, "password"

    invoke-virtual {v4, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    const-string v7, "smstype"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v7, "is_check_smscode"

    invoke-virtual {v4, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v7, "gameid"

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v7, Lcom/pengyouwan/sdk/g/t$a;

    invoke-direct {v7, p0}, Lcom/pengyouwan/sdk/g/t$a;-><init>(Lcom/pengyouwan/sdk/g/t;)V

    iput-object v7, p0, Lcom/pengyouwan/sdk/g/t;->a:Lcom/pengyouwan/sdk/g/t$a;

    .line 57
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v7

    sget-object v8, Lcom/pengyouwan/sdk/e/i;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/pengyouwan/sdk/g/t;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 58
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/t;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 57
    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 59
    return-void

    .line 48
    :cond_0
    const-string v7, "password"

    invoke-static {p2}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
