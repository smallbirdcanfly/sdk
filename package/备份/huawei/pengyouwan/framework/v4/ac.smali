.class abstract Lcom/pengyouwan/framework/v4/ac;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/ac$a;,
        Lcom/pengyouwan/framework/v4/ac$b;,
        Lcom/pengyouwan/framework/v4/ac$c;,
        Lcom/pengyouwan/framework/v4/ac$d;,
        Lcom/pengyouwan/framework/v4/ac$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field b:Lcom/pengyouwan/framework/v4/ac$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/ac",
            "<TK;TV;>.b;"
        }
    .end annotation
.end field

.field c:Lcom/pengyouwan/framework/v4/ac$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/ac",
            "<TK;TV;>.c;"
        }
    .end annotation
.end field

.field d:Lcom/pengyouwan/framework/v4/ac$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/ac",
            "<TK;TV;>.e;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 456
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 457
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    if-ne p0, p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v2

    .line 514
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 515
    check-cast v1, Ljava/util/Set;

    .line 518
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/NullPointerException;
    move v2, v3

    .line 520
    goto :goto_0

    .line 521
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, "ignored":Ljava/lang/ClassCastException;
    move v2, v3

    .line 522
    goto :goto_0

    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_3
    move v2, v3

    .line 525
    goto :goto_0
.end method

.method public static b(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 466
    .local v1, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 467
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 470
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 468
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static c(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 475
    .local v1, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 476
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 481
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 477
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 481
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/Object;)I
.end method

.method protected abstract a(II)Ljava/lang/Object;
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v0

    .line 496
    .local v0, "N":I
    array-length v3, p1

    if-ge v3, v0, :cond_0

    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 499
    .local v2, "newArray":[Ljava/lang/Object;
    move-object p1, v2

    .line 501
    .end local v2    # "newArray":[Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 504
    array-length v3, p1

    if-le v3, v0, :cond_1

    .line 505
    const/4 v3, 0x0

    aput-object v3, p1, v0

    .line 507
    :cond_1
    return-object p1

    .line 502
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Object;)I
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public b(I)[Ljava/lang/Object;
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 486
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v0

    .line 487
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 488
    .local v2, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 491
    return-object v2

    .line 489
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract c()V
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->b:Lcom/pengyouwan/framework/v4/ac$b;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/pengyouwan/framework/v4/ac$b;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/ac$b;-><init>(Lcom/pengyouwan/framework/v4/ac;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->b:Lcom/pengyouwan/framework/v4/ac$b;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->b:Lcom/pengyouwan/framework/v4/ac$b;

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->c:Lcom/pengyouwan/framework/v4/ac$c;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lcom/pengyouwan/framework/v4/ac$c;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/ac$c;-><init>(Lcom/pengyouwan/framework/v4/ac;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->c:Lcom/pengyouwan/framework/v4/ac$c;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->c:Lcom/pengyouwan/framework/v4/ac$c;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->d:Lcom/pengyouwan/framework/v4/ac$e;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/pengyouwan/framework/v4/ac$e;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/ac$e;-><init>(Lcom/pengyouwan/framework/v4/ac;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->d:Lcom/pengyouwan/framework/v4/ac$e;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac;->d:Lcom/pengyouwan/framework/v4/ac$e;

    return-object v0
.end method
