.class public Lcom/pengyouwan/sdk/utils/c;
.super Ljava/lang/Object;
.source "BehavioralHelper.java"


# static fields
.field private static c:Lcom/pengyouwan/sdk/utils/c;


# instance fields
.field private a:J

.field private b:J

.field private d:Z

.field private e:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/utils/c;->c:Lcom/pengyouwan/sdk/utils/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/c;->d:Z

    .line 65
    new-instance v0, Lcom/pengyouwan/sdk/utils/c$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pengyouwan/sdk/utils/c$1;-><init>(Lcom/pengyouwan/sdk/utils/c;JJ)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/c;->e:Landroid/os/CountDownTimer;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/c;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/c;->e:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public static a()Lcom/pengyouwan/sdk/utils/c;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/pengyouwan/sdk/utils/c;->c:Lcom/pengyouwan/sdk/utils/c;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/pengyouwan/sdk/utils/c;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/utils/c;->c:Lcom/pengyouwan/sdk/utils/c;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/pengyouwan/sdk/utils/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/utils/c;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/utils/c;->c:Lcom/pengyouwan/sdk/utils/c;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/utils/c;->c:Lcom/pengyouwan/sdk/utils/c;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/c;Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/utils/c;->d:Z

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "behaviorNum"    # I
    .param p3, "typeNum"    # I

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/d/f;->a(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/pengyouwan/sdk/b/a;->a()Lcom/pengyouwan/sdk/b/a;

    move-result-object v0

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pengyouwan/sdk/utils/c;->a:J

    .line 37
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/c;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 38
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    .line 41
    iget-wide v0, p0, Lcom/pengyouwan/sdk/utils/c;->a:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/c;->d:Z

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pengyouwan/sdk/utils/c;->b:J

    .line 43
    iget-wide v0, p0, Lcom/pengyouwan/sdk/utils/c;->b:J

    iget-wide v2, p0, Lcom/pengyouwan/sdk/utils/c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 45
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1, v4, v4}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 54
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/c;->d:Z

    .line 55
    iput-wide v5, p0, Lcom/pengyouwan/sdk/utils/c;->a:J

    .line 56
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/c;->e:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method
