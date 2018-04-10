.class public Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;
.super Ljava/lang/Object;
.source "PYWPayExcuteCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private callback:Lcom/pyw/open/IPayListener;


# direct methods
.method protected constructor <init>(Lcom/pyw/open/IPayListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    .line 20
    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    const/16 v1, 0x14

    invoke-interface {v0, v1, p2}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p1, Lcom/pyw/open/PayResult;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    check-cast p1, Lcom/pyw/open/PayResult;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/pyw/open/IPayListener;->onPaySuccess(Lcom/pyw/open/PayResult;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;->callback:Lcom/pyw/open/IPayListener;

    const/16 v1, 0x14

    const-string v2, "pay callback params error!"

    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    goto :goto_0
.end method
