.class Lcom/pyw/plugin/huawei/HWChannel$4;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->doFailedCallback(ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/huawei/HWChannel;

.field private final synthetic val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private final synthetic val$code:I

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    iput-object p2, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    iput p3, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$code:I

    iput-object p4, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$msg:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    iget v1, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$code:I

    iget-object v2, p0, Lcom/pyw/plugin/huawei/HWChannel$4;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 170
    return-void
.end method
