.class public Lcom/pyw/plugin/pyw/PYWChannel;
.super Lcom/pyw/plugin/PYWPlugin;
.source "PYWChannel.java"

# interfaces
.implements Lcom/pyw/b/a;


# instance fields
.field private context:Landroid/content/Context;

.field private gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private mOrderID:Ljava/lang/String;

.field private paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/pyw/plugin/PYWPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 164
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 165
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    move-object v0, p1

    .line 167
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/pyw/PYWChannel$2;

    invoke-direct {v1, p0, p1}, Lcom/pyw/plugin/pyw/PYWChannel$2;-><init>(Lcom/pyw/plugin/pyw/PYWChannel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v0, "pyw_channel"

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v0, "pyw"

    return-object v0
.end method

.method public getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 77
    return-void
.end method

.method public getVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public hideFloatView()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance(Landroid/app/Activity;)Lcom/pengyouwan/sdk/open/FloatViewTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/open/FloatViewTool;->hideFloatView()V

    .line 200
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 54
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 56
    invoke-static {p0}, Lcom/pyw/b/c;->a(Lcom/pyw/b/a;)V

    .line 57
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel;->initcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method

.method public login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 65
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    move-object v0, p1

    .line 67
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/pyw/PYWChannel$1;

    invoke-direct {v1, p0, p1}, Lcom/pyw/plugin/pyw/PYWChannel$1;-><init>(Lcom/pyw/plugin/pyw/PYWChannel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public logout(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 151
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 153
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    .line 154
    const v1, 0xa002

    .line 153
    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/d/h;->a(I)V

    .line 155
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 156
    invoke-virtual {p0}, Lcom/pyw/plugin/pyw/PYWChannel;->hideFloatView()V

    .line 158
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 320
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 316
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "eventCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    if-eqz p2, :cond_1

    .line 226
    const-string v6, "sdk_extra_user"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 225
    check-cast v3, Lcom/pengyouwan/sdk/open/User;

    .line 227
    .local v3, "user":Lcom/pengyouwan/sdk/open/User;
    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/open/User;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/open/User;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "userId":Ljava/lang/String;
    new-instance v5, Lcom/pyw/entity/UserParams;

    invoke-direct {v5}, Lcom/pyw/entity/UserParams;-><init>()V

    .line 231
    .local v5, "userParams":Lcom/pyw/entity/UserParams;
    invoke-virtual {v5, v4}, Lcom/pyw/entity/UserParams;->setSdkUserID(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v5, v2}, Lcom/pyw/entity/UserParams;->setToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/pyw/plugin/pyw/PYWChannel;->showFloatView()V

    .line 234
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-interface {v6, v5}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "user":Lcom/pengyouwan/sdk/open/User;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "userParams":Lcom/pyw/entity/UserParams;
    :cond_1
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 239
    const-string v7, "\u767b\u5f55\u5931\u8d25"

    .line 238
    invoke-interface {v6, v8, v7}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v6, "sdk_extra_erro"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "erroMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-interface {v6, v8, v0}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0    # "erroMsg":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Lcom/pyw/open/PayResult;

    invoke-direct {v1}, Lcom/pyw/open/PayResult;-><init>()V

    .line 251
    .local v1, "payResult":Lcom/pyw/open/PayResult;
    const-string v6, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v1, v6}, Lcom/pyw/open/PayResult;->setExtension(Ljava/lang/String;)V

    .line 253
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->mOrderID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/pyw/open/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 254
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/pyw/open/PayResult;->setPayResult(Z)V

    .line 255
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-interface {v6, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    .end local v1    # "payResult":Lcom/pyw/open/PayResult;
    :pswitch_3
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 259
    const-string v7, "\u5145\u503c\u5931\u8d25"

    .line 258
    invoke-interface {v6, v8, v7}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 263
    const-string v7, "\u5145\u503c\u53d6\u6d88"

    .line 262
    invoke-interface {v6, v8, v7}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_5
    invoke-virtual {p0}, Lcom/pyw/plugin/pyw/PYWChannel;->hideFloatView()V

    .line 267
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    if-eqz v6, :cond_2

    .line 268
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/pyw/plugin/PYWPluginExecutor$Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_2
    const-string v6, "\u8bf7\u68c0\u67e5\u767b\u51fa\u63a5\u53e3\u662f\u5426\u5bf9\u63a5\u6b63\u786e\uff01"

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_6
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    if-eqz v6, :cond_3

    .line 276
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance(Landroid/app/Activity;)Lcom/pengyouwan/sdk/open/FloatViewTool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/open/FloatViewTool;->destroyFloatView()V

    .line 277
    iget-object v6, p0, Lcom/pyw/plugin/pyw/PYWChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    :cond_3
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->d()V

    .line 281
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    const/4 v8, 0x0

    .line 81
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 82
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "productId"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "productId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "price"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "price":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "orderID"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/pyw/plugin/pyw/PYWChannel;->mOrderID:Ljava/lang/String;

    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "productName"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "productName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extension"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "extension":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chargeType"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "charge_type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 93
    .local v3, "intp":I
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 98
    iget-object v9, p0, Lcom/pyw/plugin/pyw/PYWChannel;->mOrderID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 99
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    :cond_0
    iget-object v9, p0, Lcom/pyw/plugin/pyw/PYWChannel;->paycallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 101
    const-string v10, "pay params error!!!"

    .line 100
    invoke-interface {v9, v8, v10}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 108
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v4, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "product_name"

    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v9, "pay_money"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v9, "order_id"

    iget-object v10, p0, Lcom/pyw/plugin/pyw/PYWChannel;->mOrderID:Ljava/lang/String;

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    if-eqz v2, :cond_2

    const-string v9, "{"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 119
    const-string v9, "}"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    const-string v9, "product_extra"

    invoke-interface {v4, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    const-string v9, "product_id"

    invoke-interface {v4, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "roleName"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 128
    const-string v9, "role_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "roleName"

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serverAreaName"

    invoke-virtual {p2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 133
    const-string v9, "service_area"

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serverAreaName"

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_4
    check-cast p1, Landroid/app/Activity;

    .line 139
    .end local p1    # "context":Landroid/content/Context;
    const-string v9, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 138
    :goto_0
    invoke-static {p1, v4, v8}, Lcom/pengyouwan/sdk/open/PYWPlatform;->openChargeCenter(Landroid/app/Activity;Ljava/util/Map;Z)V

    .line 141
    .end local v4    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 94
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "\u8f93\u5165\u91d1\u989d\u6709\u8bef"

    invoke-static {p1, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 139
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v4    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/pyw/plugin/pyw/PYWChannel;->sdklogoutcallback:Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .line 179
    return-void
.end method

.method public setExitGame(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Ljava/util/HashMap;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 145
    iput-object p3, p0, Lcom/pyw/plugin/pyw/PYWChannel;->gameExitcallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 146
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    .line 147
    return-void
.end method

.method public setLoginCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/pyw/plugin/pyw/PYWChannel;->logincallback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 184
    return-void
.end method

.method public showFloatView()V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/pengyouwan/sdk/open/PYWPlatform;->getCurrentUser()Lcom/pengyouwan/sdk/open/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance(Landroid/app/Activity;)Lcom/pengyouwan/sdk/open/FloatViewTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/open/FloatViewTool;->showFloatView()V

    .line 193
    :cond_0
    return-void
.end method
