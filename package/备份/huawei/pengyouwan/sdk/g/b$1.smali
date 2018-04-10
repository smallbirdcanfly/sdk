.class Lcom/pengyouwan/sdk/g/b$1;
.super Ljava/lang/Object;
.source "AccountRegisterTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/volley/p$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/b;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v5, "ack"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "ack":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    .line 61
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    .line 63
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->d(Ljava/lang/String;)V

    .line 64
    const-string v5, "cp_uid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->a(Ljava/lang/String;)V

    .line 65
    const-string v5, "account"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 69
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->h()V

    .line 70
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pengyouwan/sdk/g/b$a;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 71
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/b$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 82
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 73
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/b$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v5

    const-string v6, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/b$a;->a(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_1

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 79
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/b$1;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/g/b;)Lcom/pengyouwan/sdk/g/b$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/b;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 80
    throw v5
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/b$1;->a(Ljava/lang/String;)V

    return-void
.end method
