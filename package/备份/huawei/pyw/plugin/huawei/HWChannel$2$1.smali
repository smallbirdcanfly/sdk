.class Lcom/pyw/plugin/huawei/HWChannel$2$1;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Lcom/huawei/android/hms/agent/game/handler/ICheckLoginSignHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel$2;->onResult(ILcom/huawei/hms/support/api/entity/game/GameUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

.field private final synthetic val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private final synthetic val$pa:Lcom/pyw/entity/UserParams;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel$2;Lcom/pyw/entity/UserParams;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    iput-object p2, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->val$pa:Lcom/pyw/entity/UserParams;

    iput-object p3, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckResult(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "isCheckSuccess"    # Z

    .prologue
    .line 95
    if-eqz p3, :cond_0

    .line 96
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel$2;->access$0(Lcom/pyw/plugin/huawei/HWChannel$2;)Lcom/pyw/plugin/huawei/HWChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->val$pa:Lcom/pyw/entity/UserParams;

    iget-object v2, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-static {v0, v1, v2}, Lcom/pyw/plugin/huawei/HWChannel;->access$1(Lcom/pyw/plugin/huawei/HWChannel;Ljava/lang/Object;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->this$1:Lcom/pyw/plugin/huawei/HWChannel$2;

    invoke-static {v0}, Lcom/pyw/plugin/huawei/HWChannel$2;->access$0(Lcom/pyw/plugin/huawei/HWChannel$2;)Lcom/pyw/plugin/huawei/HWChannel;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    .line 100
    const-string v2, "login auth failed check game auth sign error"

    .line 101
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$2$1;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 98
    invoke-static {v0, v1, v2, v3}, Lcom/pyw/plugin/huawei/HWChannel;->access$2(Lcom/pyw/plugin/huawei/HWChannel;ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    .line 102
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u534e\u4e3a\u767b\u5f55 \u5931\u8d25\u4e0d\u7b49\u4e8e ts 1\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
