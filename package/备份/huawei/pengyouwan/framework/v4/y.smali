.class public Lcom/pengyouwan/framework/v4/y;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/pengyouwan/framework/v4/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/y$a",
            "<TD;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 369
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->c:Z

    .line 195
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->e:Z

    .line 196
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->d:Z

    .line 197
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/y;->b()V

    .line 198
    return-void
.end method

.method public a(ILcom/pengyouwan/framework/v4/y$a;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/pengyouwan/framework/v4/y$a",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    .local p2, "listener":Lcom/pengyouwan/framework/v4/y$a;, "Lcom/pengyouwan/framework/v4/y$a<TD;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-object p2, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    .line 133
    iput p1, p0, Lcom/pengyouwan/framework/v4/y;->a:I

    .line 134
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/v4/y$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/v4/y$a",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    .local p1, "listener":Lcom/pengyouwan/framework/v4/y$a;, "Lcom/pengyouwan/framework/v4/y$a<TD;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    if-eq v0, p1, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 392
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/y;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 393
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/y;->b:Lcom/pengyouwan/framework/v4/y$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 394
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->g:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 396
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 399
    :cond_1
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->e:Z

    if-eqz v0, :cond_3

    .line 400
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 401
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 403
    :cond_3
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 206
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->c:Z

    .line 243
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/y;->d()V

    .line 244
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 253
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/y;->f()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/y;->e:Z

    .line 292
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->c:Z

    .line 293
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->d:Z

    .line 294
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->f:Z

    .line 295
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/y;->g:Z

    .line 296
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 305
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    .local p0, "this":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 377
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v1, p0, Lcom/pengyouwan/framework/v4/y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
