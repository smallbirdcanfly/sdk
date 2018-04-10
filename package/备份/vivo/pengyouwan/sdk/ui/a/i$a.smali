.class Lcom/pengyouwan/sdk/ui/a/i$a;
.super Landroid/os/Handler;
.source "LoginFromPassnoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pengyouwan/sdk/ui/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/a/i;)V
    .locals 1
    .param p1, "dialog"    # Lcom/pengyouwan/sdk/ui/a/i;

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$a;->a:Ljava/lang/ref/WeakReference;

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/a/i;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/sdk/ui/a/i;->a(Landroid/os/Message;)V

    .line 162
    :cond_0
    return-void
.end method
