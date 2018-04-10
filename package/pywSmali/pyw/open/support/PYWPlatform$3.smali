.class Lcom/pyw/open/support/PYWPlatform$3;
.super Ljava/lang/Object;
.source "PYWPlatform.java"

# interfaces
.implements Lcom/pyw/open/IUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/open/support/PYWPlatform;->openLogin(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLoginFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "sdk_extra_erro"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onLoginSuccess(Lcom/pyw/open/PYWUser;)V
    .locals 3
    .param p1, "user"    # Lcom/pyw/open/PYWUser;

    .prologue
    .line 89
    new-instance v1, Lcom/pyw/open/support/User;

    invoke-direct {v1}, Lcom/pyw/open/support/User;-><init>()V

    .line 90
    .local v1, "u":Lcom/pyw/open/support/User;
    invoke-virtual {p1}, Lcom/pyw/open/PYWUser;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pyw/open/support/User;->setUserId(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/pyw/open/PYWUser;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pyw/open/support/User;->setToken(Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "sdk_extra_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    invoke-static {v1}, Lcom/pyw/open/support/PYWPlatform;->access$2(Lcom/pyw/open/support/User;)V

    .line 95
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 96
    return-void
.end method
