.class Lcom/pyw/plugin/vivo/VIVOChannel$1;
.super Ljava/lang/Object;
.source "VIVOChannel.java"

# interfaces
.implements Lcom/vivo/unionsdk/open/VivoPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pyw/plugin/vivo/VIVOChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/vivo/VIVOChannel;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/vivo/VIVOChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/vivo/VIVOChannel$1;)Lcom/pyw/plugin/vivo/VIVOChannel;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    return-object v0
.end method


# virtual methods
.method public onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 303
    if-eqz p2, :cond_0

    .line 304
    new-instance v0, Lcom/pyw/open/PayResult;

    invoke-direct {v0}, Lcom/pyw/open/PayResult;-><init>()V

    .line 305
    .local v0, "payResult":Lcom/pyw/open/PayResult;
    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v2}, Lcom/pyw/open/PayResult;->setExtension(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v2}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$0(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/open/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v3}, Lcom/pyw/open/PayResult;->setPayResult(Z)V

    .line 308
    new-instance v1, Lcom/pyw/entity/PluginPayResult;

    invoke-direct {v1}, Lcom/pyw/entity/PluginPayResult;-><init>()V

    .line 309
    .local v1, "pluginPayResult":Lcom/pyw/entity/PluginPayResult;
    invoke-virtual {v1, v3}, Lcom/pyw/entity/PluginPayResult;->setResultMode(S)V

    .line 310
    invoke-virtual {v1, v0}, Lcom/pyw/entity/PluginPayResult;->setPayResult(Lcom/pyw/open/PayResult;)V

    .line 311
    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v2}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$1(Lcom/pyw/plugin/vivo/VIVOChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;

    invoke-direct {v3, p0, v1}, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;-><init>(Lcom/pyw/plugin/vivo/VIVOChannel$1;Lcom/pyw/entity/PluginPayResult;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    .end local v0    # "payResult":Lcom/pyw/open/PayResult;
    .end local v1    # "pluginPayResult":Lcom/pyw/entity/PluginPayResult;
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v2}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$2(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v4}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$0(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0
.end method
