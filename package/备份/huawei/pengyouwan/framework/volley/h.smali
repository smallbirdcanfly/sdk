.class public Lcom/pengyouwan/framework/volley/h;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/pengyouwan/framework/volley/g;

.field private final c:Lcom/pengyouwan/framework/volley/b;

.field private final d:Lcom/pengyouwan/framework/volley/q;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/pengyouwan/framework/volley/g;Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/q;)V
    .locals 1
    .param p2, "network"    # Lcom/pengyouwan/framework/volley/g;
    .param p3, "cache"    # Lcom/pengyouwan/framework/volley/b;
    .param p4, "delivery"    # Lcom/pengyouwan/framework/volley/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;",
            "Lcom/pengyouwan/framework/volley/g;",
            "Lcom/pengyouwan/framework/volley/b;",
            "Lcom/pengyouwan/framework/volley/q;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/h;->e:Z

    .line 59
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    .line 60
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/h;->b:Lcom/pengyouwan/framework/volley/g;

    .line 61
    iput-object p3, p0, Lcom/pengyouwan/framework/volley/h;->c:Lcom/pengyouwan/framework/volley/b;

    .line 62
    iput-object p4, p0, Lcom/pengyouwan/framework/volley/h;->d:Lcom/pengyouwan/framework/volley/q;

    .line 63
    return-void
.end method

.method private a(Lcom/pengyouwan/framework/volley/n;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->b()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 80
    :cond_0
    return-void
.end method

.method private a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V
    .locals 1
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
    .line 151
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    invoke-virtual {p1, p2}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/u;

    move-result-object p2

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/h;->d:Lcom/pengyouwan/framework/volley/q;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/volley/q;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    .line 153
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/h;->e:Z

    .line 71
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/h;->interrupt()V

    .line 72
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 84
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 87
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 89
    .local v4, "startTimeMs":J
    const/4 v2, 0x0

    .line 92
    .local v2, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :try_start_0
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/h;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    check-cast v2, Lcom/pengyouwan/framework/volley/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    .restart local v2    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :try_start_1
    const-string v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/n;->i()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    const-string v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/pengyouwan/framework/volley/u; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v6

    .line 139
    .local v6, "volleyError":Lcom/pengyouwan/framework/volley/u;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/pengyouwan/framework/volley/u;->a(J)V

    .line 140
    invoke-direct {p0, v2, v6}, Lcom/pengyouwan/framework/volley/h;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto :goto_0

    .line 93
    .end local v2    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    .end local v6    # "volleyError":Lcom/pengyouwan/framework/volley/u;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v7, p0, Lcom/pengyouwan/framework/volley/h;->e:Z

    if-eqz v7, :cond_0

    .line 96
    return-void

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/pengyouwan/framework/volley/h;->a(Lcom/pengyouwan/framework/volley/n;)V

    .line 114
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/h;->b:Lcom/pengyouwan/framework/volley/g;

    invoke-interface {v7, v2}, Lcom/pengyouwan/framework/volley/g;->a(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/j;

    move-result-object v1

    .line 115
    .local v1, "networkResponse":Lcom/pengyouwan/framework/volley/j;
    const-string v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 119
    iget-boolean v7, v1, Lcom/pengyouwan/framework/volley/j;->d:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/n;->x()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    const-string v7, "not-modified"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/pengyouwan/framework/volley/u; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 141
    .end local v1    # "networkResponse":Lcom/pengyouwan/framework/volley/j;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v6, Lcom/pengyouwan/framework/volley/u;

    invoke-direct {v6, v0}, Lcom/pengyouwan/framework/volley/u;-><init>(Ljava/lang/Throwable;)V

    .line 144
    .restart local v6    # "volleyError":Lcom/pengyouwan/framework/volley/u;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/pengyouwan/framework/volley/u;->a(J)V

    .line 145
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/h;->d:Lcom/pengyouwan/framework/volley/q;

    invoke-interface {v7, v2, v6}, Lcom/pengyouwan/framework/volley/q;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "volleyError":Lcom/pengyouwan/framework/volley/u;
    .restart local v1    # "networkResponse":Lcom/pengyouwan/framework/volley/j;
    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v3

    .line 126
    .local v3, "response":Lcom/pengyouwan/framework/volley/p;, "Lcom/pengyouwan/framework/volley/p<*>;"
    const-string v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/n;->s()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/pengyouwan/framework/volley/p;->b:Lcom/pengyouwan/framework/volley/b$a;

    if-eqz v7, :cond_3

    .line 131
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/h;->c:Lcom/pengyouwan/framework/volley/b;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/n;->f()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/pengyouwan/framework/volley/p;->b:Lcom/pengyouwan/framework/volley/b$a;

    invoke-interface {v7, v8, v9}, Lcom/pengyouwan/framework/volley/b;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/b$a;)V

    .line 132
    const-string v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 136
    :cond_3
    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/n;->w()V

    .line 137
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/h;->d:Lcom/pengyouwan/framework/volley/q;

    invoke-interface {v7, v2, v3}, Lcom/pengyouwan/framework/volley/q;->a(Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/p;)V
    :try_end_3
    .catch Lcom/pengyouwan/framework/volley/u; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
