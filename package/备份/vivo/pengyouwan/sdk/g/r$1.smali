.class Lcom/pengyouwan/sdk/g/r$1;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/r;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/r;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/r;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 62
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v6, "ack"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "ack":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_3

    .line 65
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v4, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 67
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v6, "password"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 68
    const-string v6, "account_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 70
    const-string v6, "token"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->d(Ljava/lang/String;)V

    .line 74
    :goto_0
    const-string v6, "id_verify_show"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->b(Z)V

    .line 75
    const-string v6, "cp_uid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Ljava/lang/String;)V

    .line 76
    const-string v6, "passport"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->e(Ljava/lang/String;)V

    .line 77
    const-string v6, "username"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 78
    const-string v6, "nickname"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 79
    const-string v6, "nickname"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->g(Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string v6, "have_pay_pwd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 82
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V

    .line 86
    :goto_1
    const-string v6, "account_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->b(I)V

    .line 92
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 93
    const-string v6, "game_account"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 95
    .local v5, "userList":Lorg/json/JSONArray;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pengyouwan/sdk/d/h;->a(Lorg/json/JSONArray;)V

    .line 96
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/pengyouwan/sdk/g/r$a;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 97
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/r$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    .end local v5    # "userList":Lorg/json/JSONArray;
    :goto_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 108
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 72
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_1
    :try_start_1
    const-string v6, "passport_token"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 101
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v6

    const-string v7, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/r$a;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_3

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_2
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v4, v6}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 104
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catchall_0
    move-exception v6

    .line 105
    iget-object v7, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v8}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 106
    throw v6

    .line 99
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_3
    :try_start_4
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/r$1;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/r;->a(Lcom/pengyouwan/sdk/g/r;)Lcom/pengyouwan/sdk/g/r$a;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/r$a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/r$1;->a(Ljava/lang/String;)V

    return-void
.end method
