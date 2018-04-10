.class public Lcom/pengyouwan/framework/volley/toolbox/c;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/toolbox/c$a;,
        Lcom/pengyouwan/framework/volley/toolbox/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/toolbox/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "rootDirectory"    # Ljava/io/File;

    .prologue
    .line 85
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/volley/toolbox/c;-><init>(Ljava/io/File;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p2, "maxCacheSizeInBytes"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    .line 75
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    .line 76
    iput p2, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->d:I

    .line 77
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "n":I
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 508
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 509
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 510
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 511
    return v0
.end method

.method private a(I)V
    .locals 14
    .param p1, "neededSpace"    # I

    .prologue
    .line 262
    iget-wide v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    iget v11, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->d:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    sget-boolean v9, Lcom/pengyouwan/framework/volley/v;->b:Z

    if-eqz v9, :cond_2

    .line 266
    const-string v9, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_2
    iget-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    .line 270
    .local v0, "before":J
    const/4 v6, 0x0

    .line 271
    .local v6, "prunedFiles":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 273
    .local v7, "startTime":J
    iget-object v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 274
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/c$a;>;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 292
    :goto_1
    sget-boolean v9, Lcom/pengyouwan/framework/volley/v;->b:Z

    if-eqz v9, :cond_0

    .line 293
    const-string v9, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 294
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    .line 293
    invoke-static {v9, v10}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 276
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/c$a;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/volley/toolbox/c$a;

    .line 277
    .local v3, "e":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    iget-object v9, v3, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    .line 278
    .local v2, "deleted":Z
    if-eqz v2, :cond_5

    .line 279
    iget-wide v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    iget-wide v11, v3, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    .line 284
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 287
    iget-wide v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    long-to-float v9, v9

    iget v10, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    goto :goto_1

    .line 281
    :cond_5
    const-string v9, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 282
    iget-object v12, v3, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/pengyouwan/framework/volley/toolbox/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 281
    invoke-static {v9, v10}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 500
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 501
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 502
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 503
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 516
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 517
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 518
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 519
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 520
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 521
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 522
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 523
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 540
    .local v0, "b":[B
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;J)V

    .line 541
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 542
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/c$a;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/pengyouwan/framework/volley/toolbox/c$a;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    iget-wide v3, p2, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;

    .line 308
    .local v0, "oldEntry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    iget-wide v3, p2, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    iget-wide v5, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 552
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;I)V

    .line 553
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    :goto_1
    return-void

    .line 553
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 554
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-array v0, p1, [B

    .line 330
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 331
    .local v2, "pos":I
    :goto_0
    if-ge v2, p1, :cond_0

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 334
    .end local v1    # "count":I
    :cond_0
    if-eq v2, p1, :cond_2

    .line 335
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    .restart local v1    # "count":I
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 337
    .end local v1    # "count":I
    :cond_2
    return-object v0
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0xff

    .line 526
    const-wide/16 v0, 0x0

    .line 527
    .local v0, "n":J
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 528
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 529
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 530
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 531
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 532
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 533
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 534
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 535
    return-wide v0
.end method

.method static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 546
    .local v1, "n":I
    invoke-static {p0, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 547
    .local v0, "b":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 245
    .local v0, "firstHalfLength":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "localFilename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    return-object v1
.end method

.method static d(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/InputStream;)I

    move-result v3

    .line 564
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 567
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 572
    return-object v2

    .line 566
    .end local v0    # "i":I
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 568
    .restart local v0    # "i":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static e(Ljava/io/InputStream;)I
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 492
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 493
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 495
    :cond_0
    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;

    .line 318
    .local v0, "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    if-eqz v0, :cond_0

    .line 319
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    iget-wide v3, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->b:J

    .line 320
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/pengyouwan/framework/volley/b$a;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->a:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/framework/volley/toolbox/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    .local v4, "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    if-nez v4, :cond_1

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 116
    .local v5, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 118
    .local v0, "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :try_start_2
    new-instance v1, Lcom/pengyouwan/framework/volley/toolbox/c$b;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/pengyouwan/framework/volley/toolbox/c$b;-><init>(Ljava/io/InputStream;Lcom/pengyouwan/framework/volley/toolbox/c$b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .local v1, "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :try_start_3
    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a(Ljava/io/InputStream;)Lcom/pengyouwan/framework/volley/toolbox/c$a;

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/c$b;->a(Lcom/pengyouwan/framework/volley/toolbox/c$b;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 121
    .local v2, "data":[B
    invoke-virtual {v4, v2}, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a([B)Lcom/pengyouwan/framework/volley/b$a;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    .line 131
    if-eqz v1, :cond_2

    .line 133
    :try_start_4
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/toolbox/c$b;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v7, v8

    .line 121
    goto :goto_0

    .line 134
    :catch_0
    move-exception v6

    .line 135
    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 122
    .end local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .end local v2    # "data":[B
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :catch_1
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    .line 133
    :try_start_6
    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/c$b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 134
    :catch_2
    move-exception v6

    .line 135
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 126
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/NegativeArraySizeException;
    :goto_2
    :try_start_7
    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/NegativeArraySizeException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    .line 133
    :try_start_8
    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/c$b;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 134
    :catch_4
    move-exception v6

    .line 135
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 130
    .end local v3    # "e":Ljava/lang/NegativeArraySizeException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 131
    :goto_3
    if-eqz v0, :cond_3

    .line 133
    :try_start_9
    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/c$b;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 138
    :cond_3
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 109
    .end local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .end local v4    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .end local v5    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 134
    .restart local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v4    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .restart local v5    # "file":Ljava/io/File;
    :catch_5
    move-exception v6

    .line 135
    .restart local v6    # "ioe":Ljava/io/IOException;
    goto/16 :goto_0

    .line 130
    .end local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    goto :goto_3

    .line 126
    .end local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    goto :goto_2

    .line 122
    .end local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    .restart local v0    # "cis":Lcom/pengyouwan/framework/volley/toolbox/c$b;
    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 148
    iget-object v6, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 149
    const-string v6, "Unable to create cache dir %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/pengyouwan/framework/volley/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 155
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 158
    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v3, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 161
    .local v4, "fis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .local v5, "fis":Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-static {v5}, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a(Ljava/io/InputStream;)Lcom/pengyouwan/framework/volley/toolbox/c$a;

    move-result-object v1

    .line 163
    .local v1, "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    .line 164
    iget-object v8, v1, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-direct {p0, v8, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/c$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    if-eqz v5, :cond_5

    .line 172
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    .line 158
    .end local v1    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_3

    .line 167
    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    :cond_3
    if-eqz v4, :cond_2

    .line 172
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 174
    :catch_1
    move-exception v8

    goto :goto_1

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 171
    :goto_3
    if-eqz v4, :cond_4

    .line 172
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    :cond_4
    :goto_4
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 147
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 174
    .restart local v1    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v1    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 169
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 165
    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v1    # "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .restart local v5    # "fis":Ljava/io/BufferedInputStream;
    :cond_5
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/b$a;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/pengyouwan/framework/volley/b$a;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v5, p2, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    array-length v5, v5

    invoke-direct {p0, v5}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(I)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 205
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 206
    .local v3, "fos":Ljava/io/BufferedOutputStream;
    new-instance v1, Lcom/pengyouwan/framework/volley/toolbox/c$a;

    invoke-direct {v1, p1, p2}, Lcom/pengyouwan/framework/volley/toolbox/c$a;-><init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/b$a;)V

    .line 207
    .local v1, "e":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    invoke-virtual {v1, v3}, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a(Ljava/io/OutputStream;)Z

    move-result v4

    .line 208
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 209
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 210
    const-string v5, "Failed to write header for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v1    # "e":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catch_0
    move-exception v5

    .line 219
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 220
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 221
    const-string v5, "Could not clean up file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v0    # "deleted":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    .restart local v1    # "e":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .restart local v3    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "success":Z
    :cond_1
    :try_start_3
    iget-object v5, p2, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 214
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 215
    invoke-direct {p0, p1, v1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/c$a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 202
    .end local v1    # "e":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/BufferedOutputStream;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 231
    .local v0, "deleted":Z
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->e(Ljava/lang/String;)V

    .line 232
    if-nez v0, :cond_0

    .line 233
    const-string v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 234
    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 233
    invoke-static {v1, v2}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    .end local v0    # "deleted":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
