.class final Lcom/pengyouwan/framework/v4/u;
.super Lcom/pengyouwan/framework/v4/t;
.source "FragmentManager.java"


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/n;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/n;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/t$a;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Lcom/pengyouwan/framework/v4/FragmentActivity;

.field p:Lcom/pengyouwan/framework/v4/s;

.field q:Lcom/pengyouwan/framework/v4/Fragment;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 400
    sput-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    .line 403
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/pengyouwan/framework/v4/u;->b:Z

    .line 736
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/pengyouwan/framework/v4/u;->z:Landroid/view/animation/Interpolator;

    .line 737
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/pengyouwan/framework/v4/u;->A:Landroid/view/animation/Interpolator;

    .line 738
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/pengyouwan/framework/v4/u;->B:Landroid/view/animation/Interpolator;

    .line 739
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/pengyouwan/framework/v4/u;->C:Landroid/view/animation/Interpolator;

    .line 2066
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/t;-><init>()V

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    .line 438
    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    .line 439
    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    .line 441
    new-instance v0, Lcom/pengyouwan/framework/v4/u$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/u$1;-><init>(Lcom/pengyouwan/framework/v4/u;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->y:Ljava/lang/Runnable;

    .line 399
    return-void
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 759
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 760
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/pengyouwan/framework/v4/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 761
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 762
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .prologue
    .line 745
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 746
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 747
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    .line 746
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 748
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v1, Lcom/pengyouwan/framework/v4/u;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 749
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 750
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 751
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 752
    .local v9, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/pengyouwan/framework/v4/u;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 753
    const-wide/16 v1, 0xdc

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 754
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 755
    return-object v10
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .prologue
    .line 449
    const-string v3, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v3, "FragmentManager"

    const-string v4, "Activity state:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v1, Lcom/pengyouwan/framework/v4/ab;

    const-string v3, "FragmentManager"

    invoke-direct {v1, v3}, Lcom/pengyouwan/framework/v4/ab;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "logw":Lcom/pengyouwan/framework/v4/ab;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 453
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v3, :cond_0

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    const-string v4, "  "

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/pengyouwan/framework/v4/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    throw p1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "  "

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 462
    :catch_1
    move-exception v0

    .line 463
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(IZ)I
    .locals 1
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .prologue
    .line 2069
    const/4 v0, -0x1

    .line 2070
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_0

    .line 2081
    :goto_0
    return v0

    .line 2072
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2073
    :goto_1
    goto :goto_0

    .line 2072
    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    .line 2075
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    .line 2076
    :goto_2
    goto :goto_0

    .line 2075
    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    .line 2078
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_3

    .line 2070
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static c(I)I
    .locals 1
    .param p0, "transit"    # I

    .prologue
    .line 2045
    const/4 v0, 0x0

    .line 2046
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_0

    .line 2057
    :goto_0
    return v0

    .line 2048
    :sswitch_0
    const/16 v0, 0x2002

    .line 2049
    goto :goto_0

    .line 2051
    :sswitch_1
    const/16 v0, 0x1001

    .line 2052
    goto :goto_0

    .line 2054
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 2046
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1351
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    if-eqz v0, :cond_0

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1353
    const-string v1, "Can not perform this action after onSaveInstanceState"

    .line 1352
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1356
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/n;)I
    .locals 5
    .param p1, "bse"    # Lcom/pengyouwan/framework/v4/n;

    .prologue
    .line 1388
    monitor-enter p0

    .line 1389
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1390
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    .line 1393
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1394
    .local v0, "index":I
    sget-boolean v2, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    monitor-exit p0

    move v1, v0

    .line 1402
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1399
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1400
    .restart local v0    # "index":I
    sget-boolean v2, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding back stack index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_4
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1402
    monitor-exit p0

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1388
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Lcom/pengyouwan/framework/v4/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 9
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .prologue
    const v8, 0x3f79999a    # 0.975f

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 767
    .line 768
    iget v4, p1, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    .line 767
    invoke-virtual {p1, p2, p3, v4}, Lcom/pengyouwan/framework/v4/Fragment;->a(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 769
    .local v1, "animObj":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 821
    .end local v1    # "animObj":Landroid/view/animation/Animation;
    :goto_0
    return-object v1

    .line 773
    .restart local v1    # "animObj":Landroid/view/animation/Animation;
    :cond_0
    iget v4, p1, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    if-eqz v4, :cond_1

    .line 774
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget v5, p1, Lcom/pengyouwan/framework/v4/Fragment;->J:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 775
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 776
    goto :goto_0

    .line 780
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    .line 781
    goto :goto_0

    .line 784
    :cond_2
    invoke-static {p2, p3}, Lcom/pengyouwan/framework/v4/u;->b(IZ)I

    move-result v2

    .line 785
    .local v2, "styleIndex":I
    if-gez v2, :cond_3

    move-object v1, v3

    .line 786
    goto :goto_0

    .line 789
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 804
    if-nez p4, :cond_4

    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 805
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget p4, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 807
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v3

    .line 808
    goto :goto_0

    .line 791
    :pswitch_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    const/high16 v4, 0x3f900000    # 1.125f

    invoke-static {v3, v4, v6, v7, v6}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 793
    :pswitch_1
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v3, v6, v8, v6, v7}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 795
    :pswitch_2
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v3, v8, v6, v7, v6}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 797
    :pswitch_3
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    const v4, 0x3f89999a    # 1.075f

    invoke-static {v3, v6, v4, v6, v7}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 799
    :pswitch_4
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v3, v7, v6}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 801
    :pswitch_5
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v3, v6, v7}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 821
    goto :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(I)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1295
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1297
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_3

    .line 1304
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1306
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-gez v1, :cond_5

    .line 1313
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    .line 1298
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1299
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    if-eq v2, p1, :cond_2

    .line 1297
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1307
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_5
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1308
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_6

    iget v2, v0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    if-eq v2, p1, :cond_2

    .line 1306
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 569
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 570
    .local v1, "index":I
    if-ne v1, v2, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 582
    :cond_0
    :goto_0
    return-object v0

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 574
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v2}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 577
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 578
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-nez v0, :cond_0

    .line 579
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, v2}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1317
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1319
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_3

    .line 1326
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1328
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-gez v1, :cond_5

    .line 1335
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    .line 1320
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1321
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1319
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1329
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_5
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1330
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1328
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public a()Lcom/pengyouwan/framework/v4/v;
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/pengyouwan/framework/v4/n;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/n;-><init>(Lcom/pengyouwan/framework/v4/u;)V

    return-object v0
.end method

.method a(IIIZ)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "transit"    # I
    .param p3, "transitStyle"    # I
    .param p4, "always"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1099
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No activity"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    if-ne v0, p1, :cond_2

    .line 1129
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    iput p1, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    .line 1108
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1109
    const/4 v7, 0x0

    .line 1110
    .local v7, "loadersRunning":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_4

    .line 1120
    if-nez v7, :cond_3

    .line 1121
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->d()V

    .line 1124
    :cond_3
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->c()V

    .line 1126
    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    goto :goto_0

    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1112
    .local v1, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1113
    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1114
    iget-object v0, v1, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_5

    .line 1115
    iget-object v0, v1, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->a()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1110
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public a(ILcom/pengyouwan/framework/v4/n;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "bse"    # Lcom/pengyouwan/framework/v4/n;

    .prologue
    .line 1408
    monitor-enter p0

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    .line 1412
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1413
    .local v0, "N":I
    if-ge p1, v0, :cond_5

    .line 1414
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :goto_0
    monitor-exit p0

    .line 1430
    return-void

    .line 1418
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    .line 1422
    :cond_3
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    add-int/lit8 v0, v0, 0x1

    .line 1417
    :cond_5
    if-lt v0, p1, :cond_2

    .line 1426
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_6
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1408
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(IZ)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/pengyouwan/framework/v4/u;->a(IIIZ)V

    .line 1096
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1937
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1938
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1945
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1939
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1940
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 1941
    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/content/res/Configuration;)V

    .line 1938
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 560
    iget v0, p3, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-gez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 564
    :cond_0
    iget v0, p3, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    return-void
.end method

.method a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1765
    if-nez p1, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1766
    check-cast v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;

    .line 1767
    .local v2, "fms":Lcom/pengyouwan/framework/v4/FragmentManagerState;
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    if-eqz v7, :cond_0

    .line 1771
    if-eqz p2, :cond_2

    .line 1772
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_7

    .line 1792
    .end local v4    # "i":I
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    .line 1793
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 1794
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1796
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    array-length v7, v7

    if-lt v4, v7, :cond_a

    .line 1817
    if-eqz p2, :cond_4

    .line 1818
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_f

    .line 1833
    :cond_4
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    if-eqz v7, :cond_16

    .line 1834
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    .line 1835
    const/4 v4, 0x0

    :goto_4
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    array-length v7, v7

    if-lt v4, v7, :cond_12

    .line 1853
    :goto_5
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    if-eqz v7, :cond_17

    .line 1854
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    .line 1855
    const/4 v4, 0x0

    :goto_6
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 1856
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Lcom/pengyouwan/framework/v4/BackStackState;->a(Lcom/pengyouwan/framework/v4/u;)Lcom/pengyouwan/framework/v4/n;

    move-result-object v0

    .line 1857
    .local v0, "bse":Lcom/pengyouwan/framework/v4/n;
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_5

    .line 1858
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: back stack #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1859
    const-string v9, " (index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/pengyouwan/framework/v4/n;->o:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1858
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    new-instance v5, Lcom/pengyouwan/framework/v4/ab;

    const-string v7, "FragmentManager"

    invoke-direct {v5, v7}, Lcom/pengyouwan/framework/v4/ab;-><init>(Ljava/lang/String;)V

    .line 1861
    .local v5, "logw":Lcom/pengyouwan/framework/v4/ab;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1862
    .local v6, "pw":Ljava/io/PrintWriter;
    const-string v7, "  "

    invoke-virtual {v0, v7, v6, v11}, Lcom/pengyouwan/framework/v4/n;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1864
    .end local v5    # "logw":Lcom/pengyouwan/framework/v4/ab;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :cond_5
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    iget v7, v0, Lcom/pengyouwan/framework/v4/n;->o:I

    if-ltz v7, :cond_6

    .line 1866
    iget v7, v0, Lcom/pengyouwan/framework/v4/n;->o:I

    invoke-virtual {p0, v7, v0}, Lcom/pengyouwan/framework/v4/u;->a(ILcom/pengyouwan/framework/v4/n;)V

    .line 1855
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1773
    .end local v0    # "bse":Lcom/pengyouwan/framework/v4/n;
    :cond_7
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1774
    .local v1, "f":Lcom/pengyouwan/framework/v4/Fragment;
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_8

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: re-attaching retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_8
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    iget v8, v1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    aget-object v3, v7, v8

    .line 1776
    .local v3, "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    iput-object v1, v3, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1777
    iput-object v10, v1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 1778
    iput v11, v1, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    .line 1779
    iput-boolean v11, v1, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    .line 1780
    iput-boolean v11, v1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1781
    iput-object v10, v1, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1782
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v7, :cond_9

    .line 1783
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v8}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1784
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 1785
    const-string v8, "android:view_state"

    .line 1784
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, v1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 1772
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1797
    .end local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    .end local v3    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    :cond_a
    iget-object v7, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    aget-object v3, v7, v4

    .line 1798
    .restart local v3    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    if-eqz v3, :cond_c

    .line 1799
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v8, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {v3, v7, v8}, Lcom/pengyouwan/framework/v4/FragmentState;->a(Lcom/pengyouwan/framework/v4/FragmentActivity;Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v1

    .line 1800
    .restart local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_b

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: active #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_b
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    iput-object v10, v3, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1796
    .end local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1807
    :cond_c
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_d

    .line 1809
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    .line 1811
    :cond_d
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_e

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: avail #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_e
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1819
    .end local v3    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    :cond_f
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1820
    .restart local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    iget v7, v1, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    if-ltz v7, :cond_10

    .line 1821
    iget v7, v1, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    iget-object v8, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 1822
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    iget v8, v1, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pengyouwan/framework/v4/Fragment;

    iput-object v7, v1, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1818
    :cond_10
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1824
    :cond_11
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Re-attaching retained fragment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1825
    const-string v9, " target no longer exists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1824
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iput-object v10, v1, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    goto :goto_8

    .line 1836
    .end local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_12
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1837
    .restart local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-nez v1, :cond_13

    .line 1838
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1839
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No instantiated fragment for index #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1838
    invoke-direct {p0, v7}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 1841
    :cond_13
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1842
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_14

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: added #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_14
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1844
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Already added!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1846
    :cond_15
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 1849
    .end local v1    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_16
    iput-object v10, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    goto/16 :goto_5

    .line 1870
    :cond_17
    iput-object v10, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 6
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 825
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->N:Z

    if-eqz v0, :cond_0

    .line 826
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->e:Z

    if-eqz v0, :cond_1

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->v:Z

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    iput-boolean v3, p1, Lcom/pengyouwan/framework/v4/Fragment;->N:Z

    .line 832
    iget v2, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;II)V
    .locals 7
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1199
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/pengyouwan/framework/v4/Fragment;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v5

    .line 1201
    .local v6, "inactive":Z
    :goto_0
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    if-eqz v1, :cond_1

    if-eqz v6, :cond_4

    .line 1202
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1203
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1205
    :cond_2
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_3

    .line 1206
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1208
    :cond_3
    iput-boolean v5, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1209
    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->p:Z

    .line 1210
    if-eqz v6, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1213
    :cond_4
    return-void

    .end local v6    # "inactive":Z
    :cond_5
    move v6, v0

    .line 1200
    goto :goto_0

    .restart local v6    # "inactive":Z
    :cond_6
    move v2, v0

    .line 1210
    goto :goto_1
.end method

.method a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V
    .locals 10
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .prologue
    .line 839
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 840
    const/4 p2, 0x1

    .line 842
    :cond_1
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->p:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    if-le p2, v0, :cond_2

    .line 844
    iget p2, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    .line 848
    :cond_2
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->N:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    const/4 v0, 0x3

    if-le p2, v0, :cond_3

    .line 849
    const/4 p2, 0x3

    .line 851
    :cond_3
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    if-ge v0, p2, :cond_1d

    .line 855
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    if-nez v0, :cond_4

    .line 1088
    :goto_0
    return-void

    .line 858
    :cond_4
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 863
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    .line 864
    iget v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 866
    :cond_5
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1087
    :cond_6
    :goto_1
    iput p2, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    goto :goto_0

    .line 868
    :pswitch_0
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_7
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 870
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 871
    const-string v1, "android:view_state"

    .line 870
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 872
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 873
    const-string v1, "android:target_state"

    .line 872
    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    .line 874
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v0, :cond_8

    .line 875
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 876
    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->n:I

    .line 878
    :cond_8
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 879
    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    .line 878
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    .line 880
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    if-nez v0, :cond_9

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->N:Z

    .line 882
    const/4 v0, 0x3

    if-le p2, v0, :cond_9

    .line 883
    const/4 p2, 0x3

    .line 887
    :cond_9
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 888
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->y:Lcom/pengyouwan/framework/v4/Fragment;

    .line 889
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v0, :cond_a

    .line 890
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/Fragment;->x:Lcom/pengyouwan/framework/v4/u;

    .line 889
    :goto_2
    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 892
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/app/Activity;)V

    .line 893
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_b

    .line 894
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_a
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    goto :goto_2

    .line 897
    :cond_b
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->y:Lcom/pengyouwan/framework/v4/Fragment;

    if-nez v0, :cond_c

    .line 898
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 901
    :cond_c
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    if-nez v0, :cond_d

    .line 902
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->h(Landroid/os/Bundle;)V

    .line 904
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    .line 905
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    if-eqz v0, :cond_f

    .line 910
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 909
    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 910
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 909
    invoke-virtual {p1, v0, v1, v2}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    .line 911
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 912
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    .line 913
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-static {v0}, Lcom/pengyouwan/framework/v4/af;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    .line 914
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :cond_e
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 921
    :cond_f
    :goto_3
    :pswitch_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_17

    .line 922
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_10
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    if-nez v0, :cond_15

    .line 924
    const/4 v7, 0x0

    .line 925
    .local v7, "container":Landroid/view/ViewGroup;
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    if-eqz v0, :cond_11

    .line 926
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->p:Lcom/pengyouwan/framework/v4/s;

    iget v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/s;->a(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "container":Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 927
    .restart local v7    # "container":Landroid/view/ViewGroup;
    if-nez v7, :cond_11

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->t:Z

    if-nez v0, :cond_11

    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view found for id 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 930
    iget v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 931
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->e()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 932
    const-string v2, ") for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 929
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 935
    :cond_11
    iput-object v7, p1, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    .line 937
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 936
    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 937
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 936
    invoke-virtual {p1, v0, v7, v1}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    .line 938
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 939
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    .line 940
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-static {v0}, Lcom/pengyouwan/framework/v4/af;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    .line 941
    if-eqz v7, :cond_13

    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v6

    .line 944
    .local v6, "anim":Landroid/view/animation/Animation;
    if-eqz v6, :cond_12

    .line 945
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 947
    :cond_12
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 949
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_13
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 950
    :cond_14
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 956
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_15
    :goto_4
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->i(Landroid/os/Bundle;)V

    .line 957
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 958
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/os/Bundle;)V

    .line 960
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 964
    :cond_17
    :pswitch_2
    const/4 v0, 0x3

    if-le p2, v0, :cond_19

    .line 965
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_18
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->p()V

    .line 969
    :cond_19
    :pswitch_3
    const/4 v0, 0x4

    if-le p2, v0, :cond_6

    .line 970
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->q:Z

    .line 972
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->q()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 974
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 917
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    goto/16 :goto_3

    .line 952
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    goto :goto_4

    .line 977
    .end local v7    # "container":Landroid/view/ViewGroup;
    :cond_1d
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    if-le v0, p2, :cond_6

    .line 978
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1041
    :cond_1e
    :goto_5
    :pswitch_4
    const/4 v0, 0x1

    if-ge p2, v0, :cond_6

    .line 1042
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->t:Z

    if-eqz v0, :cond_1f

    .line 1043
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1050
    iget-object v9, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    .line 1051
    .local v9, "v":Landroid/view/View;
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    .line 1052
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    .line 1055
    .end local v9    # "v":Landroid/view/View;
    :cond_1f
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1060
    iput p2, p1, Lcom/pengyouwan/framework/v4/Fragment;->f:I

    .line 1061
    const/4 p2, 0x1

    .line 1062
    goto/16 :goto_1

    .line 980
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_21

    .line 981
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_20
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->s()V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->q:Z

    .line 986
    :cond_21
    :pswitch_6
    const/4 v0, 0x4

    if-ge p2, v0, :cond_23

    .line 987
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_22
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->t()V

    .line 991
    :cond_23
    :pswitch_7
    const/4 v0, 0x3

    if-ge p2, v0, :cond_25

    .line 992
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STOPPED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_24
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->u()V

    .line 996
    :cond_25
    :pswitch_8
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1e

    .line 997
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_26
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 1001
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1002
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/u;->e(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1005
    :cond_27
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->v()V

    .line 1006
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2a

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .restart local v6    # "anim":Landroid/view/animation/Animation;
    iget v0, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    if-lez v0, :cond_28

    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->t:Z

    if-nez v0, :cond_28

    .line 1009
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1012
    :cond_28
    if-eqz v6, :cond_29

    .line 1013
    move-object v8, p1

    .line 1014
    .local v8, "fragment":Lcom/pengyouwan/framework/v4/Fragment;
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->e:Landroid/view/View;

    .line 1015
    iput p2, p1, Lcom/pengyouwan/framework/v4/Fragment;->f:I

    .line 1016
    new-instance v0, Lcom/pengyouwan/framework/v4/u$2;

    invoke-direct {v0, p0, v8}, Lcom/pengyouwan/framework/v4/u$2;-><init>(Lcom/pengyouwan/framework/v4/u;Lcom/pengyouwan/framework/v4/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1032
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1034
    .end local v8    # "fragment":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_29
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1036
    .end local v6    # "anim":Landroid/view/animation/Animation;
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->K:Landroid/view/ViewGroup;

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    goto/16 :goto_5

    .line 1063
    :cond_2b
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_2c
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    if-nez v0, :cond_2d

    .line 1065
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->w()V

    .line 1068
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    .line 1069
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->m()V

    .line 1070
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->I:Z

    if-nez v0, :cond_2e

    .line 1071
    new-instance v0, Lcom/pengyouwan/framework/v4/an;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1072
    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/an;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_2e
    if-nez p5, :cond_6

    .line 1075
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    if-nez v0, :cond_2f

    .line 1076
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/u;->d(Lcom/pengyouwan/framework/v4/Fragment;)V

    goto/16 :goto_1

    .line 1078
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->w:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    goto/16 :goto_1

    .line 866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 978
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;Z)V
    .locals 4
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "moveToStateNow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1177
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    .line 1180
    :cond_0
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/u;->c(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1182
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    if-nez v0, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    iput-boolean v3, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->p:Z

    .line 1189
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v0, :cond_3

    .line 1190
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1192
    :cond_3
    if-eqz p2, :cond_4

    .line 1193
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/u;->b(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1196
    :cond_4
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/v4/FragmentActivity;Lcom/pengyouwan/framework/v4/s;Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 2
    .param p1, "activity"    # Lcom/pengyouwan/framework/v4/FragmentActivity;
    .param p2, "container"    # Lcom/pengyouwan/framework/v4/s;
    .param p3, "parent"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1877
    :cond_0
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 1878
    iput-object p2, p0, Lcom/pengyouwan/framework/v4/u;->p:Lcom/pengyouwan/framework/v4/s;

    .line 1879
    iput-object p3, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1880
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "allowStateLoss"    # Z

    .prologue
    .line 1369
    if-nez p2, :cond_0

    .line 1370
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/u;->t()V

    .line 1372
    :cond_0
    monitor-enter p0

    .line 1373
    :try_start_0
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    if-nez v0, :cond_2

    .line 1374
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1376
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    .line 1379
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1381
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1382
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1372
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "innerPrefix":Ljava/lang/String;
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 629
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 630
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 631
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_b

    .line 645
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    .restart local v0    # "N":I
    if-lez v0, :cond_1

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-lt v3, v0, :cond_d

    .line 657
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 658
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 659
    .restart local v0    # "N":I
    if-lez v0, :cond_2

    .line 660
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-lt v3, v0, :cond_e

    .line 669
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 670
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    .restart local v0    # "N":I
    if-lez v0, :cond_3

    .line 672
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, v0, :cond_f

    .line 682
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_3
    monitor-enter p0

    .line 683
    :try_start_0
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 684
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 685
    .restart local v0    # "N":I
    if-lez v0, :cond_4

    .line 686
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-lt v3, v0, :cond_10

    .line 695
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 696
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 697
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 702
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 703
    .restart local v0    # "N":I
    if-lez v0, :cond_6

    .line 704
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-lt v3, v0, :cond_11

    .line 713
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mActivity="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 715
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mContainer="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->p:Lcom/pengyouwan/framework/v4/s;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 716
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v6, :cond_7

    .line 717
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mParent="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 719
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 720
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 721
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/pengyouwan/framework/v4/u;->t:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 722
    iget-boolean v6, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    if-eqz v6, :cond_8

    .line 723
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget-boolean v6, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 726
    :cond_8
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 727
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->u:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    :cond_9
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 731
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    :cond_a
    return-void

    .line 635
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_b
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 636
    .local v2, "f":Lcom/pengyouwan/framework/v4/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 637
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 638
    if-eqz v2, :cond_c

    .line 639
    invoke-virtual {v2, v4, p2, p3, p4}, Lcom/pengyouwan/framework/v4/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 634
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 650
    .end local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_d
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 651
    .restart local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 652
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 662
    .end local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_e
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 663
    .restart local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 664
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 674
    .end local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_f
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/n;

    .line 675
    .local v1, "bs":Lcom/pengyouwan/framework/v4/n;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 676
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/n;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v1, v4, p2, p3, p4}, Lcom/pengyouwan/framework/v4/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 673
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 688
    .end local v1    # "bs":Lcom/pengyouwan/framework/v4/n;
    :cond_10
    :try_start_1
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/n;

    .line 689
    .restart local v1    # "bs":Lcom/pengyouwan/framework/v4/n;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 690
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 687
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 682
    .end local v0    # "N":I
    .end local v1    # "bs":Lcom/pengyouwan/framework/v4/n;
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 706
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_11
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 707
    .local v5, "r":Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 708
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1516
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return v9

    .line 1519
    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    .line 1520
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1521
    .local v4, "last":I
    if-ltz v4, :cond_0

    .line 1524
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/n;

    .line 1525
    .local v1, "bss":Lcom/pengyouwan/framework/v4/n;
    invoke-virtual {v1, v8}, Lcom/pengyouwan/framework/v4/n;->b(Z)V

    .line 1526
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->f()V

    .end local v1    # "bss":Lcom/pengyouwan/framework/v4/n;
    .end local v4    # "last":I
    :goto_1
    move v9, v8

    .line 1575
    goto :goto_0

    .line 1528
    :cond_2
    const/4 v3, -0x1

    .line 1529
    .local v3, "index":I
    if-nez p2, :cond_3

    if-ltz p3, :cond_5

    .line 1532
    :cond_3
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1533
    :goto_2
    if-gez v3, :cond_6

    .line 1543
    :cond_4
    if-ltz v3, :cond_0

    .line 1546
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_5

    .line 1547
    add-int/lit8 v3, v3, -0x1

    .line 1549
    :goto_3
    if-gez v3, :cond_9

    .line 1560
    :cond_5
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1564
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v5, "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/n;>;"
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_4
    if-gt v2, v3, :cond_c

    .line 1568
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1569
    .local v0, "LAST":I
    const/4 v2, 0x0

    :goto_5
    if-le v2, v0, :cond_d

    .line 1573
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->f()V

    goto :goto_1

    .line 1534
    .end local v0    # "LAST":I
    .end local v2    # "i":I
    .end local v5    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/n;>;"
    :cond_6
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/n;

    .line 1535
    .restart local v1    # "bss":Lcom/pengyouwan/framework/v4/n;
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/n;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1538
    :cond_7
    if-ltz p3, :cond_8

    iget v6, v1, Lcom/pengyouwan/framework/v4/n;->o:I

    if-eq p3, v6, :cond_4

    .line 1541
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1550
    .end local v1    # "bss":Lcom/pengyouwan/framework/v4/n;
    :cond_9
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/n;

    .line 1551
    .restart local v1    # "bss":Lcom/pengyouwan/framework/v4/n;
    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/n;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1552
    :cond_a
    if-ltz p3, :cond_5

    iget v6, v1, Lcom/pengyouwan/framework/v4/n;->o:I

    if-ne p3, v6, :cond_5

    .line 1553
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1566
    .end local v1    # "bss":Lcom/pengyouwan/framework/v4/n;
    .restart local v2    # "i":I
    .restart local v5    # "states":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/n;>;"
    :cond_c
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pengyouwan/framework/v4/n;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1570
    .restart local v0    # "LAST":I
    :cond_d
    sget-boolean v6, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v6, :cond_e

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Popping back stack state: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pengyouwan/framework/v4/n;

    if-ne v2, v0, :cond_f

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Lcom/pengyouwan/framework/v4/n;->b(Z)V

    .line 1569
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    move v7, v9

    .line 1571
    goto :goto_6
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1991
    const/4 v2, 0x0

    .line 1992
    .local v2, "show":Z
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 2002
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 1994
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1995
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 1996
    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->c(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1997
    const/4 v2, 0x1

    .line 1993
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1959
    const/4 v3, 0x0

    .line 1960
    .local v3, "show":Z
    const/4 v2, 0x0

    .line 1961
    .local v2, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 1976
    .end local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1977
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_5

    .line 1985
    .end local v1    # "i":I
    :cond_1
    iput-object v2, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    .line 1987
    return v3

    .line 1963
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1964
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_4

    .line 1965
    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1966
    const/4 v3, 0x1

    .line 1967
    if-nez v2, :cond_3

    .line 1968
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    .restart local v2    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1978
    .end local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_5
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/u;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1979
    .restart local v0    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1980
    :cond_6
    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/Fragment;->n()V

    .line 1977
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2006
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2007
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2016
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2008
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 2009
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 2010
    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->c(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2011
    const/4 v2, 0x1

    goto :goto_1

    .line 2007
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1433
    monitor-enter p0

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    .line 1438
    :cond_0
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    monitor-exit p0

    .line 1441
    return-void

    .line 1433
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2034
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2035
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2042
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 2036
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 2037
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->d(Landroid/view/Menu;)V

    .line 2035
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 6
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 1091
    iget v2, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1092
    return-void
.end method

.method public b(Lcom/pengyouwan/framework/v4/Fragment;II)V
    .locals 5
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v4, 0x1

    .line 1216
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hide: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-nez v1, :cond_4

    .line 1218
    iput-boolean v4, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    .line 1219
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1220
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1222
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1223
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1225
    :cond_1
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_3

    .line 1228
    iput-boolean v4, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1230
    :cond_3
    invoke-virtual {p1, v4}, Lcom/pengyouwan/framework/v4/Fragment;->a(Z)V

    .line 1232
    :cond_4
    return-void
.end method

.method b(Lcom/pengyouwan/framework/v4/n;)V
    .locals 1
    .param p1, "state"    # Lcom/pengyouwan/framework/v4/n;

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->f()V

    .line 1513
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2020
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2030
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2022
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 2023
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 2024
    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->d(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2025
    const/4 v2, 0x1

    goto :goto_1

    .line 2021
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method c(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 1143
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-ltz v0, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    .line 1151
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p1, v0, v1}, Lcom/pengyouwan/framework/v4/Fragment;->a(ILcom/pengyouwan/framework/v4/Fragment;)V

    .line 1152
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    :goto_1
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1155
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {p1, v0, v1}, Lcom/pengyouwan/framework/v4/Fragment;->a(ILcom/pengyouwan/framework/v4/Fragment;)V

    .line 1156
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    iget v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public c(Lcom/pengyouwan/framework/v4/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1235
    sget-boolean v1, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_0
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    if-eqz v1, :cond_4

    .line 1237
    iput-boolean v4, p1, Lcom/pengyouwan/framework/v4/Fragment;->C:Z

    .line 1238
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1239
    invoke-virtual {p0, p1, p2, v5, p3}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1241
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 1242
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1244
    :cond_1
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v1, :cond_3

    .line 1247
    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1249
    :cond_3
    invoke-virtual {p1, v4}, Lcom/pengyouwan/framework/v4/Fragment;->a(Z)V

    .line 1251
    :cond_4
    return-void
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/u;->t()V

    .line 491
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->b()Z

    .line 492
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 3

    .prologue
    .line 1132
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1140
    :cond_0
    return-void

    .line 1134
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1135
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1136
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 1137
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1134
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method d(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 3
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 1162
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-gez v0, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1166
    :cond_0
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    iget v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1168
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->h:Ljava/util/ArrayList;

    iget v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/Fragment;->l()V

    goto :goto_0
.end method

.method public d(Lcom/pengyouwan/framework/v4/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1254
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    if-nez v0, :cond_4

    .line 1256
    iput-boolean v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    .line 1257
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    if-eqz v0, :cond_4

    .line 1259
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1260
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1263
    :cond_2
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v0, :cond_3

    .line 1264
    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1266
    :cond_3
    iput-boolean v5, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1267
    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1270
    :cond_4
    return-void
.end method

.method e(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 2
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 1598
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1602
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    .line 1606
    :goto_1
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->M:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1607
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 1609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    goto :goto_0

    .line 1604
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public e(Lcom/pengyouwan/framework/v4/Fragment;II)V
    .locals 6
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "transition"    # I
    .param p3, "transitionStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1273
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_0
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    if-eqz v0, :cond_5

    .line 1275
    iput-boolean v5, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    .line 1276
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    if-nez v0, :cond_5

    .line 1277
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_2
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    iput-boolean v3, p1, Lcom/pengyouwan/framework/v4/Fragment;->o:Z

    .line 1286
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->G:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->H:Z

    if-eqz v0, :cond_4

    .line 1287
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/u;->r:Z

    .line 1289
    :cond_4
    iget v2, p0, Lcom/pengyouwan/framework/v4/u;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;IIIZ)V

    .line 1292
    :cond_5
    return-void
.end method

.method public e()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1447
    iget-boolean v5, p0, Lcom/pengyouwan/framework/v4/u;->e:Z

    if-eqz v5, :cond_0

    .line 1448
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Recursive entry to executePendingTransactions"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1451
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v6, v6, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1452
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must be called from main thread of process"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1455
    :cond_1
    const/4 v0, 0x0

    .line 1460
    .local v0, "didSomething":Z
    :goto_0
    monitor-enter p0

    .line 1461
    :try_start_0
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1462
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    iget-boolean v5, p0, Lcom/pengyouwan/framework/v4/u;->v:Z

    if-eqz v5, :cond_3

    .line 1484
    const/4 v3, 0x0

    .line 1485
    .local v3, "loadersRunning":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_8

    .line 1491
    if-nez v3, :cond_3

    .line 1492
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/u;->v:Z

    .line 1493
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->d()V

    .line 1496
    .end local v2    # "i":I
    .end local v3    # "loadersRunning":Z
    :cond_3
    return v0

    .line 1465
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1466
    .local v4, "numActions":I
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    array-length v5, v5

    if-ge v5, v4, :cond_6

    .line 1467
    :cond_5
    new-array v5, v4, [Ljava/lang/Runnable;

    iput-object v5, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    .line 1469
    :cond_6
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1470
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1471
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v5, v5, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v6, p0, Lcom/pengyouwan/framework/v4/u;->y:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1460
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pengyouwan/framework/v4/u;->e:Z

    .line 1475
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v4, :cond_7

    .line 1479
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/u;->e:Z

    .line 1480
    const/4 v0, 0x1

    .line 1457
    goto :goto_0

    .line 1460
    .end local v2    # "i":I
    .end local v4    # "numActions":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1476
    .restart local v2    # "i":I
    .restart local v4    # "numActions":I
    :cond_7
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1477
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->d:[Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 1475
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1486
    .end local v4    # "numActions":I
    .restart local v3    # "loadersRunning":Z
    :cond_8
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1487
    .local v1, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v1, :cond_9

    iget-object v5, v1, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v5, :cond_9

    .line 1488
    iget-object v5, v1, Lcom/pengyouwan/framework/v4/Fragment;->P:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/aa;->a()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1485
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method f(Lcom/pengyouwan/framework/v4/Fragment;)Landroid/os/Bundle;
    .locals 3
    .param p1, "f"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 1614
    const/4 v0, 0x0

    .line 1616
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1617
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    .line 1619
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lcom/pengyouwan/framework/v4/Fragment;->j(Landroid/os/Bundle;)V

    .line 1620
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    .line 1622
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->w:Landroid/os/Bundle;

    .line 1625
    :cond_1
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1626
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/u;->e(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1628
    :cond_2
    iget-object v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1629
    if-nez v0, :cond_3

    .line 1630
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1633
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->h:Landroid/util/SparseArray;

    .line 1632
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1635
    :cond_4
    iget-boolean v1, p1, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    if-nez v1, :cond_6

    .line 1636
    if-nez v0, :cond_5

    .line 1637
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1640
    .restart local v0    # "result":Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Lcom/pengyouwan/framework/v4/Fragment;->O:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1643
    :cond_6
    return-object v0
.end method

.method f()V
    .locals 2

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1505
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1502
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/t$a;

    invoke-interface {v1}, Lcom/pengyouwan/framework/v4/t$a;->a()V

    .line 1501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method g()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1579
    const/4 v1, 0x0

    .line 1580
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1581
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 1594
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1582
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1583
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lcom/pengyouwan/framework/v4/Fragment;->E:Z

    if-eqz v3, :cond_3

    .line 1584
    if-nez v1, :cond_2

    .line 1585
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1587
    .restart local v1    # "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    .line 1589
    iget-object v3, v0, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    iget v3, v3, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    :goto_1
    iput v3, v0, Lcom/pengyouwan/framework/v4/Fragment;->m:I

    .line 1590
    sget-boolean v3, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v3, :cond_3

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retainNonConfig: keeping retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1589
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method h()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1649
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 1651
    sget-boolean v9, Lcom/pengyouwan/framework/v4/u;->b:Z

    if-eqz v9, :cond_0

    .line 1661
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1664
    :cond_0
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 1759
    :cond_1
    :goto_0
    return-object v5

    .line 1669
    :cond_2
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1670
    .local v0, "N":I
    new-array v1, v0, [Lcom/pengyouwan/framework/v4/FragmentState;

    .line 1671
    .local v1, "active":[Lcom/pengyouwan/framework/v4/FragmentState;
    const/4 v7, 0x0

    .line 1672
    .local v7, "haveFragments":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v0, :cond_3

    .line 1716
    if-nez v7, :cond_a

    .line 1717
    sget-boolean v9, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v9, :cond_1

    const-string v9, "FragmentManager"

    const-string v10, "saveAllState: no fragments!"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1673
    :cond_3
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1674
    .local v4, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v4, :cond_8

    .line 1675
    iget v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-gez v9, :cond_4

    .line 1676
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1677
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failure saving state: active "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1678
    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1677
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1676
    invoke-direct {p0, v9}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 1681
    :cond_4
    const/4 v7, 0x1

    .line 1683
    new-instance v6, Lcom/pengyouwan/framework/v4/FragmentState;

    invoke-direct {v6, v4}, Lcom/pengyouwan/framework/v4/FragmentState;-><init>(Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1684
    .local v6, "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    aput-object v6, v1, v8

    .line 1686
    iget v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->d:I

    if-lez v9, :cond_9

    iget-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    if-nez v9, :cond_9

    .line 1687
    invoke-virtual {p0, v4}, Lcom/pengyouwan/framework/v4/u;->f(Lcom/pengyouwan/framework/v4/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 1689
    iget-object v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v9, :cond_7

    .line 1690
    iget-object v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    iget v9, v9, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    if-gez v9, :cond_5

    .line 1691
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1692
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failure saving state: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1693
    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1692
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1691
    invoke-direct {p0, v9}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 1695
    :cond_5
    iget-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    if-nez v9, :cond_6

    .line 1696
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 1698
    :cond_6
    iget-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 1699
    const-string v10, "android:target_state"

    iget-object v11, v4, Lcom/pengyouwan/framework/v4/Fragment;->l:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1698
    invoke-virtual {p0, v9, v10, v11}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 1700
    iget v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->n:I

    if-eqz v9, :cond_7

    .line 1701
    iget-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 1702
    const-string v10, "android:target_req_state"

    .line 1703
    iget v11, v4, Lcom/pengyouwan/framework/v4/Fragment;->n:I

    .line 1701
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1711
    :cond_7
    :goto_2
    sget-boolean v9, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v9, :cond_8

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Saved state of "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1712
    iget-object v11, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1711
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    .end local v6    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1708
    .restart local v6    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    :cond_9
    iget-object v9, v4, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    iput-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    goto :goto_2

    .line 1721
    .end local v4    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    .end local v6    # "fs":Lcom/pengyouwan/framework/v4/FragmentState;
    :cond_a
    const/4 v2, 0x0

    .line 1722
    .local v2, "added":[I
    const/4 v3, 0x0

    .line 1725
    .local v3, "backStack":[Lcom/pengyouwan/framework/v4/BackStackState;
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v9, :cond_b

    .line 1726
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1727
    if-lez v0, :cond_b

    .line 1728
    new-array v2, v0, [I

    .line 1729
    const/4 v8, 0x0

    :goto_3
    if-lt v8, v0, :cond_d

    .line 1743
    :cond_b
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    if-eqz v9, :cond_c

    .line 1744
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1745
    if-lez v0, :cond_c

    .line 1746
    new-array v3, v0, [Lcom/pengyouwan/framework/v4/BackStackState;

    .line 1747
    const/4 v8, 0x0

    :goto_4
    if-lt v8, v0, :cond_10

    .line 1755
    :cond_c
    new-instance v5, Lcom/pengyouwan/framework/v4/FragmentManagerState;

    invoke-direct {v5}, Lcom/pengyouwan/framework/v4/FragmentManagerState;-><init>()V

    .line 1756
    .local v5, "fms":Lcom/pengyouwan/framework/v4/FragmentManagerState;
    iput-object v1, v5, Lcom/pengyouwan/framework/v4/FragmentManagerState;->a:[Lcom/pengyouwan/framework/v4/FragmentState;

    .line 1757
    iput-object v2, v5, Lcom/pengyouwan/framework/v4/FragmentManagerState;->b:[I

    .line 1758
    iput-object v3, v5, Lcom/pengyouwan/framework/v4/FragmentManagerState;->c:[Lcom/pengyouwan/framework/v4/BackStackState;

    goto/16 :goto_0

    .line 1730
    .end local v5    # "fms":Lcom/pengyouwan/framework/v4/FragmentManagerState;
    :cond_d
    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pengyouwan/framework/v4/Fragment;

    iget v9, v9, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    aput v9, v2, v8

    .line 1731
    aget v9, v2, v8

    if-gez v9, :cond_e

    .line 1732
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 1733
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failure saving state: active "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1734
    const-string v11, " has cleared index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v2, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1733
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1732
    invoke-direct {p0, v9}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/RuntimeException;)V

    .line 1736
    :cond_e
    sget-boolean v9, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v9, :cond_f

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "saveAllState: adding fragment #"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1737
    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1736
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1748
    :cond_10
    new-instance v10, Lcom/pengyouwan/framework/v4/BackStackState;

    iget-object v9, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pengyouwan/framework/v4/n;

    invoke-direct {v10, p0, v9}, Lcom/pengyouwan/framework/v4/BackStackState;-><init>(Lcom/pengyouwan/framework/v4/u;Lcom/pengyouwan/framework/v4/n;)V

    aput-object v10, v3, v8

    .line 1749
    sget-boolean v9, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v9, :cond_11

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "saveAllState: adding back stack #"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1750
    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/pengyouwan/framework/v4/u;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1749
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1884
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1887
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1888
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1889
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1892
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1893
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1894
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1897
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1898
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1899
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1902
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1903
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1904
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 1907
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1908
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->s:Z

    .line 1916
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1917
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 1920
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1921
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 1924
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1925
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/u;->t:Z

    .line 1929
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 1930
    invoke-virtual {p0, v2, v2}, Lcom/pengyouwan/framework/v4/u;->a(IZ)V

    .line 1931
    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 1932
    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->p:Lcom/pengyouwan/framework/v4/s;

    .line 1933
    iput-object v1, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1934
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    .line 1948
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1949
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1956
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1950
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/u;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 1951
    .local v0, "f":Lcom/pengyouwan/framework/v4/Fragment;
    if-eqz v0, :cond_2

    .line 1952
    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/Fragment;->r()V

    .line 1949
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->q:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-static {v1, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 619
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/u;->o:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-static {v1, v0}, Lcom/pengyouwan/framework/v4/p;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
