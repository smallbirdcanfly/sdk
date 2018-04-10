.class Lcom/pyw/plugin/huawei/HWChannel$3;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->doSuccessCallback(Ljava/lang/Object;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/huawei/HWChannel;

.field private final synthetic val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$3;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    iput-object p2, p0, Lcom/pyw/plugin/huawei/HWChannel$3;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    iput-object p3, p0, Lcom/pyw/plugin/huawei/HWChannel$3;->val$o:Ljava/lang/Object;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$3;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    iget-object v1, p0, Lcom/pyw/plugin/huawei/HWChannel$3;->val$o:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 159
    return-void
.end method
