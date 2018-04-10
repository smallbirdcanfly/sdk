.class final Lcom/pengyouwan/framework/v4/n;
.super Lcom/pengyouwan/framework/v4/v;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/n$a;
    }
.end annotation


# instance fields
.field final a:Lcom/pengyouwan/framework/v4/u;

.field b:Lcom/pengyouwan/framework/v4/n$a;

.field c:Lcom/pengyouwan/framework/v4/n$a;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/framework/v4/u;)V
    .locals 1
    .param p1, "manager"    # Lcom/pengyouwan/framework/v4/u;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/v;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/n;->l:Z

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    .line 333
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 334
    return-void
.end method

.method private a(ILcom/pengyouwan/framework/v4/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iput-object v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    .line 395
    if-eqz p3, :cond_1

    .line 396
    iget-object v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change tag of fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    iput-object p3, p2, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    .line 404
    :cond_1
    if-eqz p1, :cond_3

    .line 405
    iget v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    if-eq v1, p1, :cond_2

    .line 406
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change container ID of fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_2
    iput p1, p2, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    iput p1, p2, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    .line 413
    :cond_3
    new-instance v0, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 414
    .local v0, "op":Lcom/pengyouwan/framework/v4/n$a;
    iput p4, v0, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 415
    iput-object p2, v0, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 416
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 417
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 581
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/n;->n:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_0
    sget-boolean v2, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v2, :cond_1

    .line 583
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Commit: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Lcom/pengyouwan/framework/v4/ab;

    const-string v2, "FragmentManager"

    invoke-direct {v0, v2}, Lcom/pengyouwan/framework/v4/ab;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "logw":Lcom/pengyouwan/framework/v4/ab;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 586
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/pengyouwan/framework/v4/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 588
    .end local v0    # "logw":Lcom/pengyouwan/framework/v4/ab;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/n;->n:Z

    .line 589
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-eqz v2, :cond_2

    .line 590
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v2, p0}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/n;)I

    move-result v2

    iput v2, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    .line 594
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v2, p0, p1}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/Runnable;Z)V

    .line 595
    iget v2, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    return v2

    .line 592
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    goto :goto_0
.end method

.method public a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/pengyouwan/framework/v4/n;->a(ILcom/pengyouwan/framework/v4/Fragment;Ljava/lang/String;I)V

    .line 384
    return-object p0
.end method

.method public a(ILcom/pengyouwan/framework/v4/Fragment;Ljava/lang/String;)Lcom/pengyouwan/framework/v4/v;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pengyouwan/framework/v4/n;->a(ILcom/pengyouwan/framework/v4/Fragment;Ljava/lang/String;I)V

    .line 389
    return-object p0
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;
    .locals 2
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 442
    new-instance v0, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 443
    .local v0, "op":Lcom/pengyouwan/framework/v4/n$a;
    const/4 v1, 0x4

    iput v1, v0, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 444
    iput-object p1, v0, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 445
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 447
    return-object p0
.end method

.method a(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 548
    iget-boolean v3, p0, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-nez v3, :cond_1

    .line 570
    :cond_0
    return-void

    .line 551
    :cond_1
    sget-boolean v3, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 554
    .local v1, "op":Lcom/pengyouwan/framework/v4/n$a;
    :goto_0
    if-eqz v1, :cond_0

    .line 555
    iget-object v3, v1, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v3, :cond_3

    .line 556
    iget-object v3, v1, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    iget v4, v3, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    .line 557
    sget-boolean v3, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    iget-object v5, v1, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    iget v5, v5, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    iget-object v3, v1, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 561
    iget-object v3, v1, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_5

    .line 568
    .end local v0    # "i":I
    :cond_4
    iget-object v1, v1, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    goto :goto_0

    .line 562
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, v1, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 563
    .local v2, "r":Lcom/pengyouwan/framework/v4/Fragment;
    iget v3, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    add-int/2addr v3, p1

    iput v3, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    .line 564
    sget-boolean v3, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v3, :cond_6

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 564
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method a(Lcom/pengyouwan/framework/v4/n$a;)V
    .locals 1
    .param p1, "op"    # Lcom/pengyouwan/framework/v4/n$a;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    if-nez v0, :cond_0

    .line 364
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/n;->c:Lcom/pengyouwan/framework/v4/n$a;

    iput-object p1, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 370
    :goto_0
    iget v0, p0, Lcom/pengyouwan/framework/v4/n;->e:I

    iput v0, p1, Lcom/pengyouwan/framework/v4/n$a;->e:I

    .line 371
    iget v0, p0, Lcom/pengyouwan/framework/v4/n;->f:I

    iput v0, p1, Lcom/pengyouwan/framework/v4/n$a;->f:I

    .line 372
    iget v0, p0, Lcom/pengyouwan/framework/v4/n;->g:I

    iput v0, p1, Lcom/pengyouwan/framework/v4/n$a;->g:I

    .line 373
    iget v0, p0, Lcom/pengyouwan/framework/v4/n;->h:I

    iput v0, p1, Lcom/pengyouwan/framework/v4/n$a;->h:I

    .line 374
    iget v0, p0, Lcom/pengyouwan/framework/v4/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/n;->d:I

    .line 375
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/n;->c:Lcom/pengyouwan/framework/v4/n$a;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/n$a;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 367
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/n;->c:Lcom/pengyouwan/framework/v4/n$a;

    iput-object p1, v0, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    .line 368
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/n;->c:Lcom/pengyouwan/framework/v4/n$a;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/pengyouwan/framework/v4/n;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 237
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 240
    if-eqz p3, :cond_8

    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 243
    const-string v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pengyouwan/framework/v4/n;->n:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 244
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    if-eqz v5, :cond_0

    .line 245
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    const-string v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->e:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->f:I

    if-eqz v5, :cond_2

    .line 251
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    :cond_2
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->g:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->h:I

    if-eqz v5, :cond_4

    .line 257
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const-string v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_4
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->p:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->q:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 263
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    :cond_6
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->r:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->s:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 269
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    const-string v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 276
    :cond_8
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    if-eqz v5, :cond_9

    .line 277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 280
    .local v4, "op":Lcom/pengyouwan/framework/v4/n$a;
    const/4 v3, 0x0

    .line 281
    .local v3, "num":I
    :goto_0
    if-nez v4, :cond_a

    .line 330
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Lcom/pengyouwan/framework/v4/n$a;
    :cond_9
    return-void

    .line 283
    .restart local v2    # "innerPrefix":Ljava/lang/String;
    .restart local v3    # "num":I
    .restart local v4    # "op":Lcom/pengyouwan/framework/v4/n$a;
    :cond_a
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->c:I

    packed-switch v5, :pswitch_data_0

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cmd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 295
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    if-eqz p3, :cond_e

    .line 298
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->e:I

    if-nez v5, :cond_b

    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->f:I

    if-eqz v5, :cond_c

    .line 299
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    :cond_c
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    if-nez v5, :cond_d

    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->h:I

    if-eqz v5, :cond_e

    .line 305
    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    iget v5, v4, Lcom/pengyouwan/framework/v4/n$a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    :cond_e
    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_10

    .line 326
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 285
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 286
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 287
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 288
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 289
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 290
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 291
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 313
    .restart local v1    # "i":I
    :cond_10
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 315
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    :goto_3
    iget-object v5, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 317
    :cond_11
    if-nez v1, :cond_12

    .line 318
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_12
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 321
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;
    .locals 2
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 451
    new-instance v0, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 452
    .local v0, "op":Lcom/pengyouwan/framework/v4/n$a;
    const/4 v1, 0x5

    iput v1, v0, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 453
    iput-object p1, v0, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 454
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 456
    return-object p0
.end method

.method public b(Z)V
    .locals 12
    .param p1, "doStateMove"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 690
    sget-boolean v6, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v6, :cond_0

    .line 691
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "popFromBackStack: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v2, Lcom/pengyouwan/framework/v4/ab;

    const-string v6, "FragmentManager"

    invoke-direct {v2, v6}, Lcom/pengyouwan/framework/v4/ab;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, "logw":Lcom/pengyouwan/framework/v4/ab;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 694
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string v6, "  "

    invoke-virtual {p0, v6, v10, v5, v10}, Lcom/pengyouwan/framework/v4/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 697
    .end local v2    # "logw":Lcom/pengyouwan/framework/v4/ab;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {p0, v11}, Lcom/pengyouwan/framework/v4/n;->a(I)V

    .line 699
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->c:Lcom/pengyouwan/framework/v4/n$a;

    .line 700
    .local v4, "op":Lcom/pengyouwan/framework/v4/n$a;
    :goto_0
    if-nez v4, :cond_3

    .line 762
    if-eqz p1, :cond_1

    .line 763
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v7, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v7, v7, Lcom/pengyouwan/framework/v4/u;->n:I

    .line 764
    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v8}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v8

    iget v9, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    const/4 v10, 0x1

    .line 763
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/pengyouwan/framework/v4/u;->a(IIIZ)V

    .line 767
    :cond_1
    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    if-ltz v6, :cond_2

    .line 768
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    invoke-virtual {v6, v7}, Lcom/pengyouwan/framework/v4/u;->b(I)V

    .line 769
    iput v11, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    .line 771
    :cond_2
    return-void

    .line 701
    :cond_3
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->c:I

    packed-switch v6, :pswitch_data_0

    .line 755
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown cmd: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Lcom/pengyouwan/framework/v4/n$a;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 703
    :pswitch_0
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 704
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->h:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 705
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 706
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    .line 707
    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 705
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;II)V

    .line 759
    :cond_4
    :goto_1
    iget-object v4, v4, Lcom/pengyouwan/framework/v4/n$a;->b:Lcom/pengyouwan/framework/v4/n$a;

    goto :goto_0

    .line 710
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_1
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 711
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_5

    .line 712
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->h:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 713
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 714
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    .line 715
    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 713
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;II)V

    .line 717
    :cond_5
    iget-object v6, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 718
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 719
    iget-object v6, v4, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/Fragment;

    .line 720
    .local v3, "old":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    iput v6, v3, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 721
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v6, v3, v9}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;Z)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 726
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_2
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 727
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 728
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v6, v0, v9}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;Z)V

    goto :goto_1

    .line 731
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_3
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 732
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 733
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 734
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 733
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->c(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto :goto_1

    .line 737
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_4
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 738
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->h:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 739
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 740
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 739
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->b(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto :goto_1

    .line 743
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_5
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 744
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 745
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 746
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 745
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->e(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto :goto_1

    .line 749
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_6
    iget-object v0, v4, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 750
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v6, v4, Lcom/pengyouwan/framework/v4/n$a;->g:I

    iput v6, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 751
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    .line 752
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    invoke-static {v7}, Lcom/pengyouwan/framework/v4/u;->c(I)I

    move-result v7

    iget v8, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 751
    invoke-virtual {v6, v0, v7, v8}, Lcom/pengyouwan/framework/v4/u;->d(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public c(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;
    .locals 2
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 460
    new-instance v0, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 461
    .local v0, "op":Lcom/pengyouwan/framework/v4/n$a;
    const/4 v1, 0x6

    iput v1, v0, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 462
    iput-object p1, v0, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 463
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 465
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;
    .locals 2
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 469
    new-instance v0, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 470
    .local v0, "op":Lcom/pengyouwan/framework/v4/n$a;
    const/4 v1, 0x7

    iput v1, v0, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 471
    iput-object p1, v0, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 472
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 474
    return-object p0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 599
    sget-boolean v4, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v4, :cond_0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Run: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-eqz v4, :cond_1

    .line 602
    iget v4, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    if-gez v4, :cond_1

    .line 603
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addToBackStack() called after commit()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 607
    :cond_1
    invoke-virtual {p0, v8}, Lcom/pengyouwan/framework/v4/n;->a(I)V

    .line 609
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 610
    .local v3, "op":Lcom/pengyouwan/framework/v4/n$a;
    :goto_0
    if-nez v3, :cond_3

    .line 681
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, v5, Lcom/pengyouwan/framework/v4/u;->n:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    .line 682
    iget v7, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 681
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/pengyouwan/framework/v4/u;->a(IIIZ)V

    .line 684
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-eqz v4, :cond_2

    .line 685
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4, p0}, Lcom/pengyouwan/framework/v4/u;->b(Lcom/pengyouwan/framework/v4/n;)V

    .line 687
    :cond_2
    return-void

    .line 611
    :cond_3
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->c:I

    packed-switch v4, :pswitch_data_0

    .line 674
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown cmd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/pengyouwan/framework/v4/n$a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    :pswitch_0
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 614
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->e:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 615
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4, v0, v7}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;Z)V

    .line 678
    :cond_4
    :goto_1
    iget-object v3, v3, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    goto :goto_0

    .line 618
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_1
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 619
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v4, v4, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v4, v4, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 643
    .end local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_4

    .line 644
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->e:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 645
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4, v0, v7}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;Z)V

    goto :goto_1

    .line 621
    .restart local v1    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget-object v4, v4, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 622
    .local v2, "old":Lcom/pengyouwan/framework/v4/Fragment;
    sget-boolean v4, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v4, :cond_7

    const-string v4, "FragmentManager"

    .line 623
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OP_REPLACE: adding="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 622
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_7
    if-eqz v0, :cond_8

    iget v4, v2, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    iget v5, v0, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    if-ne v4, v5, :cond_9

    .line 625
    :cond_8
    if-ne v2, v0, :cond_a

    .line 626
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 620
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 628
    :cond_a
    iget-object v4, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-nez v4, :cond_b

    .line 629
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    .line 631
    :cond_b
    iget-object v4, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->f:I

    iput v4, v2, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 633
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-eqz v4, :cond_c

    .line 634
    iget v4, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    .line 635
    sget-boolean v4, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v4, :cond_c

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bump nesting of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_c
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto :goto_3

    .line 649
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    .end local v1    # "i":I
    .end local v2    # "old":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_2
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 650
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->f:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 651
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 654
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_3
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 655
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->f:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 656
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/pengyouwan/framework/v4/u;->b(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 659
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_4
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 660
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->e:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 661
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/pengyouwan/framework/v4/u;->c(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 664
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_5
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 665
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->f:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 666
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/pengyouwan/framework/v4/u;->d(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 669
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :pswitch_6
    iget-object v0, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 670
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v4, v3, Lcom/pengyouwan/framework/v4/n$a;->e:I

    iput v4, v0, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 671
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/n;->a:Lcom/pengyouwan/framework/v4/u;

    iget v5, p0, Lcom/pengyouwan/framework/v4/n;->i:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/n;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lcom/pengyouwan/framework/v4/u;->e(Lcom/pengyouwan/framework/v4/Fragment;II)V

    goto/16 :goto_1

    .line 611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget v1, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    if-ltz v1, :cond_0

    .line 224
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget v1, p0, Lcom/pengyouwan/framework/v4/n;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 228
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
