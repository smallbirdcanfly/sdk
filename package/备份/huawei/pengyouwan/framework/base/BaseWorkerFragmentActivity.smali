.class public abstract Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;
.super Lcom/pengyouwan/framework/base/BaseFragmentActivity;
.source "BaseWorkerFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;
    }
.end annotation


# instance fields
.field private n:Landroid/os/HandlerThread;

.field private o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method public c(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity worker:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->n:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    iget-object v1, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;-><init>(Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->o:Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 58
    :cond_0
    return-void
.end method
