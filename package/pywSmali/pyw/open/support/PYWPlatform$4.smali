.class Lcom/pyw/open/support/PYWPlatform$4;
.super Ljava/lang/Object;
.source "PYWPlatform.java"

# interfaces
.implements Lcom/pyw/open/IPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/open/support/PYWPlatform;->openChargeCenter(Landroid/app/Activity;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPayFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "sdk_extra_orderid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onPaySuccess(Lcom/pyw/open/PayResult;)V
    .locals 3
    .param p1, "result"    # Lcom/pyw/open/PayResult;

    .prologue
    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "sdk_extra_orderid"

    .line 152
    invoke-virtual {p1}, Lcom/pyw/open/PayResult;->getOrderID()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/pyw/open/PayResult;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v1, "sdk_extra_appdata"

    .line 155
    invoke-virtual {p1}, Lcom/pyw/open/PayResult;->getExtension()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 157
    return-void
.end method
