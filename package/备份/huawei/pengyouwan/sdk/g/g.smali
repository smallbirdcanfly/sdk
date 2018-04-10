.class public abstract Lcom/pengyouwan/sdk/g/g;
.super Lcom/pengyouwan/sdk/g/a;
.source "CheckSmsAndBindTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/g$a;

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

    .line 55
    new-instance v0, Lcom/pengyouwan/sdk/g/g$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/g$1;-><init>(Lcom/pengyouwan/sdk/g/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/g;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 85
    new-instance v0, Lcom/pengyouwan/sdk/g/g$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/g$2;-><init>(Lcom/pengyouwan/sdk/g/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/g;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/g;->a:Lcom/pengyouwan/sdk/g/g$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "sms"    # Ljava/lang/String;
    .param p2, "smstype"    # I
    .param p3, "phoneno"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    .line 34
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {v3, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "api2":Ljava/lang/String;
    const-string v5, "token"

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "sign":Ljava/lang/String;
    const-string v5, "sign"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v5, "gameid"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v5, "account"

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v5, "passport"

    invoke-virtual {v1, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v5, "smscode"

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v5, "tid"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v5, "smstype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v5, Lcom/pengyouwan/sdk/g/g$a;

    invoke-direct {v5, p0}, Lcom/pengyouwan/sdk/g/g$a;-><init>(Lcom/pengyouwan/sdk/g/g;)V

    iput-object v5, p0, Lcom/pengyouwan/sdk/g/g;->a:Lcom/pengyouwan/sdk/g/g$a;

    .line 49
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    .line 50
    sget-object v6, Lcom/pengyouwan/sdk/e/i;->u:Ljava/lang/String;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/g;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 51
    iget-object v8, p0, Lcom/pengyouwan/sdk/g/g;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 49
    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 52
    return-void
.end method
