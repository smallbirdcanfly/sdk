.class Lcom/pyw/plugin/huawei/HWChannel$5;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Lcom/huawei/android/hms/agent/game/handler/SaveInfoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
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
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$5;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3
    .param p1, "retCode"    # I

    .prologue
    .line 196
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u534e\u4e3a\u4e0a\u4f20\u6e38\u620f\u89d2\u8272\u4fe1\u606f\u56de\u8c03 \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method
