.class Lcom/pyw/plugin/huawei/HWChannel$7;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Lcom/huawei/android/hms/agent/pay/handler/PayHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->pay(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
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
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/huawei/hms/support/api/pay/PayResultInfo;)V
    .locals 8
    .param p1, "retCode"    # I
    .param p2, "checkPayResult"    # Lcom/huawei/hms/support/api/pay/PayResultInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 336
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnbdaymFE2/QQ1OQJm0MYWGgh9MQ03yVFAYgy+gg7vqRbg32M+mvxenADRwhjJCviJwWTYxx1wlVLvSGRf/uiZk70YO3vxrrVHp7gk0DCxrA8VcYbAwQwXdpOdDZRc7OzozCteV8yL16IGqr8aLbjT7MPThDMdCzqgunCp00yougAjhRk14Iun3vCUSm9rNVQm3n2StEbkxk9kdLPb2Cetr6LSJN0j3yZAidk/Y4oruK7EF/STE8qRG0pni3X+oZau0G8tTS64Hx4lDHt81D+70voNNVMDz31uAKk+SH5oty0fyeyHf+in7QHuBursePmx8qnyD2sxk2he+epi7bBJwIDAQAB"

    .line 335
    invoke-static {p2, v3}, Lcom/huawei/android/hms/agent/pay/PaySignUtil;->checkSign(Lcom/huawei/hms/support/api/pay/PayResultInfo;Ljava/lang/String;)Z

    move-result v0

    .line 342
    .local v0, "checkRst":Z
    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Lcom/pyw/open/PayResult;

    invoke-direct {v1}, Lcom/pyw/open/PayResult;-><init>()V

    .line 344
    .local v1, "p":Lcom/pyw/open/PayResult;
    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v1, v3}, Lcom/pyw/open/PayResult;->setExtension(Ljava/lang/String;)V

    .line 345
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    invoke-static {v3}, Lcom/pyw/plugin/huawei/HWChannel;->access$5(Lcom/pyw/plugin/huawei/HWChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/pyw/open/PayResult;->setOrderID(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v6}, Lcom/pyw/open/PayResult;->setPayResult(Z)V

    .line 347
    new-instance v2, Lcom/pyw/entity/PluginPayResult;

    invoke-direct {v2}, Lcom/pyw/entity/PluginPayResult;-><init>()V

    .line 349
    .local v2, "pluginPayResult":Lcom/pyw/entity/PluginPayResult;
    invoke-virtual {v2, v6}, Lcom/pyw/entity/PluginPayResult;->setResultMode(S)V

    .line 350
    invoke-virtual {v2, v1}, Lcom/pyw/entity/PluginPayResult;->setPayResult(Lcom/pyw/open/PayResult;)V

    .line 351
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    const-string v4, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v3, v6, v4, v2}, Lcom/pyw/plugin/huawei/HWChannel;->access$6(Lcom/pyw/plugin/huawei/HWChannel;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 363
    .end local v0    # "checkRst":Z
    .end local v1    # "p":Lcom/pyw/open/PayResult;
    .end local v2    # "pluginPayResult":Lcom/pyw/entity/PluginPayResult;
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/16 v3, 0x753c

    if-eq p1, v3, :cond_2

    .line 354
    const/16 v3, 0x753d

    if-eq p1, v3, :cond_2

    .line 355
    const/16 v3, 0x7532

    if-ne p1, v3, :cond_3

    .line 356
    :cond_2
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    const-string v4, "\u652f\u4ed8\u7ed3\u679c\u9a8c\u7b7e\u5931\u8d25"

    invoke-static {v3, v5, v4, v7}, Lcom/pyw/plugin/huawei/HWChannel;->access$6(Lcom/pyw/plugin/huawei/HWChannel;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_3
    const/16 v3, 0x7535

    if-ne p1, v3, :cond_4

    .line 358
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v3, v5, v4, v7}, Lcom/pyw/plugin/huawei/HWChannel;->access$6(Lcom/pyw/plugin/huawei/HWChannel;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_4
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$7;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    const-string v4, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v3, v5, v4, v7}, Lcom/pyw/plugin/huawei/HWChannel;->access$6(Lcom/pyw/plugin/huawei/HWChannel;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
