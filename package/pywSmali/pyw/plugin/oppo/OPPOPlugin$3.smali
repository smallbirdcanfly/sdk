.class Lcom/pyw/plugin/oppo/OPPOPlugin$3;
.super Ljava/lang/Object;
.source "OPPOPlugin.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOPlugin;->pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$3;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$3;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-static {v0}, Lcom/pyw/plugin/oppo/OPPOPlugin;->access$2(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay error  ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 138
    new-instance v0, Lcom/pyw/open/PayResult;

    invoke-direct {v0}, Lcom/pyw/open/PayResult;-><init>()V

    .line 139
    .local v0, "payResult":Lcom/pyw/open/PayResult;
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v2}, Lcom/pyw/open/PayResult;->setExtension(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$3;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-static {v2}, Lcom/pyw/plugin/oppo/OPPOPlugin;->access$1(Lcom/pyw/plugin/oppo/OPPOPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/open/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v3}, Lcom/pyw/open/PayResult;->setPayResult(Z)V

    .line 142
    new-instance v1, Lcom/pyw/entity/PluginPayResult;

    invoke-direct {v1}, Lcom/pyw/entity/PluginPayResult;-><init>()V

    .line 143
    .local v1, "pluginPayResult":Lcom/pyw/entity/PluginPayResult;
    invoke-virtual {v1, v3}, Lcom/pyw/entity/PluginPayResult;->setResultMode(S)V

    .line 144
    invoke-virtual {v1, v0}, Lcom/pyw/entity/PluginPayResult;->setPayResult(Lcom/pyw/open/PayResult;)V

    .line 145
    iget-object v2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$3;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-static {v2}, Lcom/pyw/plugin/oppo/OPPOPlugin;->access$2(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
