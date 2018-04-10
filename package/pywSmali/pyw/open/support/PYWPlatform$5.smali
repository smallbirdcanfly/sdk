.class Lcom/pyw/open/support/PYWPlatform$5;
.super Ljava/lang/Object;
.source "PYWPlatform.java"

# interfaces
.implements Lcom/pyw/open/ILogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/open/support/PYWPlatform;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public fail(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 183
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pyw/open/support/PYWPlatform;->access$0(ILandroid/os/Bundle;)V

    .line 177
    return-void
.end method
