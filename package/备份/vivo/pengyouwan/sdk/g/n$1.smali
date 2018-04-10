.class Lcom/pengyouwan/sdk/g/n$1;
.super Ljava/lang/Object;
.source "GetAccountListTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/n;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/n;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/n;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 55
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v5, "jobj":Lorg/json/JSONObject;
    const-string v9, "ack"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "ack":I
    const/16 v9, 0xc8

    if-ne v1, v9, :cond_4

    .line 58
    const-string v9, "data"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 59
    .local v2, "array":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v7, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/a;>;"
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 61
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_0

    .line 71
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/pengyouwan/sdk/g/n$a;->a(Ljava/util/List;)V

    .line 72
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/a;>;"
    :goto_1
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 84
    .end local v1    # "ack":I
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 62
    .restart local v1    # "ack":I
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v6    # "length":I
    .restart local v7    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/a;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 63
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/pengyouwan/sdk/entity/a;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/a;-><init>()V

    .line 64
    .local v0, "account":Lcom/pengyouwan/sdk/entity/a;
    const-string v9, "account"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/pengyouwan/sdk/entity/a;->a(Ljava/lang/String;)V

    .line 65
    const-string v9, "is_new"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v10

    :goto_3
    invoke-virtual {v0, v9}, Lcom/pengyouwan/sdk/entity/a;->a(I)V

    .line 66
    const-string v9, "is_freeze"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 67
    const-string v9, "is_freeze"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_4
    invoke-virtual {v0, v9}, Lcom/pengyouwan/sdk/entity/a;->b(I)V

    .line 69
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v9, v11

    .line 65
    goto :goto_3

    :cond_3
    move v9, v11

    .line 67
    goto :goto_4

    .line 74
    .end local v0    # "account":Lcom/pengyouwan/sdk/entity/a;
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/a;>;"
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_4
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n$a;->a(Ljava/lang/String;)V

    .line 75
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n$a;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    .end local v1    # "ack":I
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v9

    const-string v10, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n$a;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_2

    .line 80
    .end local v3    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v9

    .line 81
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/n$1;->a:Lcom/pengyouwan/sdk/g/n;

    invoke-static {v11}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/g/n;)Lcom/pengyouwan/sdk/g/n$a;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/n;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 82
    throw v9
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/n$1;->a(Ljava/lang/String;)V

    return-void
.end method
