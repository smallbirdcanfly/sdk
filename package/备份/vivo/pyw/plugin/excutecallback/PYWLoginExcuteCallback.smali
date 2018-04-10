.class public Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;
.super Ljava/lang/Object;
.source "PYWLoginExcuteCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private callback:Lcom/pyw/open/IUserListener;

.field private mManager:Lcom/pyw/b/b;


# direct methods
.method protected constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IUserListener;)V
    .locals 0
    .param p1, "m"    # Lcom/pyw/b/b;
    .param p2, "callback"    # Lcom/pyw/open/IUserListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->mManager:Lcom/pyw/b/b;

    .line 21
    iput-object p2, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->callback:Lcom/pyw/open/IUserListener;

    .line 22
    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->callback:Lcom/pyw/open/IUserListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->callback:Lcom/pyw/open/IUserListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    instance-of v2, p1, Lcom/pyw/entity/UserParams;

    if-eqz v2, :cond_0

    .line 28
    new-instance v0, Lcom/pyw/open/PYWUser;

    invoke-direct {v0}, Lcom/pyw/open/PYWUser;-><init>()V

    .local v0, "user":Lcom/pyw/open/PYWUser;
    move-object v1, p1

    .line 29
    check-cast v1, Lcom/pyw/entity/UserParams;

    .line 32
    .local v1, "userParams":Lcom/pyw/entity/UserParams;
    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getSdkUserID()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/pyw/open/PYWUser;->setUserId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/open/PYWUser;->setToken(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->r()V

    .line 35
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->callback:Lcom/pyw/open/IUserListener;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;->callback:Lcom/pyw/open/IUserListener;

    invoke-interface {v2, v0}, Lcom/pyw/open/IUserListener;->onLoginSuccess(Lcom/pyw/open/PYWUser;)V

    .line 39
    .end local v0    # "user":Lcom/pyw/open/PYWUser;
    .end local v1    # "userParams":Lcom/pyw/entity/UserParams;
    :cond_0
    return-void
.end method
