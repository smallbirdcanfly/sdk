.class public Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;
.super Ljava/lang/Object;
.source "LogoutExecuteCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private listener:Lcom/pyw/open/ILogoutListener;


# direct methods
.method protected constructor <init>(Lcom/pyw/open/ILogoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/pyw/open/ILogoutListener;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    .line 18
    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    invoke-interface {v0, p1}, Lcom/pyw/open/ILogoutListener;->fail(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 26
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 27
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    invoke-interface {v1}, Lcom/pyw/open/ILogoutListener;->success()V

    .line 35
    .end local v0    # "code":I
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v0    # "code":I
    :cond_1
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;->listener:Lcom/pyw/open/ILogoutListener;

    invoke-interface {v1, v0}, Lcom/pyw/open/ILogoutListener;->fail(I)V

    goto :goto_0
.end method
