.class final Lcom/pengyouwan/framework/v4/ac$a;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lcom/pengyouwan/framework/v4/ac;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/ac;I)V
    .locals 1
    .param p2, "offset"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac$a;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>.a<TT;>;"
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/ac$a;->e:Lcom/pengyouwan/framework/v4/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->d:Z

    .line 42
    iput p2, p0, Lcom/pengyouwan/framework/v4/ac$a;->a:I

    .line 43
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/ac;->a()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 48
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac$a;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>.a<TT;>;"
    iget v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    iget v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac$a;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>.a<TT;>;"
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->e:Lcom/pengyouwan/framework/v4/ac;

    iget v2, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    iget v3, p0, Lcom/pengyouwan/framework/v4/ac$a;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/framework/v4/ac;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->d:Z

    .line 56
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/pengyouwan/framework/v4/ac$a;, "Lcom/pengyouwan/framework/v4/ac<TK;TV;>.a<TT;>;"
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->d:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    .line 65
    iget v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->b:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->d:Z

    .line 67
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ac$a;->e:Lcom/pengyouwan/framework/v4/ac;

    iget v1, p0, Lcom/pengyouwan/framework/v4/ac$a;->c:I

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ac;->a(I)V

    .line 68
    return-void
.end method
