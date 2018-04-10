.class Lcom/pengyouwan/sdk/g/g$1;
.super Ljava/lang/Object;
.source "CheckSmsAndBindTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/g;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v5, "ack"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "ack":I
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_1

    .line 63
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    .local v2, "data":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(I)V

    .line 68
    :cond_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(Ljava/lang/String;)V

    .line 69
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "data":Lorg/json/JSONObject;
    :goto_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 81
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 71
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v5

    const-string v6, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g$a;->a(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_1

    .line 77
    .end local v3    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    .line 78
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/g$1;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/g/g;)Lcom/pengyouwan/sdk/g/g$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/g;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 79
    throw v5
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/g$1;->a(Ljava/lang/String;)V

    return-void
.end method
