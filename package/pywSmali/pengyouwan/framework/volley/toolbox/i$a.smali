.class Lcom/pengyouwan/framework/volley/toolbox/i$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/volley/toolbox/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/i;

.field private final b:Lcom/pengyouwan/framework/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/pengyouwan/framework/volley/u;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/framework/volley/toolbox/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/i;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/toolbox/i$c;)V
    .locals 1
    .param p3, "container"    # Lcom/pengyouwan/framework/volley/toolbox/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;",
            "Lcom/pengyouwan/framework/volley/toolbox/i$c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    .local p2, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    .line 411
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->b:Lcom/pengyouwan/framework/volley/n;

    .line 412
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i$a;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/framework/volley/toolbox/i$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/pengyouwan/framework/volley/u;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->d:Lcom/pengyouwan/framework/volley/u;

    return-object v0
.end method

.method public a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)V
    .locals 1
    .param p1, "container"    # Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/volley/u;)V
    .locals 0
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->d:Lcom/pengyouwan/framework/volley/u;

    .line 420
    return-void
.end method

.method public b(Lcom/pengyouwan/framework/volley/toolbox/i$c;)Z
    .locals 1
    .param p1, "container"    # Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$a;->b:Lcom/pengyouwan/framework/volley/n;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/n;->h()V

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
