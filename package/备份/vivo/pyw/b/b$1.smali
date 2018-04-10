.class Lcom/pyw/b/b$1;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
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
.field final synthetic a:Lcom/pyw/b/b;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Lcom/pyw/open/IPayListener;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Ljava/util/HashMap;Lcom/pyw/open/IPayListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$1;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$1;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 19
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 379
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v8, "jobj":Lorg/json/JSONObject;
    const-string v12, "ack"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 381
    .local v2, "ack":I
    const-string v12, "msg"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, "msg":Ljava/lang/String;
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_2

    .line 384
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 385
    .local v6, "data":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 388
    const-string v12, "channel_prod_id"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "channelProdID":Ljava/lang/String;
    const-string v12, "channel_order_info"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "channelOrderInfo":Ljava/lang/String;
    const-string v12, "order_price"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "OrderPrice":Ljava/lang/String;
    const-string v12, "channel_order_sn"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "channelOrderSN":Ljava/lang/String;
    invoke-static {}, Lcom/pyw/b/b;->t()Ljava/util/HashMap;

    move-result-object v12

    const-string v13, "channel_order_sn"

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->b:Ljava/util/HashMap;

    const-string v13, "channel_order_sn"

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v12, "channel_id"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "payChannelId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->a:Lcom/pyw/b/b;

    invoke-virtual {v12, v10}, Lcom/pyw/b/b;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->a:Lcom/pyw/b/b;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pyw/b/b$1;->b:Ljava/util/HashMap;

    invoke-static {v12, v13, v14}, Lcom/pyw/b/b;->a(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V

    .line 442
    .end local v1    # "OrderPrice":Ljava/lang/String;
    .end local v2    # "ack":I
    .end local v3    # "channelOrderInfo":Ljava/lang/String;
    .end local v4    # "channelOrderSN":Ljava/lang/String;
    .end local v5    # "channelProdID":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "jobj":Lorg/json/JSONObject;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "payChannelId":Ljava/lang/String;
    :goto_0
    return-void

    .line 408
    .restart local v1    # "OrderPrice":Ljava/lang/String;
    .restart local v2    # "ack":I
    .restart local v3    # "channelOrderInfo":Ljava/lang/String;
    .restart local v4    # "channelOrderSN":Ljava/lang/String;
    .restart local v5    # "channelProdID":Ljava/lang/String;
    .restart local v6    # "data":Lorg/json/JSONObject;
    .restart local v8    # "jobj":Lorg/json/JSONObject;
    .restart local v9    # "msg":Ljava/lang/String;
    .restart local v10    # "payChannelId":Ljava/lang/String;
    :cond_0
    invoke-static {v6}, Lcom/pyw/a/b;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v11

    .line 409
    .local v11, "payData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "channel_plugin"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->b:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 415
    invoke-static {}, Lcom/pyw/b/b;->u()Landroid/content/Context;

    move-result-object v12

    .line 416
    invoke-static {}, Lcom/pyw/b/b;->v()Lcom/pyw/plugin/PYWPlugin;

    move-result-object v13

    .line 417
    const-string v14, "pay"

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pyw/b/b$1;->b:Ljava/util/HashMap;

    .line 419
    invoke-static {}, Lcom/pyw/b/b;->w()Lcom/pyw/plugin/excutecallback/CallbackCreator;

    move-result-object v16

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pyw/b/b$1;->a:Lcom/pyw/b/b;

    move-object/from16 v17, v0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    move-object/from16 v18, v0

    .line 419
    invoke-virtual/range {v16 .. v18}, Lcom/pyw/plugin/excutecallback/CallbackCreator;->createOtherPayCallback(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v16

    .line 414
    invoke-static/range {v12 .. v16}, Lcom/pyw/plugin/PYWPluginExecutor;->execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v1    # "OrderPrice":Ljava/lang/String;
    .end local v2    # "ack":I
    .end local v3    # "channelOrderInfo":Ljava/lang/String;
    .end local v4    # "channelOrderSN":Ljava/lang/String;
    .end local v5    # "channelProdID":Ljava/lang/String;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "jobj":Lorg/json/JSONObject;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "payChannelId":Ljava/lang/String;
    .end local v11    # "payData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v7

    .line 437
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    .line 438
    const/16 v13, 0x15

    .line 439
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "pay failed,response params analytic error. e: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 439
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 437
    invoke-interface {v12, v13, v14}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "ack":I
    .restart local v6    # "data":Lorg/json/JSONObject;
    .restart local v8    # "jobj":Lorg/json/JSONObject;
    .restart local v9    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    .line 426
    const/16 v13, 0x14

    .line 427
    const-string v14, "pay failed,response data is null"

    .line 425
    invoke-interface {v12, v13, v14}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v6    # "data":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pyw/b/b$1;->c:Lcom/pyw/open/IPayListener;

    .line 432
    const/16 v13, 0x16

    .line 433
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "pay failed,net error,code is: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " msg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 433
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 431
    invoke-interface {v12, v13, v14}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/b/b$1;->a(Ljava/lang/String;)V

    return-void
.end method
