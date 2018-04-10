.class Lcom/pengyouwan/sdk/activity/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/LauncherActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/LauncherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/LauncherActivity$1;->a:Lcom/pengyouwan/sdk/activity/LauncherActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    const/4 v1, 0x3

    .line 67
    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/LauncherActivity$1;->a:Lcom/pengyouwan/sdk/activity/LauncherActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/LauncherActivity;->a(Lcom/pengyouwan/sdk/activity/LauncherActivity;)V

    .line 76
    return-void

    .line 68
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 70
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
