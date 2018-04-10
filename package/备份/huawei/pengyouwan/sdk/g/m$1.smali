.class Lcom/pengyouwan/sdk/g/m$1;
.super Ljava/lang/Object;
.source "FastRegisterTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/m;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/m;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 65
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v5, "ack"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "ack":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_1

    .line 68
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v4, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 70
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->b(Lcom/pengyouwan/sdk/g/m;)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 71
    const-string v5, "password"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 72
    const-string v5, "account"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 81
    :goto_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/m$a;->a(Z)V

    .line 82
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pengyouwan/sdk/g/m$a;->a(Lcom/pengyouwan/sdk/entity/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 93
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 74
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->c(Lcom/pengyouwan/sdk/g/m;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 75
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->d(Lcom/pengyouwan/sdk/g/m;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 76
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->d(Ljava/lang/String;)V

    .line 77
    const-string v5, "cp_uid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->a(Ljava/lang/String;)V

    .line 78
    const-string v5, "id_verify_show"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Z)V

    .line 79
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v5

    const-string v6, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/m$a;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_2

    .line 84
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/m$a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 89
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    .line 90
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/m$1;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 91
    throw v5
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/m$1;->a(Ljava/lang/String;)V

    return-void
.end method
