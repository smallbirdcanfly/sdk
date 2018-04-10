.class Lcom/pengyouwan/framework/v4/aa;
.super Lcom/pengyouwan/framework/v4/z;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/aa$a;
    }
.end annotation


# static fields
.field static a:Z


# instance fields
.field final b:Lcom/pengyouwan/framework/v4/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/am",
            "<",
            "Lcom/pengyouwan/framework/v4/aa$a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/pengyouwan/framework/v4/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/am",
            "<",
            "Lcom/pengyouwan/framework/v4/aa$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Lcom/pengyouwan/framework/v4/FragmentActivity;

.field f:Z

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pengyouwan/framework/v4/aa;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/pengyouwan/framework/v4/FragmentActivity;Z)V
    .locals 1
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/pengyouwan/framework/v4/FragmentActivity;
    .param p3, "started"    # Z

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/z;-><init>()V

    .line 191
    new-instance v0, Lcom/pengyouwan/framework/v4/am;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/am;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    .line 197
    new-instance v0, Lcom/pengyouwan/framework/v4/am;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/am;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    .line 475
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/aa;->d:Ljava/lang/String;

    .line 476
    iput-object p2, p0, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 477
    iput-boolean p3, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    .line 478
    return-void
.end method


# virtual methods
.method a(Lcom/pengyouwan/framework/v4/FragmentActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/pengyouwan/framework/v4/FragmentActivity;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 482
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 798
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v3

    if-lez v3, :cond_0

    .line 799
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 808
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v3

    if-lez v3, :cond_1

    .line 809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 818
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    :cond_1
    return-void

    .line 802
    .restart local v0    # "i":I
    .restart local v1    # "innerPrefix":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    .line 803
    .local v2, "li":Lcom/pengyouwan/framework/v4/aa$a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3, v0}, Lcom/pengyouwan/framework/v4/am;->a(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 804
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/aa$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    .end local v2    # "li":Lcom/pengyouwan/framework/v4/aa$a;
    :cond_3
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    .line 813
    .restart local v2    # "li":Lcom/pengyouwan/framework/v4/aa$a;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v3, v0}, Lcom/pengyouwan/framework/v4/am;->a(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 814
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/aa$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a()Z
    .locals 5

    .prologue
    .line 822
    const/4 v3, 0x0

    .line 823
    .local v3, "loadersRunning":Z
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v0

    .line 824
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 828
    return v3

    .line 825
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v4, v1}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    .line 826
    .local v2, "li":Lcom/pengyouwan/framework/v4/aa$a;
    iget-boolean v4, v2, Lcom/pengyouwan/framework/v4/aa$a;->h:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Lcom/pengyouwan/framework/v4/aa$a;->f:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 5

    .prologue
    .line 698
    sget-boolean v2, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    if-eqz v2, :cond_2

    .line 700
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 702
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Called doStart when already started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 706
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    .line 710
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 711
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2, v1}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->a()V

    .line 710
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method c()V
    .locals 5

    .prologue
    .line 716
    sget-boolean v2, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    if-nez v2, :cond_1

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 720
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Called doStop when not started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_2

    .line 727
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    goto :goto_0

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2, v1}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->e()V

    .line 724
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method d()V
    .locals 5

    .prologue
    .line 731
    sget-boolean v2, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retaining in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    iget-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    if-nez v2, :cond_2

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 735
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Called doRetain when not started: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void

    .line 739
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->g:Z

    .line 740
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/aa;->f:Z

    .line 741
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 742
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v2, v1}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa$a;->b()V

    .line 741
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    .line 747
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa;->g:Z

    if-eqz v1, :cond_1

    .line 748
    sget-boolean v1, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished Retaining in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa;->g:Z

    .line 751
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 755
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 752
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/aa$a;->c()V

    .line 751
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method f()V
    .locals 3

    .prologue
    .line 758
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 761
    return-void

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/aa$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/pengyouwan/framework/v4/aa$a;->k:Z

    .line 758
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 764
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 767
    return-void

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/aa$a;->d()V

    .line 764
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method h()V
    .locals 4

    .prologue
    .line 770
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/aa;->g:Z

    if-nez v1, :cond_1

    .line 771
    sget-boolean v1, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroying Active in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_3

    .line 775
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->c()V

    .line 778
    .end local v0    # "i":I
    :cond_1
    sget-boolean v1, Lcom/pengyouwan/framework/v4/aa;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroying Inactive in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->b()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-gez v0, :cond_4

    .line 782
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/am;->c()V

    .line 783
    return-void

    .line 773
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->b:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/aa$a;->f()V

    .line 772
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->c:Lcom/pengyouwan/framework/v4/am;

    invoke-virtual {v1, v0}, Lcom/pengyouwan/framework/v4/am;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/aa$a;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/aa$a;->f()V

    .line 779
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 788
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/aa;->e:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v1, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 792
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
