.class Lcom/pyw/plugin/oppo/OPPOPlugin$2;
.super Ljava/lang/Object;
.source "OPPOPlugin.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOPlugin;->login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
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
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$2;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 92
    const-string v0, "px"

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$2;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-static {v0}, Lcom/pyw/plugin/oppo/OPPOPlugin;->access$0(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u9646\u5931\u8d25 :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u6210\u529f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$2;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-virtual {v0}, Lcom/pyw/plugin/oppo/OPPOPlugin;->getTokenAndSsoid()V

    .line 88
    return-void
.end method
