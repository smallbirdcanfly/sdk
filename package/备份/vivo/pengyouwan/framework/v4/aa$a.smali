.class final Lcom/pengyouwan/framework/v4/aa$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/v4/y$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Lcom/pengyouwan/framework/v4/z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/z$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/pengyouwan/framework/v4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/y",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Lcom/pengyouwan/framework/v4/aa$a;

.field final synthetic o:Lcom/pengyouwan/framework/v4/aa;


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->j:Z

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    if-nez v0, :cond_0

    .line 245
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    .line 247
    sget-boolean v0, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Starting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    iget v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->a:I

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/pengyouwan/framework/v4/z$a;->a(ILandroid/os/Bundle;)Lcom/pengyouwan/framework/v4/y;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_4
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    if-nez v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    iget v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/pengyouwan/framework/v4/y;->a(ILcom/pengyouwan/framework/v4/y$a;)V

    .line 260
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/y;->a()V

    goto :goto_0
.end method

.method a(Lcom/pengyouwan/framework/v4/y;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/v4/y",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "loader":Lcom/pengyouwan/framework/v4/y;, "Lcom/pengyouwan/framework/v4/y<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    if-eqz v1, :cond_3

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v0, v1, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 422
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    invoke-virtual {p1, p2}, Lcom/pengyouwan/framework/v4/y;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    invoke-interface {v1, p1, p2}, Lcom/pengyouwan/framework/v4/z$a;->a(Lcom/pengyouwan/framework/v4/y;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v1, :cond_2

    .line 427
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, v1, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v0, v1, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 430
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    .line 432
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    return-void

    .line 425
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 426
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v0, v2, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 429
    :cond_4
    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/y;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 461
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->n:Lcom/pengyouwan/framework/v4/aa$a;

    if-eqz v0, :cond_3

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->n:Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->n:Lcom/pengyouwan/framework/v4/aa$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/aa$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 471
    :cond_3
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 267
    sget-boolean v0, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Retaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    .line 269
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->j:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    .line 272
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    if-eqz v0, :cond_1

    .line 276
    sget-boolean v0, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Finished Retaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    .line 278
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->j:Z

    if-eq v0, v1, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/aa$a;->e()V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->k:Z

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/aa$a;->a(Lcom/pengyouwan/framework/v4/y;Ljava/lang/Object;)V

    .line 297
    :cond_2
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->k:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->k:Z

    .line 303
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/aa$a;->a(Lcom/pengyouwan/framework/v4/y;Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-boolean v0, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    .line 313
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->i:Z

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    if-eqz v0, :cond_1

    .line 316
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    .line 317
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v0, p0}, Lcom/pengyouwan/framework/v4/y;->a(Lcom/pengyouwan/framework/v4/y$a;)V

    .line 318
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/y;->c()V

    .line 321
    :cond_1
    return-void
.end method

.method f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 324
    sget-boolean v2, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Destroying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->l:Z

    .line 326
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    .line 327
    .local v1, "needReset":Z
    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    .line 328
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 329
    sget-boolean v2, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Reseting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 331
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v0, v2, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 333
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 336
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-interface {v2, v3}, Lcom/pengyouwan/framework/v4/z$a;->a(Lcom/pengyouwan/framework/v4/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v2, :cond_3

    .line 339
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v0, v2, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 343
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Lcom/pengyouwan/framework/v4/aa$a;->c:Lcom/pengyouwan/framework/v4/z$a;

    .line 344
    iput-object v6, p0, Lcom/pengyouwan/framework/v4/aa$a;->g:Ljava/lang/Object;

    .line 345
    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/aa$a;->e:Z

    .line 346
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    if-eqz v2, :cond_5

    .line 347
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    if-eqz v2, :cond_4

    .line 348
    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/aa$a;->m:Z

    .line 349
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v2, p0}, Lcom/pengyouwan/framework/v4/y;->a(Lcom/pengyouwan/framework/v4/y$a;)V

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/y;->e()V

    .line 353
    :cond_5
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->n:Lcom/pengyouwan/framework/v4/aa$a;

    if-eqz v2, :cond_6

    .line 354
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa$a;->n:Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->f()V

    .line 356
    :cond_6
    return-void

    .line 337
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 338
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v3, v3, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v3, :cond_7

    .line 339
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa$a;->o:Lcom/pengyouwan/framework/v4/aa;

    iget-object v3, v3, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v3, v3, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v0, v3, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    .line 341
    :cond_7
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa$a;->d:Lcom/pengyouwan/framework/v4/y;

    invoke-static {v1, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
