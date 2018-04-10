.class public Lcom/pyw/open/PYWSDK;
.super Ljava/lang/Object;
.source "PYWSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pyw/b/b;->a(Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method public static exitGame(Lcom/pyw/open/IGameExitListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/pyw/open/IGameExitListener;

    .prologue
    .line 66
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IGameExitListener;)V

    .line 67
    return-void
.end method

.method public static getRoleMessage(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V
    .locals 1
    .param p0, "params"    # Lcom/pyw/entity/UserParams;
    .param p1, "listener"    # Lcom/pyw/open/IGetRoleListener;

    .prologue
    .line 81
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/pyw/b/b;->a(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V

    .line 82
    return-void
.end method

.method public static hideFloatView()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->d()V

    .line 46
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/pyw/open/IDefListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/pyw/open/IDefListener;

    .prologue
    .line 24
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/pyw/b/b;->a(Landroid/content/Context;Lcom/pyw/open/IDefListener;)V

    .line 25
    return-void
.end method

.method public static login(Lcom/pyw/open/IUserListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/pyw/open/IUserListener;

    .prologue
    .line 31
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IUserListener;)V

    .line 32
    return-void
.end method

.method public static logout(Lcom/pyw/open/ILogoutListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/pyw/open/ILogoutListener;

    .prologue
    .line 59
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/ILogoutListener;)V

    .line 60
    return-void
.end method

.method public static newIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pyw/b/b;->a(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/pyw/b/b;->a(IILandroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->g()V

    .line 98
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->e()V

    .line 90
    return-void
.end method

.method public static onRestart()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->i()V

    .line 102
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->f()V

    .line 94
    return-void
.end method

.method public static onStart()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->j()V

    .line 110
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->h()V

    .line 106
    return-void
.end method

.method public static pay(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;)V
    .locals 1
    .param p0, "params"    # Lcom/pyw/open/PayParams;
    .param p1, "callback"    # Lcom/pyw/open/IPayListener;

    .prologue
    .line 52
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;)V

    .line 53
    return-void
.end method

.method public static setLogoutCallback(Lcom/pyw/open/ILogoutCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/pyw/open/ILogoutCallback;

    .prologue
    .line 73
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pyw/b/b;->a(Lcom/pyw/open/ILogoutCallback;)V

    .line 74
    return-void
.end method

.method public static showFloatView()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->c()V

    .line 39
    return-void
.end method
