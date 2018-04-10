.class public abstract Lcom/pengyouwan/framework/volley/n;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/volley/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/pengyouwan/framework/volley/n",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static p:J


# instance fields
.field private final a:Lcom/pengyouwan/framework/volley/v$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/pengyouwan/framework/volley/p$a;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/pengyouwan/framework/volley/o;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/pengyouwan/framework/volley/r;

.field private n:Lcom/pengyouwan/framework/volley/b$a;

.field private o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 3
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/pengyouwan/framework/volley/p$a;

    .prologue
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-boolean v0, Lcom/pengyouwan/framework/volley/v$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pengyouwan/framework/volley/v$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/volley/v$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/pengyouwan/framework/volley/n;->a:Lcom/pengyouwan/framework/volley/v$a;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->j:Z

    .line 128
    iput-boolean v2, p0, Lcom/pengyouwan/framework/volley/n;->k:Z

    .line 133
    iput-boolean v2, p0, Lcom/pengyouwan/framework/volley/n;->l:Z

    .line 146
    iput-object v1, p0, Lcom/pengyouwan/framework/volley/n;->n:Lcom/pengyouwan/framework/volley/b$a;

    .line 176
    iput p1, p0, Lcom/pengyouwan/framework/volley/n;->b:I

    .line 177
    iput-object p2, p0, Lcom/pengyouwan/framework/volley/n;->c:Ljava/lang/String;

    .line 178
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/volley/n;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/n;->e:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/pengyouwan/framework/volley/n;->g:Lcom/pengyouwan/framework/volley/p$a;

    .line 180
    new-instance v0, Lcom/pengyouwan/framework/volley/d;

    invoke-direct {v0}, Lcom/pengyouwan/framework/volley/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/r;)Lcom/pengyouwan/framework/volley/n;

    .line 182
    invoke-static {p2}, Lcom/pengyouwan/framework/volley/n;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/volley/n;->f:I

    .line 183
    return-void

    :cond_0
    move-object v0, v1

    .line 77
    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "method"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/pengyouwan/framework/volley/n;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/pengyouwan/framework/volley/n;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 11
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v3, "jobj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 547
    .local v2, "jarry":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 557
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 558
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "reqParm":Ljava/lang/String;
    const-string v8, "request"

    invoke-static {v8, v4}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v6, Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/pengyouwan/framework/b/d;->b([B)[B

    move-result-object v8

    const-string v9, "ISO-8859-1"

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 561
    .local v6, "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "param="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "ISO-8859-1"

    invoke-static {v6, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, "reqStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 566
    .end local v4    # "reqParm":Ljava/lang/String;
    .end local v5    # "reqStr":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 547
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 554
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 554
    invoke-virtual {v3, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 563
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 564
    .local v7, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Encoding not supported: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 565
    .end local v7    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "\u52a0\u5bc6\u51fa\u9519"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    goto :goto_1
.end method

.method static synthetic b(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/v$a;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->a:Lcom/pengyouwan/framework/volley/v$a;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 240
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget v0, p0, Lcom/pengyouwan/framework/volley/n;->b:I

    return v0
.end method

.method public a(Lcom/pengyouwan/framework/volley/n;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/n",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    .local p1, "other":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->t()Lcom/pengyouwan/framework/volley/n$a;

    move-result-object v0

    .line 689
    .local v0, "left":Lcom/pengyouwan/framework/volley/n$a;
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/n;->t()Lcom/pengyouwan/framework/volley/n$a;

    move-result-object v1

    .line 694
    .local v1, "right":Lcom/pengyouwan/framework/volley/n$a;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/framework/volley/n;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/pengyouwan/framework/volley/n;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/pengyouwan/framework/volley/n$a;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/n$a;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public final a(I)Lcom/pengyouwan/framework/volley/n;
    .locals 1
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/n;->h:Ljava/lang/Integer;

    .line 321
    return-object p0
.end method

.method public a(Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/n;
    .locals 0
    .param p1, "entry"    # Lcom/pengyouwan/framework/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/b$a;",
            ")",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n;->n:Lcom/pengyouwan/framework/volley/b$a;

    .line 377
    return-object p0
.end method

.method public a(Lcom/pengyouwan/framework/volley/o;)Lcom/pengyouwan/framework/volley/n;
    .locals 0
    .param p1, "requestQueue"    # Lcom/pengyouwan/framework/volley/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/o;",
            ")",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n;->i:Lcom/pengyouwan/framework/volley/o;

    .line 311
    return-object p0
.end method

.method public a(Lcom/pengyouwan/framework/volley/r;)Lcom/pengyouwan/framework/volley/n;
    .locals 0
    .param p1, "retryPolicy"    # Lcom/pengyouwan/framework/volley/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/r;",
            ")",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n;->m:Lcom/pengyouwan/framework/volley/r;

    .line 250
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/pengyouwan/framework/volley/n;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/pengyouwan/framework/volley/n",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n;->o:Ljava/lang/Object;

    .line 201
    return-object p0
.end method

.method protected abstract a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/j;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/pengyouwan/framework/volley/u;)Lcom/pengyouwan/framework/volley/u;
    .locals 0
    .param p1, "volleyError"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 657
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 257
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    sget-boolean v0, Lcom/pengyouwan/framework/volley/v$a;->a:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->a:Lcom/pengyouwan/framework/volley/v$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/pengyouwan/framework/volley/v$a;->a(Ljava/lang/String;J)V

    .line 260
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget v0, p0, Lcom/pengyouwan/framework/volley/n;->f:I

    return v0
.end method

.method public b(Lcom/pengyouwan/framework/volley/u;)V
    .locals 1
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 677
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->g:Lcom/pengyouwan/framework/volley/p$a;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->g:Lcom/pengyouwan/framework/volley/p$a;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/volley/p$a;->onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V

    .line 680
    :cond_0
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method b(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 271
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/n;->i:Lcom/pengyouwan/framework/volley/o;

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/n;->i:Lcom/pengyouwan/framework/volley/o;

    invoke-virtual {v3, p0}, Lcom/pengyouwan/framework/volley/o;->b(Lcom/pengyouwan/framework/volley/n;)V

    .line 273
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->c()V

    .line 275
    :cond_0
    sget-boolean v3, Lcom/pengyouwan/framework/volley/v$a;->a:Z

    if-eqz v3, :cond_1

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 277
    .local v1, "threadId":J
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 280
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    .local v0, "mainThread":Landroid/os/Handler;
    new-instance v3, Lcom/pengyouwan/framework/volley/n$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/pengyouwan/framework/volley/n$1;-><init>(Lcom/pengyouwan/framework/volley/n;Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    .end local v0    # "mainThread":Landroid/os/Handler;
    .end local v1    # "threadId":J
    :cond_1
    :goto_0
    return-void

    .line 291
    .restart local v1    # "threadId":J
    :cond_2
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/n;->a:Lcom/pengyouwan/framework/volley/v$a;

    invoke-virtual {v3, p1, v1, v2}, Lcom/pengyouwan/framework/volley/v$a;->a(Ljava/lang/String;J)V

    .line 292
    iget-object v3, p0, Lcom/pengyouwan/framework/volley/n;->a:Lcom/pengyouwan/framework/volley/v$a;

    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pengyouwan/framework/volley/v$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 300
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/n;->g:Lcom/pengyouwan/framework/volley/p$a;

    .line 301
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 359
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n;->d:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/pengyouwan/framework/volley/n;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/n;->a(Lcom/pengyouwan/framework/volley/n;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pengyouwan/framework/volley/n;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/pengyouwan/framework/volley/b$a;
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->n:Lcom/pengyouwan/framework/volley/b$a;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->k:Z

    .line 392
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->k:Z

    return v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->k()Ljava/util/Map;

    move-result-object v0

    .line 474
    .local v0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->o()Ljava/util/Map;

    move-result-object v0

    .line 532
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pengyouwan/framework/volley/n;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 584
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->j:Z

    return v0
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
    .line 600
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    sget-object v0, Lcom/pengyouwan/framework/volley/n$a;->b:Lcom/pengyouwan/framework/volley/n$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "trafficStatsTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/pengyouwan/framework/volley/n;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "[X] "

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 701
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/n;->t()Lcom/pengyouwan/framework/volley/n$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/framework/volley/n;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "[ ] "

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 610
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->m:Lcom/pengyouwan/framework/volley/r;

    invoke-interface {v0}, Lcom/pengyouwan/framework/volley/r;->a()I

    move-result v0

    return v0
.end method

.method public v()Lcom/pengyouwan/framework/volley/r;
    .locals 1

    .prologue
    .line 617
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n;->m:Lcom/pengyouwan/framework/volley/r;

    return-object v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 625
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->l:Z

    .line 626
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 632
    .local p0, "this":Lcom/pengyouwan/framework/volley/n;, "Lcom/pengyouwan/framework/volley/n<TT;>;"
    iget-boolean v0, p0, Lcom/pengyouwan/framework/volley/n;->l:Z

    return v0
.end method
