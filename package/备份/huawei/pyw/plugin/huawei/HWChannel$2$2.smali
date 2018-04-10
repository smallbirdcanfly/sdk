.class Lcom/pyw/plugin/huawei/HWChannel$2$2;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel$2;->onChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pyw/plugin/huawei/HWChannel$2;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$2$2;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2$2;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel$2;->access$0(Lcom/pyw/plugin/huawei/HWChannel$2;)Lcom/pyw/plugin/huawei/HWChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel;->access$3(Lcom/pyw/plugin/huawei/HWChannel;)Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2$2;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel$2;->access$0(Lcom/pyw/plugin/huawei/HWChannel$2;)Lcom/pyw/plugin/huawei/HWChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel;->access$3(Lcom/pyw/plugin/huawei/HWChannel;)Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$Callback;->onCallback(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method
