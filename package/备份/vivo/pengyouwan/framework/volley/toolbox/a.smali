.class public Lcom/pengyouwan/framework/volley/toolbox/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/g;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/pengyouwan/framework/volley/toolbox/g;

.field protected final c:Lcom/pengyouwan/framework/volley/toolbox/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/pengyouwan/framework/volley/v;->b:Z

    sput-boolean v0, Lcom/pengyouwan/framework/volley/toolbox/a;->a:Z

    .line 60
    const/16 v0, 0xbb8

    sput v0, Lcom/pengyouwan/framework/volley/toolbox/a;->d:I

    .line 62
    const/16 v0, 0x1000

    sput v0, Lcom/pengyouwan/framework/volley/toolbox/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/g;)V
    .locals 2
    .param p1, "httpStack"    # Lcom/pengyouwan/framework/volley/toolbox/g;

    .prologue
    .line 75
    new-instance v0, Lcom/pengyouwan/framework/volley/toolbox/b;

    sget v1, Lcom/pengyouwan/framework/volley/toolbox/a;->e:I

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/volley/toolbox/a;-><init>(Lcom/pengyouwan/framework/volley/toolbox/g;Lcom/pengyouwan/framework/volley/toolbox/b;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/g;Lcom/pengyouwan/framework/volley/toolbox/b;)V
    .locals 0
    .param p1, "httpStack"    # Lcom/pengyouwan/framework/volley/toolbox/g;
    .param p2, "pool"    # Lcom/pengyouwan/framework/volley/toolbox/b;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->b:Lcom/pengyouwan/framework/volley/toolbox/g;

    .line 84
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->c:Lcom/pengyouwan/framework/volley/toolbox/b;

    .line 85
    return-void
.end method

.method protected static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .param p0, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 282
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 285
    return-object v1

    .line 283
    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(JLcom/pengyouwan/framework/volley/n;[BLorg/apache/http/StatusLine;)V
    .locals 4
    .param p1, "requestLifetime"    # J
    .param p4, "responseContents"    # [B
    .param p5, "statusLine"    # Lorg/apache/http/StatusLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    sget-boolean v0, Lcom/pengyouwan/framework/volley/toolbox/a;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/pengyouwan/framework/volley/toolbox/a;->d:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 195
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 196
    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    .line 197
    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 198
    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/pengyouwan/framework/volley/n;->v()Lcom/pengyouwan/framework/volley/r;

    move-result-object v3

    invoke-interface {v3}, Lcom/pengyouwan/framework/volley/r;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 195
    invoke-static {v1, v2}, Lcom/pengyouwan/framework/volley/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_1
    return-void

    .line 197
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V
    .locals 7
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/pengyouwan/framework/volley/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;",
            "Lcom/pengyouwan/framework/volley/u;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/u;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->v()Lcom/pengyouwan/framework/volley/r;

    move-result-object v2

    .line 212
    .local v2, "retryPolicy":Lcom/pengyouwan/framework/volley/r;
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->u()I

    move-result v1

    .line 215
    .local v1, "oldTimeout":I
    :try_start_0
    invoke-interface {v2, p2}, Lcom/pengyouwan/framework/volley/r;->a(Lcom/pengyouwan/framework/volley/u;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/volley/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const-string v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 222
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lcom/pengyouwan/framework/volley/u;
    const-string v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1, v3}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/lang/String;)V

    .line 219
    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/pengyouwan/framework/volley/b$a;)V
    .locals 5
    .param p2, "entry"    # Lcom/pengyouwan/framework/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pengyouwan/framework/volley/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p2, Lcom/pengyouwan/framework/volley/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 231
    const-string v1, "If-None-Match"

    iget-object v2, p2, Lcom/pengyouwan/framework/volley/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_2
    iget-wide v1, p2, Lcom/pengyouwan/framework/volley/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 235
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/pengyouwan/framework/volley/b$a;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 236
    .local v0, "refTime":Ljava/util/Date;
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pengyouwan/framework/volley/s;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 247
    new-instance v1, Lcom/pengyouwan/framework/volley/toolbox/k;

    iget-object v5, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->c:Lcom/pengyouwan/framework/volley/toolbox/b;

    .line 248
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    .line 247
    invoke-direct {v1, v5, v6}, Lcom/pengyouwan/framework/volley/toolbox/k;-><init>(Lcom/pengyouwan/framework/volley/toolbox/b;I)V

    .line 249
    .local v1, "bytes":Lcom/pengyouwan/framework/volley/toolbox/k;
    const/4 v0, 0x0

    .line 251
    .local v0, "buffer":[B
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 252
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 253
    new-instance v5, Lcom/pengyouwan/framework/volley/s;

    invoke-direct {v5}, Lcom/pengyouwan/framework/volley/s;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 265
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_0
    iget-object v6, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->c:Lcom/pengyouwan/framework/volley/toolbox/b;

    invoke-virtual {v6, v0}, Lcom/pengyouwan/framework/volley/toolbox/b;->a([B)V

    .line 273
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/toolbox/k;->close()V

    .line 274
    throw v5

    .line 255
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->c:Lcom/pengyouwan/framework/volley/toolbox/b;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/pengyouwan/framework/volley/toolbox/b;->a(I)[B

    move-result-object v0

    .line 257
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 260
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/toolbox/k;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 265
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 272
    :goto_2
    iget-object v6, p0, Lcom/pengyouwan/framework/volley/toolbox/a;->c:Lcom/pengyouwan/framework/volley/toolbox/b;

    invoke-virtual {v6, v0}, Lcom/pengyouwan/framework/volley/toolbox/b;->a([B)V

    .line 273
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/toolbox/k;->close()V

    .line 260
    return-object v5

    .line 258
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v1, v0, v5, v2}, Lcom/pengyouwan/framework/volley/toolbox/k;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 266
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 270
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/pengyouwan/framework/volley/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/j;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;)",
            "Lcom/pengyouwan/framework/volley/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/u;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "request":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<*>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 91
    .local v24, "requestStart":J
    :goto_0
    const/16 v22, 0x0

    .line 92
    .local v22, "httpResponse":Lorg/apache/http/HttpResponse;
    const/16 v26, 0x0

    .line 93
    .local v26, "responseContents":[B
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 96
    .local v5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v21, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->g()Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Ljava/util/Map;Lcom/pengyouwan/framework/volley/b$a;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pengyouwan/framework/volley/toolbox/a;->b:Lcom/pengyouwan/framework/volley/toolbox/g;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/g;->a(Lcom/pengyouwan/framework/volley/n;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 99
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 100
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 101
    .local v13, "statusCode":I
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/framework/volley/toolbox/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v5

    .line 103
    const/16 v2, 0x130

    if-ne v13, v2, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->g()Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v20

    .line 106
    .local v20, "entry":Lcom/pengyouwan/framework/volley/b$a;
    if-nez v20, :cond_0

    .line 107
    new-instance v2, Lcom/pengyouwan/framework/volley/j;

    const/16 v3, 0x130

    const/4 v4, 0x0

    .line 108
    const/4 v6, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v7, v14, v24

    .line 107
    invoke-direct/range {v2 .. v8}, Lcom/pengyouwan/framework/volley/j;-><init>(I[BLjava/util/Map;ZJ)V

    move-object/from16 v10, v26

    .line 144
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v20    # "entry":Lcom/pengyouwan/framework/volley/b$a;
    .end local v26    # "responseContents":[B
    .local v10, "responseContents":[B
    :goto_1
    return-object v2

    .line 115
    .end local v10    # "responseContents":[B
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v20    # "entry":Lcom/pengyouwan/framework/volley/b$a;
    .restart local v26    # "responseContents":[B
    :cond_0
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    new-instance v6, Lcom/pengyouwan/framework/volley/j;

    const/16 v7, 0x130

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/pengyouwan/framework/volley/b$a;->a:[B

    .line 117
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/pengyouwan/framework/volley/b$a;->g:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 118
    sub-long v11, v2, v24

    .line 116
    invoke-direct/range {v6 .. v12}, Lcom/pengyouwan/framework/volley/j;-><init>(I[BLjava/util/Map;ZJ)V

    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    move-object/from16 v10, v26

    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    move-object v2, v6

    goto :goto_1

    .line 122
    .end local v10    # "responseContents":[B
    .end local v20    # "entry":Lcom/pengyouwan/framework/volley/b$a;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v26    # "responseContents":[B
    :cond_1
    const/16 v2, 0x12d

    if-eq v13, v2, :cond_2

    .line 123
    const/16 v2, 0x12e

    if-ne v13, v2, :cond_3

    .line 124
    :cond_2
    const-string v2, "Location"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 125
    .local v23, "newUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/n;->c(Ljava/lang/String;)V

    .line 130
    .end local v23    # "newUrl":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 131
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 139
    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    :goto_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v7, v2, v24

    .local v7, "requestLifetime":J
    move-object/from16 v6, p0

    move-object/from16 v9, p1

    .line 140
    invoke-direct/range {v6 .. v11}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(JLcom/pengyouwan/framework/volley/n;[BLorg/apache/http/StatusLine;)V

    .line 141
    const/16 v2, 0xc8

    if-lt v13, v2, :cond_4

    const/16 v2, 0x12b

    if-le v13, v2, :cond_6

    .line 142
    :cond_4
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 146
    .end local v7    # "requestLifetime":J
    :catch_0
    move-exception v19

    .line 147
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v13    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v19, "e":Ljava/net/SocketTimeoutException;
    :goto_3
    const-string v2, "socket"

    new-instance v3, Lcom/pengyouwan/framework/volley/t;

    invoke-direct {v3}, Lcom/pengyouwan/framework/volley/t;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto/16 :goto_0

    .line 135
    .end local v10    # "responseContents":[B
    .end local v19    # "e":Ljava/net/SocketTimeoutException;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v13    # "statusCode":I
    .restart local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    new-array v10, v2, [B
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    goto :goto_2

    .line 144
    .restart local v7    # "requestLifetime":J
    :cond_6
    :try_start_3
    new-instance v12, Lcom/pengyouwan/framework/volley/j;

    const/16 v16, 0x0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v17, v2, v24

    move-object v14, v10

    move-object v15, v5

    .line 144
    invoke-direct/range {v12 .. v18}, Lcom/pengyouwan/framework/volley/j;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v12

    goto/16 :goto_1

    .line 148
    .end local v7    # "requestLifetime":J
    .end local v10    # "responseContents":[B
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v13    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :catch_1
    move-exception v19

    move-object/from16 v10, v26

    .line 149
    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    .local v19, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_4
    const-string v2, "connection"

    new-instance v3, Lcom/pengyouwan/framework/volley/t;

    invoke-direct {v3}, Lcom/pengyouwan/framework/volley/t;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto/16 :goto_0

    .line 150
    .end local v10    # "responseContents":[B
    .end local v19    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v26    # "responseContents":[B
    :catch_2
    move-exception v19

    move-object/from16 v10, v26

    .line 151
    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    .local v19, "e":Ljava/net/MalformedURLException;
    :goto_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 152
    .end local v10    # "responseContents":[B
    .end local v19    # "e":Ljava/net/MalformedURLException;
    .restart local v26    # "responseContents":[B
    :catch_3
    move-exception v19

    move-object/from16 v10, v26

    .line 153
    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    .local v19, "e":Ljava/io/IOException;
    :goto_6
    const/4 v13, 0x0

    .line 154
    .restart local v13    # "statusCode":I
    const/4 v12, 0x0

    .line 155
    .local v12, "networkResponse":Lcom/pengyouwan/framework/volley/j;
    if-eqz v22, :cond_9

    .line 156
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 160
    const/16 v2, 0x12d

    if-eq v13, v2, :cond_7

    .line 161
    const/16 v2, 0x12e

    if-ne v13, v2, :cond_a

    .line 162
    :cond_7
    const-string v2, "Request at %s has been redirected to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 162
    invoke-static {v2, v3}, Lcom/pengyouwan/framework/volley/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_7
    if-eqz v10, :cond_e

    .line 168
    new-instance v12, Lcom/pengyouwan/framework/volley/j;

    .line 169
    .end local v12    # "networkResponse":Lcom/pengyouwan/framework/volley/j;
    const/16 v16, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v17, v2, v24

    move-object v14, v10

    move-object v15, v5

    .line 168
    invoke-direct/range {v12 .. v18}, Lcom/pengyouwan/framework/volley/j;-><init>(I[BLjava/util/Map;ZJ)V

    .line 170
    .restart local v12    # "networkResponse":Lcom/pengyouwan/framework/volley/j;
    const/16 v2, 0x191

    if-eq v13, v2, :cond_8

    .line 171
    const/16 v2, 0x193

    if-ne v13, v2, :cond_b

    .line 172
    :cond_8
    const-string v2, "auth"

    new-instance v3, Lcom/pengyouwan/framework/volley/a;

    .line 173
    invoke-direct {v3, v12}, Lcom/pengyouwan/framework/volley/a;-><init>(Lcom/pengyouwan/framework/volley/j;)V

    .line 172
    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto/16 :goto_0

    .line 158
    :cond_9
    new-instance v2, Lcom/pengyouwan/framework/volley/k;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/pengyouwan/framework/volley/k;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 165
    :cond_a
    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/pengyouwan/framework/volley/n;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Lcom/pengyouwan/framework/volley/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 174
    :cond_b
    const/16 v2, 0x12d

    if-eq v13, v2, :cond_c

    .line 175
    const/16 v2, 0x12e

    if-ne v13, v2, :cond_d

    .line 176
    :cond_c
    const-string v2, "redirect"

    new-instance v3, Lcom/pengyouwan/framework/volley/m;

    .line 177
    invoke-direct {v3, v12}, Lcom/pengyouwan/framework/volley/m;-><init>(Lcom/pengyouwan/framework/volley/j;)V

    .line 176
    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/pengyouwan/framework/volley/toolbox/a;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/n;Lcom/pengyouwan/framework/volley/u;)V

    goto/16 :goto_0

    .line 180
    :cond_d
    new-instance v2, Lcom/pengyouwan/framework/volley/s;

    invoke-direct {v2, v12}, Lcom/pengyouwan/framework/volley/s;-><init>(Lcom/pengyouwan/framework/volley/j;)V

    throw v2

    .line 183
    :cond_e
    new-instance v2, Lcom/pengyouwan/framework/volley/i;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/pengyouwan/framework/volley/i;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 152
    .end local v12    # "networkResponse":Lcom/pengyouwan/framework/volley/j;
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v19

    goto/16 :goto_6

    .line 150
    :catch_5
    move-exception v19

    goto/16 :goto_5

    .line 148
    :catch_6
    move-exception v19

    goto/16 :goto_4

    .line 146
    .end local v10    # "responseContents":[B
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v13    # "statusCode":I
    .end local v21    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "responseContents":[B
    :catch_7
    move-exception v19

    move-object/from16 v10, v26

    .end local v26    # "responseContents":[B
    .restart local v10    # "responseContents":[B
    goto/16 :goto_3
.end method
