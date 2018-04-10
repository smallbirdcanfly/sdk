.class Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;
.super Landroid/os/Handler;
.source "BaseWorkerFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;Landroid/os/Looper;)V
    .locals 1
    .param p1, "activity"    # Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/base/BaseWorkerFragmentActivity;->c(Landroid/os/Message;)V

    .line 41
    :cond_0
    return-void
.end method
