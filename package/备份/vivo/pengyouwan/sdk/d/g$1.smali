.class Lcom/pengyouwan/sdk/d/g$1;
.super Landroid/os/Handler;
.source "SDKEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 22
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->e()Lcom/pengyouwan/sdk/open/OnSDKEventListener;

    move-result-object v2

    .line 23
    .local v2, "lis":Lcom/pengyouwan/sdk/open/OnSDKEventListener;
    if-eqz v2, :cond_0

    .line 24
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 25
    .local v1, "eventCode":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 27
    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {v2, v1, v0}, Lcom/pengyouwan/sdk/open/OnSDKEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 29
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "eventCode":I
    :cond_0
    return-void
.end method
