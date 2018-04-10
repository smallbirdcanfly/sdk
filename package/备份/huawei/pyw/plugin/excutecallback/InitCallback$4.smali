.class Lcom/pyw/plugin/excutecallback/InitCallback$4;
.super Ljava/lang/Object;
.source "InitCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/InitCallback;->getNetworkListener()Lcom/pengyouwan/framework/volley/p$b;
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
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/InitCallback;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/excutecallback/InitCallback$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    if-nez v8, :cond_0

    .line 221
    :goto_0
    return-void

    .line 120
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "jobj":Lorg/json/JSONObject;
    const-string v8, "ack"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "ack":I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_9

    .line 124
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/pyw/plugin/excutecallback/InitCallback$4$1;

    invoke-direct {v9, p0}, Lcom/pyw/plugin/excutecallback/InitCallback$4$1;-><init>(Lcom/pyw/plugin/excutecallback/InitCallback$4;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 149
    const-string v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 150
    .local v3, "data":Lorg/json/JSONObject;
    if-eqz v3, :cond_8

    .line 152
    const-string v8, "setup_file"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    const-string v8, "setup_file"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/sdk/d/f;->c(Ljava/lang/String;)V

    .line 156
    :cond_1
    const-string v8, "gameid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "gameId":Ljava/lang/String;
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/pyw/b/b;->a(Ljava/lang/String;)V

    .line 158
    const-string v8, "channel_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "channelId":Ljava/lang/String;
    const-string v8, "apisecret"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "apiSecret":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 162
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pyw/b/b;->n()Ljava/util/HashMap;

    move-result-object v7

    .line 163
    .local v7, "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v7, :cond_2

    .line 164
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 165
    .restart local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "gameid"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;)V

    .line 168
    :cond_2
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/pyw/b/b;->b(Ljava/lang/String;)V

    .line 169
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/pyw/b/b;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pyw/b/b;->r()V

    .line 172
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 173
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/pyw/open/IDefListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v1    # "apiSecret":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v5    # "gameId":Ljava/lang/String;
    .end local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pyw/b/b;->k()V

    goto/16 :goto_0

    .line 177
    .restart local v1    # "apiSecret":Ljava/lang/String;
    .restart local v2    # "channelId":Ljava/lang/String;
    .restart local v3    # "data":Lorg/json/JSONObject;
    .restart local v5    # "gameId":Ljava/lang/String;
    .restart local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pyw/b/b;->q()Lcom/pyw/plugin/PYWPlugin;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 178
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/pengyouwan/sdk/d/b;->a(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/pengyouwan/sdk/d/b;->b(Ljava/lang/String;)V

    .line 180
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$3(Lcom/pyw/plugin/excutecallback/InitCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 211
    .end local v0    # "ack":I
    .end local v1    # "apiSecret":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v5    # "gameId":Ljava/lang/String;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .end local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 213
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/pyw/b/b;->d:Z

    .line 214
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    const/16 v9, 0x15

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "init failed,response params analytic error.e: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 214
    invoke-interface {v8, v9, v10}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_5
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pyw/b/b;->k()V

    goto/16 :goto_0

    .line 182
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":I
    .restart local v1    # "apiSecret":Ljava/lang/String;
    .restart local v2    # "channelId":Ljava/lang/String;
    .restart local v3    # "data":Lorg/json/JSONObject;
    .restart local v5    # "gameId":Ljava/lang/String;
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    .restart local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_3
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/pyw/b/b;->d:Z

    .line 184
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 185
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "can not find other plugin!"

    invoke-interface {v8, v9, v10}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 218
    .end local v0    # "ack":I
    .end local v1    # "apiSecret":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    .end local v3    # "data":Lorg/json/JSONObject;
    .end local v5    # "gameId":Ljava/lang/String;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .end local v7    # "spayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    .line 219
    iget-object v9, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v9}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pyw/b/b;->k()V

    .line 220
    throw v8

    .line 190
    .restart local v0    # "ack":I
    .restart local v1    # "apiSecret":Ljava/lang/String;
    .restart local v2    # "channelId":Ljava/lang/String;
    .restart local v3    # "data":Lorg/json/JSONObject;
    .restart local v5    # "gameId":Ljava/lang/String;
    .restart local v6    # "jobj":Lorg/json/JSONObject;
    :cond_7
    :try_start_4
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 191
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/pyw/b/b;->d:Z

    .line 193
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    const/16 v9, 0x15

    .line 194
    const-string v10, "init failed,response params analytic error"

    .line 193
    invoke-interface {v8, v9, v10}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 198
    .end local v1    # "apiSecret":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    .end local v5    # "gameId":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 199
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/pyw/b/b;->d:Z

    .line 201
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    const/16 v9, 0x14

    const-string v10, "init failed,response data is null"

    invoke-interface {v8, v9, v10}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 205
    .end local v3    # "data":Lorg/json/JSONObject;
    :cond_9
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 207
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "\u7f51\u7edc\u5f02\u5e38"

    invoke-interface {v8, v9, v10}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    .line 208
    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v8}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v8

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/pyw/b/b;->d:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method
