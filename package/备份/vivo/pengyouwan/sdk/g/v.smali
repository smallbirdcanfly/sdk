.class public abstract Lcom/pengyouwan/sdk/g/v;
.super Lcom/pengyouwan/sdk/g/a;
.source "ResetLoginPwdTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/v$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/v$a;

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
    new-instance v0, Lcom/pengyouwan/sdk/g/v$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/v$1;-><init>(Lcom/pengyouwan/sdk/g/v;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/v;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 78
    new-instance v0, Lcom/pengyouwan/sdk/g/v$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/v$2;-><init>(Lcom/pengyouwan/sdk/g/v;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/v;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/v;)Lcom/pengyouwan/sdk/g/v$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/v;->a:Lcom/pengyouwan/sdk/g/v$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "smsType"    # I
    .param p5, "isCheckCode"    # Ljava/lang/String;
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
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "gameId":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "api2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "sign":Ljava/lang/String;
    const-string v5, "passport"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v5, "tid"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v5, "sign"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v5, "gameid"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v5, "smstype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v5, "is_check_smscode"

    invoke-virtual {v2, v5, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_0

    .line 43
    const-string v5, "password"

    invoke-virtual {v2, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    const-string v5, "passport_token"

    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v5, Lcom/pengyouwan/sdk/g/v$a;

    invoke-direct {v5, p0}, Lcom/pengyouwan/sdk/g/v$a;-><init>(Lcom/pengyouwan/sdk/g/v;)V

    iput-object v5, p0, Lcom/pengyouwan/sdk/g/v;->a:Lcom/pengyouwan/sdk/g/v$a;

    .line 51
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    .line 52
    sget-object v6, Lcom/pengyouwan/sdk/e/i;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/v;->b:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/v;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 51
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 53
    return-void

    .line 45
    :cond_0
    const-string v5, "password"

    invoke-static {p3}, Lcom/pengyouwan/framework/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
