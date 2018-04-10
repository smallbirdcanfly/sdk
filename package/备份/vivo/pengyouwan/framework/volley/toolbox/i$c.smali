.class public Lcom/pengyouwan/framework/volley/toolbox/i$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/volley/toolbox/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/i;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Lcom/pengyouwan/framework/volley/toolbox/i$d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/i;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$d;)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "requestUrl"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/pengyouwan/framework/volley/toolbox/i$d;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->b:Landroid/graphics/Bitmap;

    .line 342
    iput-object p3, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->e:Ljava/lang/String;

    .line 343
    iput-object p4, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->d:Ljava/lang/String;

    .line 344
    iput-object p5, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->c:Lcom/pengyouwan/framework/volley/toolbox/i$d;

    .line 345
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Lcom/pengyouwan/framework/volley/toolbox/i$d;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->c:Lcom/pengyouwan/framework/volley/toolbox/i$d;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->c:Lcom/pengyouwan/framework/volley/toolbox/i$d;

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 356
    .local v1, "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v1, p0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->b(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Z

    move-result v0

    .line 358
    .local v0, "canceled":Z
    if-eqz v0, :cond_0

    .line 359
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    .end local v0    # "canceled":Z
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->b(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    check-cast v1, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 364
    .restart local v1    # "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, p0}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->b(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Z

    .line 366
    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a(Lcom/pengyouwan/framework/volley/toolbox/i$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/i;->b(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$c;->e:Ljava/lang/String;

    return-object v0
.end method
