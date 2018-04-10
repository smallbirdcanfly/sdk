.class Lcom/pyw/plugin/vivo/VIVOChannel$1$1;
.super Ljava/lang/Object;
.source "VIVOChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/vivo/VIVOChannel$1;->onVivoPayResult(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pyw/plugin/vivo/VIVOChannel$1;

.field private final synthetic val$pluginPayResult:Lcom/pyw/entity/PluginPayResult;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/vivo/VIVOChannel$1;Lcom/pyw/entity/PluginPayResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;->this$1:Lcom/pyw/plugin/vivo/VIVOChannel$1;

    iput-object p2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;->val$pluginPayResult:Lcom/pyw/entity/PluginPayResult;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;->this$1:Lcom/pyw/plugin/vivo/VIVOChannel$1;

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel$1;->access$0(Lcom/pyw/plugin/vivo/VIVOChannel$1;)Lcom/pyw/plugin/vivo/VIVOChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$2(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$1$1;->val$pluginPayResult:Lcom/pyw/entity/PluginPayResult;

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 316
    return-void
.end method
