.class public Lcom/pengyouwan/framework/volley/o;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/o$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/pengyouwan/framework/volley/b;

.field private final g:Lcom/pengyouwan/framework/volley/g;

.field private final h:Lcom/pengyouwan/framework/volley/q;

.field private i:[Lcom/pengyouwan/framework/volley/h;

.field private j:Lcom/pengyouwan/framework/volley/c;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/framework/volley/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;)V
    .locals 1
    .param p1, "cache"    # Lcom/pengyouwan/framework/volley/b;
    .param p2, "network"    # Lcom/pengyouwan/framework/volley/g;

    .prologue
    .line 135
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/pengyouwan/framework/volley/o;-><init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;I)V
    .locals 3
    .param p1, "cache"    # Lcom/pengyouwan/framework/volley/b;
    .param p2, "network"    # Lcom/pengyouwan/framework/volley/g;
    .param p3, "threadPoolSize"    # I

    .prologue
    .line 124
    .line 125
    new-instance v0, Lcom/pengyouwan/framework/volley/e;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/volley/e;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pengyouwan/framework/volley/o;-><init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;ILcom/pengyouwan/framework/volley/q;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;ILcom/pengyouwan/framework/volley/q;)V
    .locals 1
    .param p1, "cache"    # Lcom/pengyouwan/framework/volley/b;
    .param p2, "network"    # Lcom/pengyouwan/framework/volley/g;
    .param p3, "threadPoolSize"    # I
    .param p4, "delivery"    # Lcom/pengyouwan/framework/volley/q;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->c:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 77
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->k:Ljava/util/List;

    .line 110
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/o;->f:Lcom/pengyouwan/framework/volley/b;

    .line 111
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/o;->g:Lcom/pengyouwan/framework/volley/g;

    .line 112
    new-array v0, p3, [Lcom/pengyouwan/framework/volley/h;

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    .line 113
    iput-object p4, p0, Lcom/pengyouwan/framework/volley/o;->h:Lcom/pengyouwan/framework/volley/q;

    .line 114
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/n;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pengyouwan/framework/volley/n",
            "<TT;>;)",
            "Lcom/pengyouwan/framework/volley/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p1, p0}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/o;)Lcom/pengyouwan/framework/volley/n;

    .line 230
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->c:Ljava/util/Set;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->c:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/o;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/pengyouwan/framework/volley/n;->a(I)Lcom/pengyouwan/framework/volley/n;

    .line 236
    const-string v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->s()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 264
    :goto_0
    return-object p1

    .line 230
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    monitor-enter v3

    .line 246
    :try_start_2
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->f()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 250
    .local v1, "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    if-nez v1, :cond_1

    .line 251
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 253
    .restart local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-boolean v2, Lcom/pengyouwan/framework/volley/v;->b:Z

    if-eqz v2, :cond_2

    .line 256
    const-string v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .end local v1    # "stagedRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 245
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 261
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public a()V
    .locals 7

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/o;->b()V

    .line 144
    new-instance v2, Lcom/pengyouwan/framework/volley/c;

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/pengyouwan/framework/volley/o;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/pengyouwan/framework/volley/o;->f:Lcom/pengyouwan/framework/volley/b;

    iget-object v6, p0, Lcom/pengyouwan/framework/volley/o;->h:Lcom/pengyouwan/framework/volley/q;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pengyouwan/framework/volley/c;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/q;)V

    iput-object v2, p0, Lcom/pengyouwan/framework/volley/o;->j:Lcom/pengyouwan/framework/volley/c;

    .line 145
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->j:Lcom/pengyouwan/framework/volley/c;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/volley/c;->start()V

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 154
    return-void

    .line 149
    :cond_0
    new-instance v1, Lcom/pengyouwan/framework/volley/h;

    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->g:Lcom/pengyouwan/framework/volley/g;

    .line 150
    iget-object v4, p0, Lcom/pengyouwan/framework/volley/o;->f:Lcom/pengyouwan/framework/volley/b;

    iget-object v5, p0, Lcom/pengyouwan/framework/volley/o;->h:Lcom/pengyouwan/framework/volley/q;

    .line 149
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pengyouwan/framework/volley/h;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/pengyouwan/framework/volley/g;Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/q;)V

    .line 151
    .local v1, "networkDispatcher":Lcom/pengyouwan/framework/volley/h;
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    aput-object v1, v2, v0

    .line 152
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/h;->start()V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/o;->j:Lcom/pengyouwan/framework/volley/c;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/o;->j:Lcom/pengyouwan/framework/volley/c;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/c;->a()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 168
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/o;->i:[Lcom/pengyouwan/framework/volley/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/h;->a()V

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b(Lcom/pengyouwan/framework/volley/n;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pengyouwan/framework/volley/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v4, p0, Lcom/pengyouwan/framework/volley/o;->c:Ljava/util/Set;

    monitor-enter v4

    .line 278
    :try_start_0
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->c:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object v4, p0, Lcom/pengyouwan/framework/volley/o;->k:Ljava/util/List;

    monitor-enter v4

    .line 281
    :try_start_1
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 280
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    iget-object v4, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    monitor-enter v4

    .line 288
    :try_start_2
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->f()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 290
    .local v2, "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    if-eqz v2, :cond_1

    .line 291
    sget-boolean v3, Lcom/pengyouwan/framework/volley/v;->b:Z

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 293
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 292
    invoke-static {v3, v5}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/o;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 301
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v2    # "waitingRequests":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/pengyouwan/framework/volley/n<*>;>;"
    :cond_2
    return-void

    .line 277
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 281
    :cond_3
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/volley/o$a;

    .line 282
    .local v1, "listener":Lcom/pengyouwan/framework/volley/o$a;, "Lcom/pengyouwan/framework/volley/o$a<TT;>;"
    invoke-interface {v1, p1}, Lcom/pengyouwan/framework/volley/o$a;->a(Lcom/pengyouwan/framework/volley/n;)V

    goto :goto_0

    .line 280
    .end local v1    # "listener":Lcom/pengyouwan/framework/volley/o$a;, "Lcom/pengyouwan/framework/volley/o$a<TT;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 287
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public c()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/o;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
