.class public Lcom/pyw/plugin/excutecallback/CallbackCreator;
.super Ljava/lang/Object;
.source "CallbackCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGameExitExcuteCallback(Lcom/pyw/open/IGameExitListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "listener"    # Lcom/pyw/open/IGameExitListener;

    .prologue
    .line 79
    new-instance v0, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;

    invoke-direct {v0, p1}, Lcom/pyw/plugin/excutecallback/GameExitExcuteCallback;-><init>(Lcom/pyw/open/IGameExitListener;)V

    return-object v0
.end method

.method public createInitCallback(Lcom/pyw/open/IDefListener;Lcom/pyw/b/b;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "lis"    # Lcom/pyw/open/IDefListener;
    .param p2, "manager"    # Lcom/pyw/b/b;

    .prologue
    .line 27
    new-instance v0, Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-direct {v0, p1, p2}, Lcom/pyw/plugin/excutecallback/InitCallback;-><init>(Lcom/pyw/open/IDefListener;Lcom/pyw/b/b;)V

    return-object v0
.end method

.method public createLogoutCallback(Lcom/pyw/open/ILogoutListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "listener"    # Lcom/pyw/open/ILogoutListener;

    .prologue
    .line 36
    new-instance v0, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;

    invoke-direct {v0, p1}, Lcom/pyw/plugin/excutecallback/LogoutExecuteCallback;-><init>(Lcom/pyw/open/ILogoutListener;)V

    return-object v0
.end method

.method public createOtherLoginCallback(Lcom/pyw/b/b;Lcom/pyw/plugin/PYWPlugin;Lcom/pyw/open/IUserListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "m"    # Lcom/pyw/b/b;
    .param p2, "p"    # Lcom/pyw/plugin/PYWPlugin;
    .param p3, "callback"    # Lcom/pyw/open/IUserListener;

    .prologue
    .line 43
    new-instance v0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-direct {v0, p1, p2, p3}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;-><init>(Lcom/pyw/b/b;Lcom/pyw/plugin/PYWPlugin;Lcom/pyw/open/IUserListener;)V

    return-object v0
.end method

.method public createOtherPayCallback(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "manager"    # Lcom/pyw/b/b;
    .param p2, "c"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 50
    new-instance v0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-direct {v0, p1, p2}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)V

    return-object v0
.end method

.method public createPYWLoginCallback(Lcom/pyw/b/b;Lcom/pyw/open/IUserListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "m"    # Lcom/pyw/b/b;
    .param p2, "callback"    # Lcom/pyw/open/IUserListener;

    .prologue
    .line 58
    new-instance v0, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;

    invoke-direct {v0, p1, p2}, Lcom/pyw/plugin/excutecallback/PYWLoginExcuteCallback;-><init>(Lcom/pyw/b/b;Lcom/pyw/open/IUserListener;)V

    return-object v0
.end method

.method public createPYWPayCallback(Lcom/pyw/open/IPayListener;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1
    .param p1, "callback"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 65
    new-instance v0, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;

    invoke-direct {v0, p1}, Lcom/pyw/plugin/excutecallback/PYWPayExcuteCallback;-><init>(Lcom/pyw/open/IPayListener;)V

    return-object v0
.end method

.method public createSilenceCallback()Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/pyw/plugin/excutecallback/SilenceExcuteCallback;

    invoke-direct {v0}, Lcom/pyw/plugin/excutecallback/SilenceExcuteCallback;-><init>()V

    return-object v0
.end method
