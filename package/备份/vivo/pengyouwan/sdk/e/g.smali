.class public Lcom/pengyouwan/sdk/e/g;
.super Ljava/lang/Object;
.source "RequestQueueManager.java"


# static fields
.field private static a:Lcom/pengyouwan/sdk/e/g;

.field private static c:Landroid/content/Context;


# instance fields
.field private b:Lcom/pengyouwan/framework/volley/o;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p1, Lcom/pengyouwan/sdk/e/g;->c:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/e/g;->b()Lcom/pengyouwan/framework/volley/o;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/e/g;->b:Lcom/pengyouwan/framework/volley/o;

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Lcom/pengyouwan/sdk/e/g;
    .locals 3

    .prologue
    .line 43
    const-class v1, Lcom/pengyouwan/sdk/e/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/e/g;->a:Lcom/pengyouwan/sdk/e/g;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    .line 45
    const-string v2, "must be call init() on subApplication onCreate function before call getInstance()"

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 47
    :cond_0
    :try_start_1
    sget-object v0, Lcom/pengyouwan/sdk/e/g;->a:Lcom/pengyouwan/sdk/e/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/pengyouwan/sdk/e/g;

    monitor-enter v1

    :try_start_0
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/pengyouwan/sdk/e/g;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/e/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pengyouwan/sdk/e/g;->a:Lcom/pengyouwan/sdk/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v1

    return-void

    .line 38
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "must be call on Application"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/volley/n;)V
    .locals 1
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
    .line 60
    .local p1, "req":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/Object;)Lcom/pengyouwan/framework/volley/n;

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/e/g;->b()Lcom/pengyouwan/framework/volley/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/volley/o;->a(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/n;

    .line 62
    return-void
.end method

.method public b()Lcom/pengyouwan/framework/volley/o;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/g;->b:Lcom/pengyouwan/framework/volley/o;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lcom/pengyouwan/sdk/e/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/toolbox/m;->a(Landroid/content/Context;)Lcom/pengyouwan/framework/volley/o;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/e/g;->b:Lcom/pengyouwan/framework/volley/o;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/g;->b:Lcom/pengyouwan/framework/volley/o;

    return-object v0
.end method
