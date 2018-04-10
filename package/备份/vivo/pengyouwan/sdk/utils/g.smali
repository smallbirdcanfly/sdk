.class public Lcom/pengyouwan/sdk/utils/g;
.super Ljava/lang/Object;
.source "ForegroundCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/utils/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/pengyouwan/sdk/utils/g;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/utils/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/pengyouwan/sdk/utils/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/sdk/utils/g;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/g;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/g;->d:Z

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->e:Landroid/os/Handler;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->f:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/utils/g;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 107
    const-string v1, "Foreground is not initialised - invoke at least once with parameterised init/get"

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/pengyouwan/sdk/utils/g;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/pengyouwan/sdk/utils/g;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/utils/g;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    .line 79
    sget-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/utils/g;->b:Lcom/pengyouwan/sdk/utils/g;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/g;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/utils/g;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/g;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/g;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/utils/g;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/g;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/utils/g;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/utils/g$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/pengyouwan/sdk/utils/g$a;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/g;->d:Z

    .line 154
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pengyouwan/sdk/utils/g;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/g;->e:Landroid/os/Handler;

    new-instance v1, Lcom/pengyouwan/sdk/utils/g$1;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/utils/g$1;-><init>(Lcom/pengyouwan/sdk/utils/g;)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/utils/g;->g:Ljava/lang/Runnable;

    .line 171
    const-wide/16 v2, 0x1f4

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/utils/g;->d:Z

    .line 132
    iget-boolean v4, p0, Lcom/pengyouwan/sdk/utils/g;->c:Z

    if-eqz v4, :cond_2

    .line 133
    .local v2, "wasBackground":Z
    :goto_0
    iput-boolean v3, p0, Lcom/pengyouwan/sdk/utils/g;->c:Z

    .line 135
    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/g;->g:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/g;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pengyouwan/sdk/utils/g;->g:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    if-eqz v2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/g;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    :cond_1
    return-void

    .end local v2    # "wasBackground":Z
    :cond_2
    move v2, v3

    .line 132
    goto :goto_0

    .line 139
    .restart local v2    # "wasBackground":Z
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/utils/g$a;

    .line 141
    .local v1, "l":Lcom/pengyouwan/sdk/utils/g$a;
    :try_start_0
    invoke-interface {v1}, Lcom/pengyouwan/sdk/utils/g$a;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v4, Lcom/pengyouwan/sdk/utils/g;->a:Ljava/lang/String;

    const-string v5, "Listener threw exception!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    return-void
.end method
