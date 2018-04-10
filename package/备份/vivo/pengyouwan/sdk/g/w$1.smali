.class Lcom/pengyouwan/sdk/g/w$1;
.super Ljava/lang/Object;
.source "SecondInitTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/w;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/w;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/w;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v6, "ack"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "ack":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_1

    .line 60
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w$a;->a(Z)V

    .line 61
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 64
    const-string v6, "pay_type_order"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "payment":Ljava/lang/String;
    const-string v6, "pay_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "wxUrl":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/pengyouwan/sdk/open/SDKConfig;->setPayment(Ljava/lang/String;)V

    .line 67
    invoke-static {v5}, Lcom/pengyouwan/sdk/d/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "payment":Ljava/lang/String;
    .end local v5    # "wxUrl":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 83
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 70
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v6

    const-string v7, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w$a;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_1

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w$a;->a(Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/w$a;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    .line 80
    iget-object v7, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/w$1;->a:Lcom/pengyouwan/sdk/g/w;

    invoke-static {v8}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/g/w;)Lcom/pengyouwan/sdk/g/w$a;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pengyouwan/sdk/g/w;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 81
    throw v6
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/w$1;->a(Ljava/lang/String;)V

    return-void
.end method
