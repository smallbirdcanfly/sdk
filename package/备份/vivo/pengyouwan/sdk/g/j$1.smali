.class Lcom/pengyouwan/sdk/g/j$1;
.super Ljava/lang/Object;
.source "CreateOrderTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/j;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/j;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v9, "ack"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "ack":I
    const/16 v9, 0xc8

    if-ne v0, v9, :cond_4

    .line 107
    const-string v9, "msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .local v1, "b":Z
    if-eqz v1, :cond_3

    .line 109
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->b(Ljava/lang/String;)V

    .line 110
    const-string v6, ""

    .line 111
    .local v6, "order":Ljava/lang/String;
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->b(Lcom/pengyouwan/sdk/g/j;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 112
    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "orderInfo":Ljava/lang/String;
    const-string v9, "out_trade_no=\""

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v8, v9, 0xe

    .line 114
    .local v8, "startIndex":I
    const-string v9, "\"&"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 115
    .local v3, "endIndex":I
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 124
    .end local v3    # "endIndex":I
    .end local v7    # "orderInfo":Ljava/lang/String;
    .end local v8    # "startIndex":I
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->c(Lcom/pengyouwan/sdk/g/j;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "out_trade_no"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/j;->c(Lcom/pengyouwan/sdk/g/j;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->a(Lorg/json/JSONObject;)V

    .line 126
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/pengyouwan/sdk/g/j$a;->a(Ljava/lang/String;)V

    .line 130
    .end local v6    # "order":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v1    # "b":Z
    :goto_2
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 145
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 117
    .restart local v0    # "ack":I
    .restart local v1    # "b":Z
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    .restart local v6    # "order":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 118
    .local v5, "obj":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->b(Lcom/pengyouwan/sdk/g/j;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 119
    const-string v9, "order_sn"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->b(Lcom/pengyouwan/sdk/g/j;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "7"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 121
    const-string v9, "orderNum"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 128
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "order":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const-string v10, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v0    # "ack":I
    .end local v1    # "b":Z
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const-string v10, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->b(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    iget-object v10, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_3

    .line 131
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_4
    const/16 v9, 0x3f7

    if-ne v0, v9, :cond_5

    .line 132
    :try_start_3
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->b(Z)V

    .line 133
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->a(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 141
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v9

    .line 142
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v11}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 143
    throw v9

    .line 135
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_5
    :try_start_4
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->b(Ljava/lang/String;)V

    .line 136
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j$1;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-static {v9}, Lcom/pengyouwan/sdk/g/j;->a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/g/j$a;->a(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/j$1;->a(Ljava/lang/String;)V

    return-void
.end method
