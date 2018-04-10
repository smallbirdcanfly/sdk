.class public Lcom/pengyouwan/sdk/open/FloatViewTool;
.super Ljava/lang/Object;
.source "FloatViewTool.java"


# static fields
.field private static floatView:Lcom/pengyouwan/sdk/ui/widget/a;

.field private static instance:Lcom/pengyouwan/sdk/open/FloatViewTool;


# instance fields
.field private isShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->isShowing:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/open/FloatViewTool;->init(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->mWindowManager:Landroid/view/WindowManager;

    .line 43
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v1, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v0, p1, v1}, Lcom/pengyouwan/sdk/ui/widget/a;-><init>(Landroid/app/Activity;Landroid/view/WindowManager;)V

    sput-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 44
    return-void
.end method

.method public static instance(Landroid/app/Activity;)Lcom/pengyouwan/sdk/open/FloatViewTool;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance:Lcom/pengyouwan/sdk/open/FloatViewTool;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/pengyouwan/sdk/open/FloatViewTool;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance:Lcom/pengyouwan/sdk/open/FloatViewTool;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/pengyouwan/sdk/open/FloatViewTool;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/open/FloatViewTool;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance:Lcom/pengyouwan/sdk/open/FloatViewTool;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->instance:Lcom/pengyouwan/sdk/open/FloatViewTool;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroyFloatView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    if-eqz v0, :cond_1

    .line 71
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->isShowing:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->a()V

    .line 74
    :cond_0
    sput-object v1, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 76
    :cond_1
    iput-object v1, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    return-void
.end method

.method public hideFloatView()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->isShowing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/pengyouwan/sdk/open/FloatViewTool;->floatView:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->a()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/open/FloatViewTool;->isShowing:Z

    .line 64
    :cond_0
    return-void
.end method

.method public showFloatView()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
