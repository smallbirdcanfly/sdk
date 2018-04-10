.class public Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;
.super Ljava/lang/Object;
.source "GameExitExcuteCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private listener:Lcom/pyw/open/IGameExitListener;


# direct methods
.method protected constructor <init>(Lcom/pyw/open/IGameExitListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/pyw/open/IGameExitListener;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IGameExitListener;->onExitError(ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 20
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 21
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    invoke-interface {v1}, Lcom/pyw/open/IGameExitListener;->onExit()V

    .line 30
    .end local v0    # "code":I
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v0    # "code":I
    :cond_1
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;->listener:Lcom/pyw/open/IGameExitListener;

    invoke-interface {v1}, Lcom/pyw/open/IGameExitListener;->onCancel()V

    goto :goto_0
.end method
