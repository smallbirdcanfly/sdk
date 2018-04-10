.class Lcom/pyw/open/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/open/SplashActivity;->countDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/open/SplashActivity;


# direct methods
.method constructor <init>(Lcom/pyw/open/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/open/SplashActivity$1;->this$0:Lcom/pyw/open/SplashActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    const/4 v1, 0x3

    .line 53
    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/pyw/open/SplashActivity$1;->this$0:Lcom/pyw/open/SplashActivity;

    invoke-static {v2}, Lcom/pyw/open/SplashActivity;->access$0(Lcom/pyw/open/SplashActivity;)V

    .line 62
    return-void

    .line 54
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 56
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
