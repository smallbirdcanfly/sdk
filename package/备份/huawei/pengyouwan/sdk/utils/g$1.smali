.class Lcom/pengyouwan/sdk/utils/g$1;
.super Ljava/lang/Object;
.source "ForegroundCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/utils/g;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/utils/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/utils/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/utils/g$1;->a:Lcom/pengyouwan/sdk/utils/g;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 160
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/g$1;->a:Lcom/pengyouwan/sdk/utils/g;

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/g;->a(Lcom/pengyouwan/sdk/utils/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/g$1;->a:Lcom/pengyouwan/sdk/utils/g;

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/g;->b(Lcom/pengyouwan/sdk/utils/g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/g$1;->a:Lcom/pengyouwan/sdk/utils/g;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/g;->a(Lcom/pengyouwan/sdk/utils/g;Z)V

    .line 162
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/g$1;->a:Lcom/pengyouwan/sdk/utils/g;

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/g;->c(Lcom/pengyouwan/sdk/utils/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/utils/g$a;

    .line 164
    .local v1, "l":Lcom/pengyouwan/sdk/utils/g$a;
    :try_start_0
    invoke-interface {v1}, Lcom/pengyouwan/sdk/utils/g$a;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v3, Lcom/pengyouwan/sdk/utils/g;->a:Ljava/lang/String;

    const-string v4, "Listener threw exception!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
