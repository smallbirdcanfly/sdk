.class public Lcom/pengyouwan/framework/v4/FragmentActivity;
.super Landroid/app/Activity;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/FragmentActivity$a;,
        Lcom/pengyouwan/framework/v4/FragmentActivity$b;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/pengyouwan/framework/v4/u;

.field final c:Lcom/pengyouwan/framework/v4/s;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Lcom/pengyouwan/framework/v4/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/al",
            "<",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/v4/aa;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/pengyouwan/framework/v4/aa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/FragmentActivity$1;-><init>(Lcom/pengyouwan/framework/v4/FragmentActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/pengyouwan/framework/v4/u;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/u;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    .line 105
    new-instance v0, Lcom/pengyouwan/framework/v4/FragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/FragmentActivity$2;-><init>(Lcom/pengyouwan/framework/v4/FragmentActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->c:Lcom/pengyouwan/framework/v4/s;

    .line 74
    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x56

    const/16 v7, 0x46

    const/16 v11, 0x2c

    const/16 v10, 0x20

    const/16 v8, 0x2e

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 695
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 703
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x45

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x48

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x43

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4c

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x53

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v8, 0x50

    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 725
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 726
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 729
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 732
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    .line 740
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 743
    .local v3, "pkgname":Ljava/lang/String;
    :goto_a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_1
    :goto_b
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 700
    .end local v1    # "id":I
    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 701
    :sswitch_1
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 702
    :sswitch_2
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 705
    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 706
    goto/16 :goto_2

    .line 707
    :cond_4
    const/16 v6, 0x44

    goto/16 :goto_3

    :cond_5
    move v6, v8

    .line 708
    goto/16 :goto_4

    :cond_6
    move v6, v8

    .line 709
    goto/16 :goto_5

    :cond_7
    move v6, v8

    .line 710
    goto/16 :goto_6

    :cond_8
    move v6, v8

    .line 711
    goto/16 :goto_7

    :cond_9
    move v7, v8

    .line 713
    goto/16 :goto_8

    :cond_a
    move v6, v8

    .line 714
    goto/16 :goto_9

    .line 734
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string v3, "app"

    .line 735
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 737
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 751
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_b

    .line 699
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 732
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 760
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    if-nez p3, :cond_1

    .line 762
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    :cond_0
    return-void

    .line 765
    :cond_1
    invoke-static {p3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 769
    check-cast v1, Landroid/view/ViewGroup;

    .line 770
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 771
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 775
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 776
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Lcom/pengyouwan/framework/v4/aa;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "started"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 884
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    if-nez v1, :cond_0

    .line 885
    new-instance v1, Lcom/pengyouwan/framework/v4/al;

    invoke-direct {v1}, Lcom/pengyouwan/framework/v4/al;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    .line 887
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/al;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/aa;

    .line 888
    .local v0, "lm":Lcom/pengyouwan/framework/v4/aa;
    if-nez v0, :cond_2

    .line 889
    if-eqz p3, :cond_1

    .line 890
    new-instance v0, Lcom/pengyouwan/framework/v4/aa;

    .end local v0    # "lm":Lcom/pengyouwan/framework/v4/aa;
    invoke-direct {v0, p1, p0, p2}, Lcom/pengyouwan/framework/v4/aa;-><init>(Ljava/lang/String;Lcom/pengyouwan/framework/v4/FragmentActivity;Z)V

    .line 891
    .restart local v0    # "lm":Lcom/pengyouwan/framework/v4/aa;
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v1, p1, v0}, Lcom/pengyouwan/framework/v4/al;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    :cond_1
    :goto_0
    return-object v0

    .line 894
    :cond_2
    invoke-virtual {v0, p0}, Lcom/pengyouwan/framework/v4/aa;->a(Lcom/pengyouwan/framework/v4/FragmentActivity;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->m()V

    .line 466
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 819
    return-void
.end method

.method public a(Lcom/pengyouwan/framework/v4/Fragment;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "fragment"    # Lcom/pengyouwan/framework/v4/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 846
    if-ne p3, v0, :cond_0

    .line 847
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 854
    :goto_0
    return-void

    .line 850
    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_1
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 858
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/al;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/aa;

    .line 860
    .local v0, "lm":Lcom/pengyouwan/framework/v4/aa;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/pengyouwan/framework/v4/aa;->g:Z

    if-nez v1, :cond_0

    .line 861
    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->h()V

    .line 862
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/al;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v0    # "lm":Lcom/pengyouwan/framework/v4/aa;
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 781
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->g:Z

    if-nez v0, :cond_0

    .line 782
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->g:Z

    .line 783
    iput-boolean p1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->h:Z

    .line 784
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->d()V

    .line 787
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 647
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/l;->a(Landroid/app/Activity;)V

    .line 654
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->i:Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    .line 799
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_0

    .line 800
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->h:Z

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->c()V

    .line 808
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->p()V

    .line 809
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->d()V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 667
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 671
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 680
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLoadersStarted="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 682
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loader Manager "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/pengyouwan/framework/v4/aa;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 689
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 691
    return-void
.end method

.method public e()Lcom/pengyouwan/framework/v4/t;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 152
    shr-int/lit8 v1, p1, 0x10

    .line 153
    .local v1, "index":I
    if-eqz v1, :cond_3

    .line 154
    add-int/lit8 v1, v1, -0x1

    .line 155
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 156
    :cond_0
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity result fragment index out of range: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v2, v2, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/Fragment;

    .line 161
    .local v0, "frag":Lcom/pengyouwan/framework/v4/Fragment;
    if-nez v0, :cond_2

    .line 162
    const-string v2, "FragmentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity result no fragment exists for index: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v0, v2, p2, p3}, Lcom/pengyouwan/framework/v4/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    .line 170
    .end local v0    # "frag":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->finish()V

    .line 181
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->c:Lcom/pengyouwan/framework/v4/s;

    invoke-virtual {v3, p0, v4, v2}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/FragmentActivity;Lcom/pengyouwan/framework/v4/s;Lcom/pengyouwan/framework/v4/Fragment;)V

    .line 199
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Lcom/pengyouwan/framework/v4/FragmentActivity$b;

    .line 207
    .local v0, "nc":Lcom/pengyouwan/framework/v4/FragmentActivity$b;
    if-eqz v0, :cond_1

    .line 208
    iget-object v3, v0, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->e:Lcom/pengyouwan/framework/v4/al;

    iput-object v3, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    .line 210
    :cond_1
    if-eqz p1, :cond_3

    .line 211
    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 212
    .local v1, "p":Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->d:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {v3, v1, v2}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 214
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/u;->j()V

    .line 215
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 223
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 224
    .local v0, "show":Z
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 233
    .end local v0    # "show":Z
    :goto_0
    return v0

    .line 231
    .restart local v0    # "show":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "show":Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 241
    const-string v7, "fragment"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 242
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    .line 322
    :goto_0
    return-object v7

    .line 245
    :cond_0
    const-string v7, "class"

    invoke-interface {p3, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "fname":Ljava/lang/String;
    sget-object v7, Lcom/pengyouwan/framework/v4/FragmentActivity$a;->a:[I

    invoke-virtual {p2, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v2, :cond_1

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    :cond_1
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 251
    .local v4, "id":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-static {p0, v2}, Lcom/pengyouwan/framework/v4/Fragment;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 260
    :cond_2
    const/4 v5, 0x0

    .line 261
    .local v5, "parent":Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v1

    .line 262
    .local v1, "containerId":I
    :cond_3
    if-ne v1, v8, :cond_4

    if-ne v4, v8, :cond_4

    if-nez v6, :cond_4

    .line 263
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v9, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 270
    :cond_4
    if-eq v4, v8, :cond_5

    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v7, v4}, Lcom/pengyouwan/framework/v4/u;->a(I)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v3

    .line 271
    .local v3, "fragment":Lcom/pengyouwan/framework/v4/Fragment;
    :cond_5
    if-nez v3, :cond_6

    if-eqz v6, :cond_6

    .line 272
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v7, v6}, Lcom/pengyouwan/framework/v4/u;->a(Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v3

    .line 274
    :cond_6
    if-nez v3, :cond_7

    if-eq v1, v8, :cond_7

    .line 275
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v7, v1}, Lcom/pengyouwan/framework/v4/u;->a(I)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v3

    .line 278
    :cond_7
    sget-boolean v7, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v7, :cond_8

    const-string v7, "FragmentActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCreateView: id=0x"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    const-string v9, " existing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_8
    if-nez v3, :cond_a

    .line 282
    invoke-static {p0, v2}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v3

    .line 283
    iput-boolean v10, v3, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    .line 284
    if-eqz v4, :cond_9

    move v7, v4

    :goto_1
    iput v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    .line 285
    iput v1, v3, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    .line 286
    iput-object v6, v3, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    .line 287
    iput-boolean v10, v3, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    .line 288
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    .line 289
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 290
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v7, v3, v10}, Lcom/pengyouwan/framework/v4/u;->a(Lcom/pengyouwan/framework/v4/Fragment;Z)V

    .line 312
    :goto_2
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-nez v7, :cond_d

    .line 313
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Fragment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 314
    const-string v9, " did not create a view."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    move v7, v1

    .line 284
    goto :goto_1

    .line 292
    :cond_a
    iget-boolean v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    if-eqz v7, :cond_b

    .line 295
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v9, ": Duplicate id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 297
    const-string v9, ", tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or parent id 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 298
    const-string v9, " with another fragment for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 302
    :cond_b
    iput-boolean v10, v3, Lcom/pengyouwan/framework/v4/Fragment;->s:Z

    .line 306
    iget-boolean v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->F:Z

    if-nez v7, :cond_c

    .line 307
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {v3, p0, p3, v7}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 309
    :cond_c
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v7, v3}, Lcom/pengyouwan/framework/v4/u;->b(Lcom/pengyouwan/framework/v4/Fragment;)V

    goto :goto_2

    .line 316
    :cond_d
    if-eqz v4, :cond_e

    .line 317
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    .line 319
    :cond_e
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    .line 320
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :cond_f
    iget-object v7, v3, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Z)V

    .line 334
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->r()V

    .line 335
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/aa;->h()V

    .line 338
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 346
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 347
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->onBackPressed()V

    .line 351
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 363
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->s()V

    .line 364
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    .line 375
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 383
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :sswitch_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p2}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p2}, Lcom/pengyouwan/framework/v4/u;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 427
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 428
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 397
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 398
    return-void

    .line 394
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0, p2}, Lcom/pengyouwan/framework/v4/u;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->e:Z

    .line 407
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->n()V

    .line 412
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 453
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a()V

    .line 455
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 456
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 473
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 474
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->i:Z

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->i:Z

    .line 476
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 477
    invoke-virtual {p0, p1, p3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 479
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 480
    .local v0, "goforit":Z
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1, p3}, Lcom/pengyouwan/framework/v4/u;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 483
    .end local v0    # "goforit":Z
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 442
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->e:Z

    .line 444
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 445
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 500
    iget-boolean v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->f:Z

    if-eqz v8, :cond_0

    .line 501
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Z)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->b()Ljava/lang/Object;

    move-result-object v1

    .line 506
    .local v1, "custom":Ljava/lang/Object;
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v8}, Lcom/pengyouwan/framework/v4/u;->g()Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    .local v2, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/framework/v4/Fragment;>;"
    const/4 v7, 0x0

    .line 508
    .local v7, "retainLoaders":Z
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    if-eqz v8, :cond_1

    .line 511
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v8}, Lcom/pengyouwan/framework/v4/al;->size()I

    move-result v0

    .line 512
    .local v0, "N":I
    new-array v5, v0, [Lcom/pengyouwan/framework/v4/aa;

    .line 513
    .local v5, "loaders":[Lcom/pengyouwan/framework/v4/aa;
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_2

    .line 516
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_3

    .line 526
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "loaders":[Lcom/pengyouwan/framework/v4/aa;
    :cond_1
    if-nez v2, :cond_5

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    move-object v6, v9

    .line 536
    :goto_2
    return-object v6

    .line 514
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v5    # "loaders":[Lcom/pengyouwan/framework/v4/aa;
    :cond_2
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v8, v3}, Lcom/pengyouwan/framework/v4/al;->c(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pengyouwan/framework/v4/aa;

    aput-object v8, v5, v3

    .line 513
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 517
    :cond_3
    aget-object v4, v5, v3

    .line 518
    .local v4, "lm":Lcom/pengyouwan/framework/v4/aa;
    iget-boolean v8, v4, Lcom/pengyouwan/framework/v4/aa;->g:Z

    if-eqz v8, :cond_4

    .line 519
    const/4 v7, 0x1

    .line 516
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 521
    :cond_4
    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/aa;->h()V

    .line 522
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    iget-object v10, v4, Lcom/pengyouwan/framework/v4/aa;->d:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/pengyouwan/framework/v4/al;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 530
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "lm":Lcom/pengyouwan/framework/v4/aa;
    .end local v5    # "loaders":[Lcom/pengyouwan/framework/v4/aa;
    :cond_5
    new-instance v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;

    invoke-direct {v6}, Lcom/pengyouwan/framework/v4/FragmentActivity$b;-><init>()V

    .line 531
    .local v6, "nci":Lcom/pengyouwan/framework/v4/FragmentActivity$b;
    iput-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->a:Ljava/lang/Object;

    .line 532
    iput-object v1, v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->b:Ljava/lang/Object;

    .line 533
    iput-object v9, v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->c:Lcom/pengyouwan/framework/v4/al;

    .line 534
    iput-object v2, v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->d:Ljava/util/ArrayList;

    .line 535
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    iput-object v8, v6, Lcom/pengyouwan/framework/v4/FragmentActivity$b;->e:Lcom/pengyouwan/framework/v4/al;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 545
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/u;->h()Landroid/os/Parcelable;

    move-result-object v0

    .line 546
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 547
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 549
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 557
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 559
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->f:Z

    .line 560
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->g:Z

    .line 561
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->d:Z

    if-nez v4, :cond_0

    .line 564
    iput-boolean v6, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->d:Z

    .line 565
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/u;->k()V

    .line 568
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/u;->i()V

    .line 569
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 571
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    if-nez v4, :cond_2

    .line 572
    iput-boolean v6, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    .line 573
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v4, :cond_4

    .line 574
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/aa;->b()V

    .line 582
    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->j:Z

    .line 586
    :cond_2
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/u;->l()V

    .line 587
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    if-eqz v4, :cond_3

    .line 588
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/al;->size()I

    move-result v0

    .line 589
    .local v0, "N":I
    new-array v3, v0, [Lcom/pengyouwan/framework/v4/aa;

    .line 590
    .local v3, "loaders":[Lcom/pengyouwan/framework/v4/aa;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_5

    .line 593
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_6

    .line 599
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "loaders":[Lcom/pengyouwan/framework/v4/aa;
    :cond_3
    return-void

    .line 575
    :cond_4
    iget-boolean v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->j:Z

    if-nez v4, :cond_1

    .line 576
    const-string v4, "(root)"

    iget-boolean v5, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->k:Z

    invoke-virtual {p0, v4, v5, v7}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Ljava/lang/String;ZZ)Lcom/pengyouwan/framework/v4/aa;

    move-result-object v4

    iput-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    .line 578
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    iget-boolean v4, v4, Lcom/pengyouwan/framework/v4/aa;->f:Z

    if-nez v4, :cond_1

    .line 579
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->m:Lcom/pengyouwan/framework/v4/aa;

    invoke-virtual {v4}, Lcom/pengyouwan/framework/v4/aa;->b()V

    goto :goto_0

    .line 591
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "loaders":[Lcom/pengyouwan/framework/v4/aa;
    :cond_5
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->l:Lcom/pengyouwan/framework/v4/al;

    invoke-virtual {v4, v1}, Lcom/pengyouwan/framework/v4/al;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/framework/v4/aa;

    aput-object v4, v3, v1

    .line 590
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 594
    :cond_6
    aget-object v2, v3, v1

    .line 595
    .local v2, "lm":Lcom/pengyouwan/framework/v4/aa;
    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa;->e()V

    .line 596
    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/aa;->g()V

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 608
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->f:Z

    .line 609
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->o()V

    .line 612
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 835
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 839
    return-void
.end method
