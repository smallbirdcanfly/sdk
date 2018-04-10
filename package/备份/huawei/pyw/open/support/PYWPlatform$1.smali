.class Lcom/pyw/open/support/PYWPlatform$1;
.super Ljava/lang/Object;
.source "PYWPlatform.java"

# interfaces
.implements Lcom/pyw/open/IDefListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/open/support/PYWPlatform;->initSDK(Landroid/app/Application;Landroid/content/Context;Lcom/pyw/open/support/OnSDKEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "sdk_extra_erro"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 52
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 53
    invoke-static {}, Lcom/pyw/open/support/PYWPlatform;->access$1()V

    .line 54
    return-void
.end method
