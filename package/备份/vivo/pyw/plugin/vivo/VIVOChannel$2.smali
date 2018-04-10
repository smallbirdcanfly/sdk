.class Lcom/pyw/plugin/vivo/VIVOChannel$2;
.super Ljava/lang/Object;
.source "VIVOChannel.java"

# interfaces
.implements Lcom/vivo/unionsdk/open/VivoExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/vivo/VIVOChannel;->gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
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
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$2;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitCancel()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onExitConfirm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$2;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$3(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V

    .line 150
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->d()V

    .line 151
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 152
    return-void
.end method
