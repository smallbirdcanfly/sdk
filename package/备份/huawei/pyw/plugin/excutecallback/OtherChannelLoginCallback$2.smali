.class Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;
.super Ljava/lang/Object;
.source "OtherChannelLoginCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->getNetworkSuccessListener(Lcom/pyw/entity/UserParams;)Lcom/pengyouwan/framework/volley/p$b;
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
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

.field private final synthetic val$userData:Lcom/pyw/entity/UserParams;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;Lcom/pyw/entity/UserParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    iput-object p2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->val$userData:Lcom/pyw/entity/UserParams;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v5, "ack"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "ack":I
    const-string v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "msg":Ljava/lang/String;
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_2

    .line 120
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 121
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 122
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    iget-object v6, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->val$userData:Lcom/pyw/entity/UserParams;

    invoke-static {v5, v6, v1}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$2(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;Lcom/pyw/entity/UserParams;Lorg/json/JSONObject;)V

    .line 152
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    .line 127
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    .line 129
    const/16 v6, 0x14

    .line 130
    const-string v7, "login failed,response data is null"

    .line 128
    invoke-interface {v5, v6, v7}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    .line 146
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    const/16 v6, 0x15

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "login failed,response params analytic error.e: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-interface {v5, v6, v7}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ack":I
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    .line 137
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 138
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v5}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v5

    const/16 v6, 0x16

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "login failed,net error,code is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 140
    const-string v8, " msg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-interface {v5, v6, v7}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
