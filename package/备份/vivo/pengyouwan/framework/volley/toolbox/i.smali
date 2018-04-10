.class public Lcom/pengyouwan/framework/volley/toolbox/i;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/toolbox/i$a;,
        Lcom/pengyouwan/framework/volley/toolbox/i$b;,
        Lcom/pengyouwan/framework/volley/toolbox/i$c;,
        Lcom/pengyouwan/framework/volley/toolbox/i$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/pengyouwan/framework/volley/o;

.field private b:I

.field private final c:Lcom/pengyouwan/framework/volley/toolbox/i$b;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/toolbox/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/toolbox/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method private static a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/i;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$a;)V
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/pengyouwan/framework/volley/toolbox/i$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/volley/toolbox/i$3;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->g:Ljava/lang/Runnable;

    .line 488
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/framework/volley/toolbox/i;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->e:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/pengyouwan/framework/volley/n;
    .locals 8
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p5, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pengyouwan/framework/volley/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/pengyouwan/framework/volley/toolbox/j;

    new-instance v2, Lcom/pengyouwan/framework/volley/toolbox/i$1;

    invoke-direct {v2, p0, p5}, Lcom/pengyouwan/framework/volley/toolbox/i$1;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;Ljava/lang/String;)V

    .line 259
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/pengyouwan/framework/volley/toolbox/i$2;

    invoke-direct {v7, p0, p5}, Lcom/pengyouwan/framework/volley/toolbox/i$2;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 254
    invoke-direct/range {v0 .. v7}, Lcom/pengyouwan/framework/volley/toolbox/j;-><init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/pengyouwan/framework/volley/p$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$d;IILandroid/widget/ImageView$ScaleType;)Lcom/pengyouwan/framework/volley/toolbox/i$c;
    .locals 20
    .param p1, "requestUrl"    # Ljava/lang/String;
    .param p2, "imageListener"    # Lcom/pengyouwan/framework/volley/toolbox/i$d;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/volley/toolbox/i;->a()V

    .line 215
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pengyouwan/framework/volley/toolbox/i;->c:Lcom/pengyouwan/framework/volley/toolbox/i$b;

    invoke-interface {v5, v11}, Lcom/pengyouwan/framework/volley/toolbox/i$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 219
    .local v6, "cachedBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 221
    new-instance v4, Lcom/pengyouwan/framework/volley/toolbox/i$c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/pengyouwan/framework/volley/toolbox/i$c;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$d;)V

    .line 222
    .local v4, "container":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/pengyouwan/framework/volley/toolbox/i$d;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V

    move-object v7, v4

    .line 249
    .end local v4    # "container":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    :goto_0
    return-object v7

    .line 228
    :cond_0
    new-instance v7, Lcom/pengyouwan/framework/volley/toolbox/i$c;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/pengyouwan/framework/volley/toolbox/i$c;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$d;)V

    .line 231
    .local v7, "imageContainer":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v5}, Lcom/pengyouwan/framework/volley/toolbox/i$d;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pengyouwan/framework/volley/toolbox/i;->d:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 235
    .local v19, "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    if-eqz v19, :cond_1

    .line 237
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;)V

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v11

    .line 243
    invoke-virtual/range {v12 .. v17}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/pengyouwan/framework/volley/n;

    move-result-object v18

    .line 246
    .local v18, "newRequest":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pengyouwan/framework/volley/toolbox/i;->a:Lcom/pengyouwan/framework/volley/o;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/pengyouwan/framework/volley/o;->a(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/n;

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pengyouwan/framework/volley/toolbox/i;->d:Ljava/util/HashMap;

    .line 248
    new-instance v8, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1, v7}, Lcom/pengyouwan/framework/volley/toolbox/i$a;-><init>(Lcom/pengyouwan/framework/volley/toolbox/i;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/toolbox/i$c;)V

    .line 247
    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->c:Lcom/pengyouwan/framework/volley/toolbox/i$b;

    invoke-interface {v1, p1, p2}, Lcom/pengyouwan/framework/volley/toolbox/i$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 288
    .local v0, "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0, p2}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a(Lcom/pengyouwan/framework/volley/toolbox/i$a;Landroid/graphics/Bitmap;)V

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$a;)V

    .line 295
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/u;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/toolbox/i$a;

    .line 306
    .local v0, "request":Lcom/pengyouwan/framework/volley/toolbox/i$a;
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p2}, Lcom/pengyouwan/framework/volley/toolbox/i$a;->a(Lcom/pengyouwan/framework/volley/u;)V

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$a;)V

    .line 313
    :cond_0
    return-void
.end method
