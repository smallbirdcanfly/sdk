.class public Lcom/pengyouwan/framework/v4/m;
.super Lcom/pengyouwan/framework/v4/al;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pengyouwan/framework/v4/al",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/pengyouwan/framework/v4/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/ac",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/al;-><init>()V

    .line 55
    return-void
.end method

.method private b()Lcom/pengyouwan/framework/v4/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pengyouwan/framework/v4/ac",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/m;->a:Lcom/pengyouwan/framework/v4/ac;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/pengyouwan/framework/v4/m$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/m$1;-><init>(Lcom/pengyouwan/framework/v4/m;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/m;->a:Lcom/pengyouwan/framework/v4/ac;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/m;->a:Lcom/pengyouwan/framework/v4/ac;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
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
    .line 179
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/m;->b()Lcom/pengyouwan/framework/v4/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/m;->b()Lcom/pengyouwan/framework/v4/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/pengyouwan/framework/v4/m;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/m;->a(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    return-void

    .line 140
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/pengyouwan/framework/v4/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/pengyouwan/framework/v4/m;, "Lcom/pengyouwan/framework/v4/m<TK;TV;>;"
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/m;->b()Lcom/pengyouwan/framework/v4/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ac;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
