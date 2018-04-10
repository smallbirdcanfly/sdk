.class public Lcom/pengyouwan/sdk/d/g;
.super Ljava/lang/Object;
.source "SDKEventDispatcher.java"


# static fields
.field protected static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/pengyouwan/sdk/d/g$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/d/g$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/pengyouwan/sdk/d/g;->a:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method public static a(ILandroid/os/Bundle;)V
    .locals 3
    .param p0, "eventCode"    # I
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 39
    sget-object v0, Lcom/pengyouwan/sdk/d/g;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void
.end method

.method public static b(ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "eventCode"    # I
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->e()Lcom/pengyouwan/sdk/open/OnSDKEventListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/pengyouwan/sdk/open/OnSDKEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 50
    return-void
.end method
