.class public abstract Lcom/pengyouwan/sdk/g/s;
.super Lcom/pengyouwan/sdk/g/a;
.source "LoginTimeUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/s$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/s$a;

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

    .line 113
    new-instance v0, Lcom/pengyouwan/sdk/g/s$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/s$1;-><init>(Lcom/pengyouwan/sdk/g/s;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/s;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 136
    new-instance v0, Lcom/pengyouwan/sdk/g/s$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/s$2;-><init>(Lcom/pengyouwan/sdk/g/s;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/s;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/s;)Lcom/pengyouwan/sdk/g/s$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/s;->a:Lcom/pengyouwan/sdk/g/s$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "endTime"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v1, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "account"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "startTime"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    .line 71
    .local v6, "user":Lcom/pengyouwan/sdk/entity/c;
    if-nez v6, :cond_0

    .line 98
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "api2":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 77
    .local v0, "accountType":I
    const-string v7, ""

    .line 78
    .local v7, "username":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    .line 79
    const-string v8, "token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "gameId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "sign":Ljava/lang/String;
    const-string v8, "tid"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v8, "sign"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v8, "gameid"

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v8, "gamekey"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v8, "parameterList"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v8, Lcom/pengyouwan/sdk/g/s$a;

    invoke-direct {v8, p0}, Lcom/pengyouwan/sdk/g/s$a;-><init>(Lcom/pengyouwan/sdk/g/s;)V

    iput-object v8, p0, Lcom/pengyouwan/sdk/g/s;->a:Lcom/pengyouwan/sdk/g/s$a;

    .line 96
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v8

    sget-object v9, Lcom/pengyouwan/sdk/utils/l;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/s;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 97
    iget-object v11, p0, Lcom/pengyouwan/sdk/g/s;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 96
    invoke-virtual {v8, v3, v9, v10, v11}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    goto/16 :goto_0

    .line 82
    .end local v2    # "gameId":Ljava/lang/String;
    .end local v4    # "sign":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v7

    .line 83
    const-string v8, "token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    .line 34
    .local v6, "user":Lcom/pengyouwan/sdk/entity/c;
    if-nez v6, :cond_0

    .line 60
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "api2":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 40
    .local v0, "accountType":I
    const-string v7, ""

    .line 41
    .local v7, "username":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    .line 42
    const-string v8, "token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v7

    .line 48
    :goto_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "gameId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "sign":Ljava/lang/String;
    const-string v8, "tid"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v8, "sign"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v8, "gameid"

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v8, "gamekey"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v8, "parameterList"

    invoke-direct {p0, p2, v7, p1}, Lcom/pengyouwan/sdk/g/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v8, Lcom/pengyouwan/sdk/g/s$a;

    invoke-direct {v8, p0}, Lcom/pengyouwan/sdk/g/s$a;-><init>(Lcom/pengyouwan/sdk/g/s;)V

    iput-object v8, p0, Lcom/pengyouwan/sdk/g/s;->a:Lcom/pengyouwan/sdk/g/s$a;

    .line 58
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v8

    sget-object v9, Lcom/pengyouwan/sdk/utils/l;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/s;->b:Lcom/pengyouwan/framework/volley/p$b;

    .line 59
    iget-object v11, p0, Lcom/pengyouwan/sdk/g/s;->c:Lcom/pengyouwan/framework/volley/p$a;

    .line 58
    invoke-virtual {v8, v3, v9, v10, v11}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    goto/16 :goto_0

    .line 45
    .end local v2    # "gameId":Ljava/lang/String;
    .end local v4    # "sign":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v7

    .line 46
    const-string v8, "token"

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
