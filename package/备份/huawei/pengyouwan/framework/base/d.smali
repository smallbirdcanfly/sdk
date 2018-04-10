.class public abstract Lcom/pengyouwan/framework/base/d;
.super Lcom/pengyouwan/framework/base/c;
.source "BaseWorkerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/base/d$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/os/HandlerThread;

.field protected c:Lcom/pengyouwan/framework/base/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/pengyouwan/framework/base/c;->a()V

    .line 57
    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/d$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/d$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 60
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/c;->a(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fragment worker:"

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

    iput-object v0, p0, Lcom/pengyouwan/framework/base/d;->b:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/pengyouwan/framework/base/d$a;

    iget-object v1, p0, Lcom/pengyouwan/framework/base/d;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/framework/base/d$a;-><init>(Lcom/pengyouwan/framework/base/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    .line 52
    return-void
.end method

.method protected b(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/pengyouwan/framework/base/d;->c:Lcom/pengyouwan/framework/base/d$a;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/base/d$a;->sendEmptyMessage(I)Z

    .line 94
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 66
    return-void
.end method
