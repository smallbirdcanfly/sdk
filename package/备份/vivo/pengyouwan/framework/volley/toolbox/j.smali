.class public Lcom/pengyouwan/framework/volley/toolbox/j;
.super Lcom/pengyouwan/framework/volley/n;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pengyouwan/framework/volley/n",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:I

.field private final d:I

.field private e:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/volley/toolbox/j;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p6, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p7, "errorListener"    # Lcom/pengyouwan/framework/volley/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/pengyouwan/framework/volley/p$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/pengyouwan/framework/volley/n;-><init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 77
    new-instance v0, Lcom/pengyouwan/framework/volley/d;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/pengyouwan/framework/volley/d;-><init>(IIF)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/j;->a(Lcom/pengyouwan/framework/volley/r;)Lcom/pengyouwan/framework/volley/n;

    .line 78
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->a:Lcom/pengyouwan/framework/volley/p$b;

    .line 79
    iput-object p6, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->b:Landroid/graphics/Bitmap$Config;

    .line 80
    iput p3, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->c:I

    .line 81
    iput p4, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->d:I

    .line 82
    iput-object p5, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->e:Landroid/widget/ImageView$ScaleType;

    .line 83
    return-void
.end method

.method static a(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 235
    int-to-double v7, p0

    int-to-double v9, p2

    div-double v5, v7, v9

    .line 236
    .local v5, "wr":D
    int-to-double v7, p1

    int-to-double v9, p3

    div-double v0, v7, v9

    .line 237
    .local v0, "hr":D
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 238
    .local v3, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 239
    .local v2, "n":F
    :goto_0
    mul-float v7, v2, v11

    float-to-double v7, v7

    cmpg-double v7, v7, v3

    if-lez v7, :cond_0

    .line 243
    float-to-int v7, v2

    return v7

    .line 240
    :cond_0
    mul-float/2addr v2, v11

    goto :goto_0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 7
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 116
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 152
    .end local p2    # "actualPrimary":I
    :cond_0
    :goto_0
    return p2

    .line 121
    .restart local p2    # "actualPrimary":I
    :cond_1
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_2

    .line 122
    if-eqz p0, :cond_0

    move p2, p0

    .line 125
    goto :goto_0

    .line 129
    :cond_2
    if-nez p0, :cond_3

    .line 130
    int-to-double v3, p1

    int-to-double v5, p3

    div-double v0, v3, v5

    .line 131
    .local v0, "ratio":D
    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int p2, v3

    goto :goto_0

    .line 134
    .end local v0    # "ratio":D
    :cond_3
    if-nez p1, :cond_4

    move p2, p0

    .line 135
    goto :goto_0

    .line 138
    :cond_4
    int-to-double v3, p3

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 139
    .restart local v0    # "ratio":D
    move v2, p0

    .line 142
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_6

    .line 143
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_5

    .line 144
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    :cond_5
    move p2, v2

    .line 146
    goto :goto_0

    .line 149
    :cond_6
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpl-double v3, v3, v5

    if-lez v3, :cond_7

    .line 150
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    :cond_7
    move p2, v2

    .line 152
    goto :goto_0
.end method

.method private b(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .locals 13
    .param p1, "response"    # Lcom/pengyouwan/framework/volley/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/j;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 172
    iget-object v3, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    .line 173
    .local v3, "data":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 175
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->c:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->d:I

    if-nez v8, :cond_0

    .line 176
    iget-object v8, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->b:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 177
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 211
    :goto_0
    if-nez v2, :cond_3

    .line 212
    new-instance v8, Lcom/pengyouwan/framework/volley/l;

    invoke-direct {v8, p1}, Lcom/pengyouwan/framework/volley/l;-><init>(Lcom/pengyouwan/framework/volley/j;)V

    invoke-static {v8}, Lcom/pengyouwan/framework/volley/p;->a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v8

    .line 214
    :goto_1
    return-object v8

    .line 180
    :cond_0
    iput-boolean v12, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 182
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 183
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 186
    .local v0, "actualHeight":I
    iget v8, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->c:I

    iget v9, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->d:I

    .line 187
    iget-object v10, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->e:Landroid/widget/ImageView$ScaleType;

    .line 186
    invoke-static {v8, v9, v1, v0, v10}, Lcom/pengyouwan/framework/volley/toolbox/j;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 188
    .local v6, "desiredWidth":I
    iget v8, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->d:I

    iget v9, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->c:I

    .line 189
    iget-object v10, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->e:Landroid/widget/ImageView$ScaleType;

    .line 188
    invoke-static {v8, v9, v0, v1, v10}, Lcom/pengyouwan/framework/volley/toolbox/j;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 192
    .local v5, "desiredHeight":I
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-static {v1, v0, v6, v5}, Lcom/pengyouwan/framework/volley/toolbox/j;->a(IIII)I

    move-result v8

    .line 195
    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 201
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_1

    .line 202
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 203
    :cond_1
    invoke-static {v7, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 205
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 207
    :cond_2
    move-object v2, v7

    goto :goto_0

    .line 214
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/pengyouwan/framework/volley/p;->a(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .locals 6
    .param p1, "response"    # Lcom/pengyouwan/framework/volley/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/j;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v2, Lcom/pengyouwan/framework/volley/toolbox/j;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/j;->b(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 163
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/j;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/pengyouwan/framework/volley/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v1, Lcom/pengyouwan/framework/volley/l;

    invoke-direct {v1, v0}, Lcom/pengyouwan/framework/volley/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/pengyouwan/framework/volley/p;->a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/j;->a:Lcom/pengyouwan/framework/volley/p$b;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/volley/p$b;->onResponse(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/j;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public t()Lcom/pengyouwan/framework/volley/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pengyouwan/framework/volley/n$a;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/pengyouwan/framework/volley/n$a;->a:Lcom/pengyouwan/framework/volley/n$a;

    return-object v0
.end method
