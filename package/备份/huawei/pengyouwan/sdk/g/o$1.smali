.class Lcom/pengyouwan/sdk/g/o$1;
.super Ljava/lang/Object;
.source "GetSmsCodeTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/o;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/o;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v4, "ack"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "ack":I
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    .line 63
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    .local v1, "data":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o$a;->a(Z)V

    .line 65
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v4

    const-string v5, "is_reg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o$a;->a(I)V

    .line 66
    const-string v4, "passport"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v4

    const-string v5, "passport"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    iget-object v5, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 78
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 70
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "ack":I
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v4}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v4

    const-string v5, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o$a;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    iget-object v4, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    iget-object v5, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v5}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_1

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 76
    iget-object v5, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    iget-object v6, p0, Lcom/pengyouwan/sdk/g/o$1;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/g/o;)Lcom/pengyouwan/sdk/g/o$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/g/o;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 77
    throw v4
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/o$1;->a(Ljava/lang/String;)V

    return-void
.end method
