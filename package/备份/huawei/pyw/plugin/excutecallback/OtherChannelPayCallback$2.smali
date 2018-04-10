.class Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;
.super Ljava/lang/Object;
.source "OtherChannelPayCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->getNetListener(ILcom/pyw/open/PayResult;)Lcom/pengyouwan/framework/volley/p$b;
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
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

.field private final synthetic val$mode:I

.field private final synthetic val$payResult:Lcom/pyw/open/PayResult;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;ILcom/pyw/open/PayResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    iput p2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->val$mode:I

    iput-object p3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->val$payResult:Lcom/pyw/open/PayResult;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v4, 0x2

    iget v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->val$mode:I

    if-ne v4, v5, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "jobj":Lorg/json/JSONObject;
    const-string v4, "ack"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "ack":I
    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "msg":Ljava/lang/String;
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    .line 93
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->val$payResult:Lcom/pyw/open/PayResult;

    invoke-interface {v4, v5}, Lcom/pyw/open/IPayListener;->onPaySuccess(Lcom/pyw/open/PayResult;)V

    .line 110
    .end local v0    # "ack":I
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0    # "ack":I
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    const/16 v5, 0x16

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pay failed,net error,code is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0    # "ack":I
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v4}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v4

    const/16 v5, 0x15

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pay failed,response params analytic error. e: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-interface {v4, v5, v6}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0
.end method
