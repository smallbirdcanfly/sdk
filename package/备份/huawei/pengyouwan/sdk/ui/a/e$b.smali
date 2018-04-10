.class Lcom/pengyouwan/sdk/ui/a/e$b;
.super Landroid/os/Handler;
.source "DownloadProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pengyouwan/sdk/ui/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/a/e;)V
    .locals 1
    .param p1, "activity"    # Lcom/pengyouwan/sdk/ui/a/e;

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$b;->a:Ljava/lang/ref/WeakReference;

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/a/e;

    invoke-static {v0, p1}, Lcom/pengyouwan/sdk/ui/a/e;->a(Lcom/pengyouwan/sdk/ui/a/e;Landroid/os/Message;)V

    .line 224
    :cond_0
    return-void
.end method
