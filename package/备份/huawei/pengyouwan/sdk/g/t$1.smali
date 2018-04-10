.class Lcom/pengyouwan/sdk/g/t$1;
.super Ljava/lang/Object;
.source "PassportRegisterTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/t;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/t;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/t;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 67
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v6, "ack"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "ack":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 70
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 71
    .local v1, "data":Lorg/json/JSONObject;
    const-string v6, "game_account"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 72
    .local v3, "gameAccountData":Lorg/json/JSONObject;
    new-instance v5, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v5}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 73
    .local v5, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v6, "password"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 74
    const-string v6, "passport_token"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->f(Ljava/lang/String;)V

    .line 75
    const-string v6, "passport"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->e(Ljava/lang/String;)V

    .line 76
    const-string v6, "have_pay_pwd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 77
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V

    .line 81
    :goto_0
    const-string v6, "account_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->b(I)V

    .line 86
    const-string v6, "token"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->d(Ljava/lang/String;)V

    .line 87
    const-string v6, "cp_uid"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Ljava/lang/String;)V

    .line 88
    const-string v6, "username"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 94
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pengyouwan/sdk/g/t$a;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 95
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/t$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "gameAccountData":Lorg/json/JSONObject;
    .end local v5    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 105
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 79
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "gameAccountData":Lorg/json/JSONObject;
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    .restart local v5    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "gameAccountData":Lorg/json/JSONObject;
    .end local v4    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v6

    const-string v7, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/t$a;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_2

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/t$a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 102
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    .line 103
    iget-object v7, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/t$1;->a:Lcom/pengyouwan/sdk/g/t;

    invoke-static {v8}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/g/t;)Lcom/pengyouwan/sdk/g/t$a;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pengyouwan/sdk/g/t;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 104
    throw v6
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/t$1;->a(Ljava/lang/String;)V

    return-void
.end method
