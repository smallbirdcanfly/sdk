.class Lcom/pengyouwan/framework/volley/toolbox/c$a;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/volley/toolbox/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/b$a;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/pengyouwan/framework/volley/b$a;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    .line 379
    iget-object v0, p2, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->a:J

    .line 380
    iget-object v0, p2, Lcom/pengyouwan/framework/volley/b$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 381
    iget-wide v0, p2, Lcom/pengyouwan/framework/volley/b$a;->c:J

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->d:J

    .line 382
    iget-wide v0, p2, Lcom/pengyouwan/framework/volley/b$a;->d:J

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->e:J

    .line 383
    iget-wide v0, p2, Lcom/pengyouwan/framework/volley/b$a;->e:J

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->f:J

    .line 384
    iget-wide v0, p2, Lcom/pengyouwan/framework/volley/b$a;->f:J

    iput-wide v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->g:J

    .line 385
    iget-object v0, p2, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->h:Ljava/util/Map;

    .line 386
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/pengyouwan/framework/volley/toolbox/c$a;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/volley/toolbox/c$a;-><init>()V

    .line 395
    .local v0, "entry":Lcom/pengyouwan/framework/volley/toolbox/c$a;
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 396
    .local v1, "magic":I
    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    .line 398
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 400
    :cond_0
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    .line 401
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 402
    iget-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    .line 405
    :cond_1
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->d:J

    .line 406
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->e:J

    .line 407
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->f:J

    .line 408
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->b(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->g:J

    .line 409
    invoke-static {p0}, Lcom/pengyouwan/framework/volley/toolbox/c;->d(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->h:Ljava/util/Map;

    .line 411
    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/pengyouwan/framework/volley/b$a;
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 418
    new-instance v0, Lcom/pengyouwan/framework/volley/b$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/volley/b$a;-><init>()V

    .line 419
    .local v0, "e":Lcom/pengyouwan/framework/volley/b$a;
    iput-object p1, v0, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    .line 420
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/pengyouwan/framework/volley/b$a;->b:Ljava/lang/String;

    .line 421
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->d:J

    iput-wide v1, v0, Lcom/pengyouwan/framework/volley/b$a;->c:J

    .line 422
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->e:J

    iput-wide v1, v0, Lcom/pengyouwan/framework/volley/b$a;->d:J

    .line 423
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->f:J

    iput-wide v1, v0, Lcom/pengyouwan/framework/volley/b$a;->e:J

    .line 424
    iget-wide v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->g:J

    iput-wide v1, v0, Lcom/pengyouwan/framework/volley/b$a;->f:J

    .line 425
    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->h:Ljava/util/Map;

    iput-object v1, v0, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    .line 426
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    const v3, 0x20150306

    :try_start_0
    invoke-static {p1, v3}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;I)V

    .line 436
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 437
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-static {p1, v3}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 438
    iget-wide v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->d:J

    invoke-static {p1, v3, v4}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;J)V

    .line 439
    iget-wide v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->e:J

    invoke-static {p1, v3, v4}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;J)V

    .line 440
    iget-wide v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->f:J

    invoke-static {p1, v3, v4}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;J)V

    .line 441
    iget-wide v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->g:J

    invoke-static {p1, v3, v4}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/io/OutputStream;J)V

    .line 442
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->h:Ljava/util/Map;

    invoke-static {v3, p1}, Lcom/pengyouwan/framework/volley/toolbox/c;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 443
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 447
    :goto_1
    return v1

    .line 437
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/toolbox/c$a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 447
    goto :goto_1
.end method
