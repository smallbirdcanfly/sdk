.class public Lcom/pengyouwan/framework/volley/c;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/pengyouwan/framework/volley/b;

.field private final e:Lcom/pengyouwan/framework/volley/q;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/pengyouwan/framework/volley/v;->b:Z

    sput-boolean v0, Lcom/pengyouwan/framework/volley/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/q;)V
    .locals 1
    .param p3, "cache"    # Lcom/pengyouwan/framework/volley/b;
    .param p4, "delivery"    # Lcom/pengyouwan/framework/volley/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;",
            "Lcom/pengyouwan/framework/volley/b;",
            "Lcom/pengyouwan/framework/volley/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "cacheQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    .local p2, "networkQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/c;->f:Z

    .line 63
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 64
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    .line 65
    iput-object p3, p0, Lcom/pengyouwan/framework/volley/c;->d:Lcom/pengyouwan/framework/volley/b;

    .line 66
    iput-object p4, p0, Lcom/pengyouwan/framework/volley/c;->e:Lcom/pengyouwan/framework/volley/q;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/c;->f:Z

    .line 75
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/c;->interrupt()V

    .line 76
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    sget-boolean v5, Lcom/pengyouwan/framework/volley/c;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "start new dispatcher"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_0
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->d:Lcom/pengyouwan/framework/volley/b;

    invoke-interface {v5}, Lcom/pengyouwan/framework/volley/b;->a()V

    .line 89
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 92
    .local v3, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    check-cast v3, Lcom/pengyouwan/framework/volley/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    .restart local v3    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :try_start_1
    const-string v5, "cache-queue-take"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Lcom/pengyouwan/framework/volley/n;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string v5, "cache-discard-canceled"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Unhandled exception %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/pengyouwan/framework/volley/c;->f:Z

    if-eqz v5, :cond_1

    .line 96
    return-void

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->d:Lcom/pengyouwan/framework/volley/b;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/volley/n;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/pengyouwan/framework/volley/b;->a(Ljava/lang/String;)Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v1

    .line 111
    .local v1, "entry":Lcom/pengyouwan/framework/volley/b$a;
    if-nez v1, :cond_3

    .line 112
    const-string v5, "cache-miss"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    const-string v5, "cache-hit-expired"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, v1}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/n;

    .line 122
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_4
    const-string v5, "cache-hit"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 129
    new-instance v5, Lcom/pengyouwan/framework/volley/j;

    iget-object v6, v1, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    iget-object v7, v1, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/pengyouwan/framework/volley/j;-><init>([BLjava/util/Map;)V

    .line 128
    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v4

    .line 130
    .local v4, "response":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<*>;"
    const-string v5, "cache-hit-parsed"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/b$a;->b()Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->e:Lcom/pengyouwan/framework/volley/q;

    invoke-interface {v5, v3, v4}, Lcom/pengyouwan/framework/volley/q;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;)V

    goto :goto_0

    .line 139
    :cond_5
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v3, v5}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v1}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/n;

    .line 143
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/pengyouwan/framework/volley/p;->d:Z

    .line 147
    move-object v2, v3

    .line 148
    .local v2, "finalRequest":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/c;->e:Lcom/pengyouwan/framework/volley/q;

    new-instance v6, Lcom/pengyouwan/framework/volley/c$1;

    invoke-direct {v6, p0, v2}, Lcom/pengyouwan/framework/volley/c$1;-><init>(Lcom/pengyouwan/framework/volley/c;Lcom/pengyouwan/framework/volley/n;)V

    invoke-interface {v5, v3, v4, v6}, Lcom/pengyouwan/framework/volley/q;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
