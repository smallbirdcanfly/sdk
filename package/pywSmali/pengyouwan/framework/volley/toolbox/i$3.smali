.class Lcom/pengyouwan/framework/volley/toolbox/i$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/i;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$3;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 466
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$3;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->b(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 482
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$3;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->b(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 483
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$3;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Lcom/pengyouwan/framework/volley/toolbox/i;Ljava/lang/Runnable;)V

    .line 484
    return-void

    .line 466
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 467
    .local v0, "bir":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    invoke-static {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a(Lcom/pengyouwan/framework/volley/toolbox/i$a;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .line 471
    .local v1, "container":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Lcom/pengyouwan/framework/volley/toolbox/i$d;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 474
    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a()Lcom/pengyouwan/framework/volley/u;

    move-result-object v4

    if-nez v4, :cond_3

    .line 475
    invoke-static {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->b(Lcom/pengyouwan/framework/volley/toolbox/i$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Landroid/graphics/Bitmap;)V

    .line 476
    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Lcom/pengyouwan/framework/volley/toolbox/i$d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/pengyouwan/framework/volley/toolbox/i$d;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V

    goto :goto_0

    .line 478
    :cond_3
    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Lcom/pengyouwan/framework/volley/toolbox/i$d;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a()Lcom/pengyouwan/framework/volley/u;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/pengyouwan/framework/volley/toolbox/i$d;->onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V

    goto :goto_0
.end method
