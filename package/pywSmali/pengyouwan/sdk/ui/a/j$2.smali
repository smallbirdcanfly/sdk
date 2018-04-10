.class Lcom/pengyouwan/sdk/ui/a/j$2;
.super Ljava/lang/Object;
.source "LoginingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/j;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/j;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/j$2;->a:Lcom/pengyouwan/sdk/ui/a/j;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 278
    const/4 v1, 0x3

    .line 279
    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j$2;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/j;->d(Lcom/pengyouwan/sdk/ui/a/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j$2;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/j;->e(Lcom/pengyouwan/sdk/ui/a/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j$2;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/j;->f(Lcom/pengyouwan/sdk/ui/a/j;)V

    .line 294
    :cond_0
    :goto_1
    return-void

    .line 280
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 282
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j$2;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/j;->g(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0xa003

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
