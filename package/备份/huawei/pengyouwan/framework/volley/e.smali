.class public Lcom/pengyouwan/framework/volley/e;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/pengyouwan/framework/volley/e$1;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/volley/e$1;-><init>(Lcom/pengyouwan/framework/volley/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/e;->a:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;",
            "Lcom/pengyouwan/framework/volley/p",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    .local p2, "response":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pengyouwan/framework/volley/e;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;",
            "Lcom/pengyouwan/framework/volley/p",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    .local p2, "response":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<*>;"
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->w()V

    .line 61
    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/pengyouwan/framework/volley/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/pengyouwan/framework/volley/e$a;-><init>(Lcom/pengyouwan/framework/volley/e;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p2, "error"    # Lcom/pengyouwan/framework/volley/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;",
            "Lcom/pengyouwan/framework/volley/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/pengyouwan/framework/volley/p;->a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v0

    .line 69
    .local v0, "response":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<*>;"
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/pengyouwan/framework/volley/e$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/pengyouwan/framework/volley/e$a;-><init>(Lcom/pengyouwan/framework/volley/e;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method
