.class public Lcom/pyw/plugin/PYWPluginExecutor;
.super Ljava/lang/Object;
.source "PYWPluginExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pyw/plugin/PYWPluginExecutor$Callback;,
        Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final execute(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lcom/pyw/plugin/PYWPlugin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/HashMap;
    .param p4, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    if-eqz p0, :cond_2

    .line 67
    invoke-static {p0}, Lcom/pyw/plugin/PYWPluginManager;->load(Landroid/content/Context;)V

    .line 78
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    if-eqz p4, :cond_1

    .line 80
    const/4 v1, 0x2

    .line 81
    const-string v2, "miss plugin action!"

    .line 80
    invoke-interface {p4, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :cond_2
    if-eqz p4, :cond_1

    .line 71
    const/4 v1, 0x1

    .line 72
    const-string v2, "plugin manager not ready!"

    .line 70
    invoke-interface {p4, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    if-nez p1, :cond_4

    .line 88
    if-eqz p4, :cond_1

    .line 89
    const/4 v1, 0x3

    .line 90
    const-string v2, "plugin not found!"

    .line 89
    invoke-interface {p4, v1, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/pyw/plugin/PYWPlugin;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final setCallback(Landroid/content/Context;Lcom/pyw/plugin/PYWPlugin;Ljava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lcom/pyw/plugin/PYWPlugin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 113
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/pyw/plugin/PYWPluginManager;->load(Landroid/content/Context;)V

    .line 119
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :cond_1
    if-nez p1, :cond_2

    .line 125
    const-string v0, "setCallback"

    const-string v1, "plugin not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lcom/pyw/plugin/PYWPlugin;->setCallback(Landroid/content/Context;Ljava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
