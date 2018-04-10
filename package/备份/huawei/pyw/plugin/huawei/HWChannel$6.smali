.class Lcom/pyw/plugin/huawei/HWChannel$6;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->logout(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/huawei/HWChannel;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$6;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$6;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel;->access$4(Lcom/pyw/plugin/huawei/HWChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 208
    return-void
.end method
