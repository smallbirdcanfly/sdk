.class public Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;
.super Ljava/lang/Object;
.source "OtherChannelPayCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private callback:Lcom/pyw/open/IPayListener;

.field private mManager:Lcom/pyw/b/b;


# direct methods
.method protected constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/pyw/b/b;
    .param p2, "c"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->mManager:Lcom/pyw/b/b;

    .line 34
    iput-object p2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    return-object v0
.end method

.method private getNetListener(ILcom/pyw/open/PayResult;)Lcom/pengyouwan/framework/volley/p$b;
    .locals 1
    .param p1, "mode"    # I
    .param p2, "payResult"    # Lcom/pyw/open/PayResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/pyw/open/PayResult;",
            ")",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;-><init>(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;ILcom/pyw/open/PayResult;)V

    return-object v0
.end method

.method private getParams(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v0, "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->n()Ljava/util/HashMap;

    move-result-object v1

    .line 117
    .local v1, "sPayParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "gameid"

    const-string v2, "gameid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "gamekey"

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v3}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "cp_uid"

    const-string v2, "cp_uid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "channel_order_sn"

    const-string v2, "channel_order_sn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "pfkey"

    const-string v2, "pfkey"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "pf"

    const-string v2, "pf"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "pay_token"

    const-string v2, "pay_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "channel_token"

    const-string v2, "channel_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "account"

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "channel_uid"

    const-string v2, "channel_uid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    instance-of v5, p1, Lcom/pyw/entity/PluginPayResult;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 41
    check-cast v4, Lcom/pyw/entity/PluginPayResult;

    .line 42
    .local v4, "result":Lcom/pyw/entity/PluginPayResult;
    invoke-virtual {v4}, Lcom/pyw/entity/PluginPayResult;->getPayResult()Lcom/pyw/open/PayResult;

    move-result-object v3

    .line 43
    .local v3, "payResult":Lcom/pyw/open/PayResult;
    invoke-virtual {v4}, Lcom/pyw/entity/PluginPayResult;->getResultMode()S

    move-result v1

    .line 44
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 65
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    invoke-interface {v5, v3}, Lcom/pyw/open/IPayListener;->onPaySuccess(Lcom/pyw/open/PayResult;)V

    .line 80
    .end local v1    # "mode":I
    .end local v3    # "payResult":Lcom/pyw/open/PayResult;
    .end local v4    # "result":Lcom/pyw/entity/PluginPayResult;
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v1    # "mode":I
    .restart local v3    # "payResult":Lcom/pyw/open/PayResult;
    .restart local v4    # "result":Lcom/pyw/entity/PluginPayResult;
    .restart local p1    # "obj":Ljava/lang/Object;
    :pswitch_0
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v5}, Lcom/pyw/b/b;->m()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "channel_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "channelId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->getParams(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 50
    .local v2, "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v5

    sget-object v6, Lcom/pyw/a/a;->d:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->getNetListener(ILcom/pyw/open/PayResult;)Lcom/pengyouwan/framework/volley/p$b;

    move-result-object v7

    .line 51
    new-instance v8, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;

    invoke-direct {v8, p0}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;-><init>(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)V

    .line 50
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    goto :goto_0

    .line 70
    .end local v0    # "channelId":Ljava/lang/String;
    .end local v1    # "mode":I
    .end local v2    # "payParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "payResult":Lcom/pyw/open/PayResult;
    .end local v4    # "result":Lcom/pyw/entity/PluginPayResult;
    :cond_1
    instance-of v5, p1, Lcom/pyw/open/PayResult;

    if-eqz v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v5, :cond_0

    .line 72
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    check-cast p1, Lcom/pyw/open/PayResult;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v5, p1}, Lcom/pyw/open/IPayListener;->onPaySuccess(Lcom/pyw/open/PayResult;)V

    goto :goto_0

    .line 75
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->callback:Lcom/pyw/open/IPayListener;

    const/16 v6, 0x14

    const-string v7, "pay callback params error!"

    invoke-interface {v5, v6, v7}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
