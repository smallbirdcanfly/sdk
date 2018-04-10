.class final Lcom/pengyouwan/framework/v4/ac$b;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/ac;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/ac;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "object":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ac$b;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v1

    .line 172
    .local v1, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 172
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/pengyouwan/framework/v4/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->c()V

    .line 181
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 185
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 187
    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/framework/v4/ac;->a(Ljava/lang/Object;)I

    move-result v2

    .line 189
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 192
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "foundVal":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pengyouwan/framework/v4/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 200
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ac$b;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/pengyouwan/framework/v4/ac;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "result":I
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 261
    return v2

    .line 256
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v4, v0, v5}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v3

    .line 258
    .local v3, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    move v6, v5

    .line 259
    :goto_1
    if-nez v3, :cond_2

    move v4, v5

    .line 258
    :goto_2
    xor-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 255
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move v6, v4

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/pengyouwan/framework/v4/ac$d;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ac$d;-><init>(Lcom/pengyouwan/framework/v4/ac;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac$b;->a:Lcom/pengyouwan/framework/v4/ac;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
