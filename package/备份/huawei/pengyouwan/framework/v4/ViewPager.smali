.class public Lcom/pengyouwan/framework/v4/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/ViewPager$a;,
        Lcom/pengyouwan/framework/v4/ViewPager$b;,
        Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;,
        Lcom/pengyouwan/framework/v4/ViewPager$c;,
        Lcom/pengyouwan/framework/v4/ViewPager$d;,
        Lcom/pengyouwan/framework/v4/ViewPager$e;,
        Lcom/pengyouwan/framework/v4/ViewPager$SavedState;,
        Lcom/pengyouwan/framework/v4/ViewPager$f;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final ac:Lcom/pengyouwan/framework/v4/ViewPager$f;

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/pengyouwan/framework/v4/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:I

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Lcom/pengyouwan/framework/v4/q;

.field private Q:Lcom/pengyouwan/framework/v4/q;

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Lcom/pengyouwan/framework/v4/ViewPager$d;

.field private W:Lcom/pengyouwan/framework/v4/ViewPager$d;

.field private Z:Lcom/pengyouwan/framework/v4/ViewPager$e;

.field private aa:I

.field private ab:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ad:Ljava/lang/Runnable;

.field private ae:I

.field private b:I

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/framework/v4/ViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/pengyouwan/framework/v4/ViewPager$b;

.field private final g:Landroid/graphics/Rect;

.field private h:Lcom/pengyouwan/framework/v4/ag;

.field private i:I

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 93
    const v2, 0x10100b3

    aput v2, v0, v1

    .line 92
    sput-object v0, Lcom/pengyouwan/framework/v4/ViewPager;->a:[I

    .line 110
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$1;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$1;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ViewPager;->c:Ljava/util/Comparator;

    .line 117
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$2;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$2;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ViewPager;->d:Landroid/view/animation/Interpolator;

    .line 217
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$f;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$f;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/ViewPager;->ac:Lcom/pengyouwan/framework/v4/ViewPager$f;

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 343
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$b;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->f:Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->g:Landroid/graphics/Rect;

    .line 131
    iput v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->j:I

    .line 132
    iput-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->k:Landroid/os/Parcelable;

    .line 133
    iput-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->l:Ljava/lang/ClassLoader;

    .line 145
    const v0, -0x800001

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    .line 146
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    .line 155
    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->y:I

    .line 174
    iput v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 201
    iput-boolean v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    .line 202
    iput-boolean v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->S:Z

    .line 235
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/ViewPager$3;-><init>(Lcom/pengyouwan/framework/v4/ViewPager;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ad:Ljava/lang/Runnable;

    .line 242
    iput v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ae:I

    .line 344
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->a()V

    .line 345
    return-void
.end method

.method private a(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2145
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->M:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->K:I

    if-le v4, v5, :cond_2

    .line 2146
    if-lez p3, :cond_1

    move v2, p1

    .line 2152
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2153
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2154
    .local v0, "firstItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2157
    .local v1, "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget v4, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v5, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2160
    .end local v0    # "firstItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v1    # "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_0
    return v2

    .line 2146
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2148
    :cond_2
    iget v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2149
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2148
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2574
    if-nez p1, :cond_0

    .line 2575
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2577
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2578
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2596
    :cond_1
    return-object p1

    .line 2581
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2582
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2583
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2584
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2586
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2587
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2588
    check-cast v0, Landroid/view/ViewGroup;

    .line 2589
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2590
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2591
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2592
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2594
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/pengyouwan/framework/v4/ViewPager;)Lcom/pengyouwan/framework/v4/ag;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    return-object v0
.end method

.method private a(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1462
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1463
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1464
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1466
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v13

    .line 1467
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1468
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1470
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 1471
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1474
    .local v5, "newDuration":I
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->c(I)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v11

    .line 1475
    .local v11, "targetInfo":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    const/4 v2, 0x0

    .line 1476
    iget v3, v11, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    .line 1475
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1488
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->c(I)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v6

    .line 1480
    .local v6, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1482
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1481
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1483
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Z)V

    .line 1485
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1480
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 551
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->c(I)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v0

    .line 552
    .local v0, "curInfo":Lcom/pengyouwan/framework/v4/ViewPager$b;
    const/4 v1, 0x0

    .line 553
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v2

    .line 555
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    .line 556
    iget v5, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v6, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 555
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 558
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 559
    invoke-virtual {p0, v1, v7, p3}, Lcom/pengyouwan/framework/v4/ViewPager;->a(III)V

    .line 560
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_1

    .line 561
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 563
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_2

    .line 564
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 577
    :cond_2
    :goto_0
    return-void

    .line 567
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_4

    .line 568
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 570
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_5

    .line 571
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 573
    :cond_5
    invoke-direct {p0, v7}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Z)V

    .line 574
    invoke-virtual {p0, v1, v7}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 575
    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->f(I)Z

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2378
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2379
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Lcom/pengyouwan/framework/v4/ad;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2380
    .local v1, "pointerId":I
    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    if-ne v1, v3, :cond_0

    .line 2383
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2384
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 2385
    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/ad;->b(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 2386
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2387
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2390
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/pengyouwan/framework/v4/ViewPager$b;ILcom/pengyouwan/framework/v4/ViewPager$b;)V
    .locals 14
    .param p1, "curItem"    # Lcom/pengyouwan/framework/v4/ViewPager$b;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/pengyouwan/framework/v4/ViewPager$b;

    .prologue
    .line 1116
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v12}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v1

    .line 1117
    .local v1, "N":I
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v11

    .line 1118
    .local v11, "width":I
    if-lez v11, :cond_1

    iget v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1120
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_0

    .line 1121
    move-object/from16 v0, p3

    iget v8, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 1123
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-ge v8, v12, :cond_6

    .line 1124
    const/4 v5, 0x0

    .line 1125
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1126
    .local v3, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1127
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1128
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-gt v9, v12, :cond_0

    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1127
    if-lt v5, v12, :cond_2

    .line 1167
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1168
    .local v4, "itemCount":I
    iget v7, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1169
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    add-int/lit8 v9, v12, -0x1

    .line 1170
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-nez v12, :cond_a

    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    :goto_2
    iput v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    .line 1171
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_b

    .line 1172
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v13, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    .line 1171
    :goto_3
    iput v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    .line 1174
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_4
    if-gez v2, :cond_c

    .line 1183
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v13, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1184
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    add-int/lit8 v9, v12, 0x1

    .line 1186
    add-int/lit8 v2, p2, 0x1

    :goto_5
    if-lt v2, v4, :cond_f

    .line 1198
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->S:Z

    .line 1199
    return-void

    .line 1118
    .end local v2    # "i":I
    .end local v4    # "itemCount":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1129
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_2
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1130
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_6
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-le v9, v12, :cond_3

    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-lt v5, v12, :cond_4

    .line 1134
    :cond_3
    :goto_7
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-lt v9, v12, :cond_5

    .line 1140
    iput v7, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1141
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1128
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1131
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1132
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    goto :goto_6

    .line 1137
    :cond_5
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v12, v9}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1138
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1143
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_6
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-le v8, v12, :cond_0

    .line 1144
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1145
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1146
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1147
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1148
    .restart local v9    # "pos":I
    :goto_8
    iget v12, p1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-lt v9, v12, :cond_0

    .line 1147
    if-ltz v5, :cond_0

    .line 1149
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1150
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_9
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-ge v9, v12, :cond_7

    if-gtz v5, :cond_8

    .line 1154
    :cond_7
    :goto_a
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-gt v9, v12, :cond_9

    .line 1160
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1161
    iput v7, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1148
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 1151
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 1152
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    goto :goto_9

    .line 1157
    :cond_9
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v12, v9}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1158
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 1170
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v5    # "itemIndex":I
    .end local v8    # "oldCurPosition":I
    .restart local v4    # "itemCount":I
    :cond_a
    const v12, -0x800001

    goto/16 :goto_2

    .line 1172
    :cond_b
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto/16 :goto_3

    .line 1175
    .restart local v2    # "i":I
    :cond_c
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1176
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_b
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-gt v9, v12, :cond_e

    .line 1179
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1180
    iput v7, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1181
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-nez v12, :cond_d

    iput v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    .line 1174
    :cond_d
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_4

    .line 1177
    :cond_e
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_b

    .line 1187
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_f
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1188
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_c
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-lt v9, v12, :cond_11

    .line 1191
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_10

    .line 1192
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    .line 1194
    :cond_10
    iput v7, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 1195
    iget v12, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1186
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 1189
    :cond_11
    iget-object v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c
.end method

.method static synthetic a(Lcom/pengyouwan/framework/v4/ViewPager;I)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1730
    iget v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ae:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1731
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1733
    invoke-direct {p0, v7}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 1734
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1735
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v3

    .line 1736
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v4

    .line 1737
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1738
    .local v5, "x":I
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1739
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1740
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 1743
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 1744
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_4

    .line 1751
    if-eqz v2, :cond_2

    .line 1752
    if-eqz p1, :cond_6

    .line 1753
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ad:Ljava/lang/Runnable;

    invoke-static {p0, v7}, Lcom/pengyouwan/framework/v4/aq;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1758
    :cond_2
    :goto_2
    return-void

    .end local v0    # "i":I
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1730
    goto :goto_0

    .line 1745
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1746
    .local v1, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget-boolean v8, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->c:Z

    if-eqz v8, :cond_5

    .line 1747
    const/4 v2, 0x1

    .line 1748
    iput-boolean v7, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->c:Z

    .line 1744
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1755
    .end local v1    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_6
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ad:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1761
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->C:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->C:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/framework/v4/ViewPager;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    return v0
.end method

.method private b(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v0

    .line 1766
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1771
    return-void

    .line 1767
    :cond_0
    if-eqz p1, :cond_1

    .line 1768
    const/4 v2, 0x2

    .line 1769
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/pengyouwan/framework/v4/aq;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1766
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1768
    .end local v2    # "layerType":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private b(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2051
    const/4 v7, 0x0

    .line 2053
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    sub-float v2, v14, p1

    .line 2054
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 2056
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2057
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2058
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v13

    .line 2060
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    mul-float v6, v14, v15

    .line 2061
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    mul-float v11, v14, v15

    .line 2062
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2063
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2065
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2066
    .local v3, "firstItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2067
    .local v4, "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget v14, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-eqz v14, :cond_0

    .line 2068
    const/4 v5, 0x0

    .line 2069
    iget v14, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2071
    :cond_0
    iget v14, v4, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v15}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2072
    const/4 v10, 0x0

    .line 2073
    iget v14, v4, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2076
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2077
    if-eqz v5, :cond_2

    .line 2078
    sub-float v9, v6, v12

    .line 2079
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/pengyouwan/framework/v4/q;->a(F)Z

    move-result v7

    .line 2081
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2090
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 2091
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 2092
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/pengyouwan/framework/v4/ViewPager;->f(I)Z

    .line 2094
    return v7

    .line 2082
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2083
    if-eqz v10, :cond_5

    .line 2084
    sub-float v9, v12, v11

    .line 2085
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/pengyouwan/framework/v4/q;->a(F)Z

    move-result v7

    .line 2087
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private c(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2045
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2046
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2048
    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->w:Z

    if-eq v0, p1, :cond_0

    .line 2404
    iput-boolean p1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->w:Z

    .line 2415
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 382
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ae:I

    if-ne v0, p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iput p1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ae:I

    .line 387
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Z:Lcom/pengyouwan/framework/v4/ViewPager$e;

    if-eqz v0, :cond_2

    .line 389
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Z)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->b(I)V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e()[I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/pengyouwan/framework/v4/ViewPager;->a:[I

    return-object v0
.end method

.method private f()I
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private f(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1625
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1626
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->T:Z

    .line 1627
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IFI)V

    .line 1628
    iget-boolean v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->T:Z

    if-nez v8, :cond_2

    .line 1629
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1630
    const-string v8, "onPageScrolled did not call superclass implementation"

    .line 1629
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1634
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->h()Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v1

    .line 1635
    .local v1, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v5

    .line 1636
    .local v5, "width":I
    iget v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    add-int v6, v5, v8

    .line 1637
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1638
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 1639
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    sub-float/2addr v8, v9

    .line 1640
    iget v9, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v9, v2

    .line 1639
    div-float v4, v8, v9

    .line 1641
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1643
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->T:Z

    .line 1644
    invoke-virtual {p0, v0, v4, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IFI)V

    .line 1645
    iget-boolean v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->T:Z

    if-nez v7, :cond_1

    .line 1646
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1647
    const-string v8, "onPageScrolled did not call superclass implementation"

    .line 1646
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1649
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private g()V
    .locals 5

    .prologue
    .line 1100
    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->aa:I

    if-eqz v3, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    .line 1106
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v1

    .line 1107
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 1111
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    sget-object v4, Lcom/pengyouwan/framework/v4/ViewPager;->ac:Lcom/pengyouwan/framework/v4/ViewPager$f;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1113
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 1104
    :cond_1
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1108
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1109
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private h()Lcom/pengyouwan/framework/v4/ViewPager$b;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2102
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v12

    .line 2103
    .local v12, "width":I
    if-lez v12, :cond_2

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2104
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2105
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2106
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2107
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2108
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2110
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2111
    .local v3, "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v1, v13, :cond_3

    .line 2140
    .end local v3    # "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_1
    :goto_2
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_2
    move v11, v8

    .line 2103
    goto :goto_0

    .line 2112
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v3    # "lastItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v8    # "marginOffset":F
    .restart local v11    # "scrollOffset":F
    :cond_3
    iget-object v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2114
    .local v2, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-nez v0, :cond_4

    iget v13, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_4

    .line 2116
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->f:Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2117
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 2118
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 2119
    iget-object v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    iget v14, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    invoke-virtual {v13, v14}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v13

    iput v13, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    .line 2120
    add-int/lit8 v1, v1, -0x1

    .line 2122
    :cond_4
    iget v9, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 2124
    .local v9, "offset":F
    move v7, v9

    .line 2125
    .local v7, "leftBound":F
    iget v13, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2126
    .local v10, "rightBound":F
    if-nez v0, :cond_5

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_1

    .line 2127
    :cond_5
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_6

    iget-object v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_7

    :cond_6
    move-object v3, v2

    .line 2128
    goto :goto_2

    .line 2133
    :cond_7
    const/4 v0, 0x0

    .line 2134
    iget v5, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 2135
    move v4, v9

    .line 2136
    iget v6, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    .line 2137
    move-object v3, v2

    .line 2111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2393
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    .line 2394
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    .line 2396
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    .line 2400
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 760
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 761
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 762
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Lcom/pengyouwan/framework/v4/ViewPager$b;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 824
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$b;-><init>()V

    .line 825
    .local v0, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iput p1, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 826
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v1, p0, p1}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->a:Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v1

    iput v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    .line 828
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :goto_0
    return-object v0

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1326
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 1321
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1322
    .local v1, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    iget-object v3, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 348
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->setWillNotDraw(Z)V

    .line 349
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->setDescendantFocusability(I)V

    .line 350
    invoke-virtual {p0, v5}, Lcom/pengyouwan/framework/v4/ViewPager;->setFocusable(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 352
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/pengyouwan/framework/v4/ViewPager;->d:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    .line 353
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 354
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 356
    .local v2, "density":F
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/av;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    .line 357
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->K:I

    .line 358
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->L:I

    .line 359
    new-instance v3, Lcom/pengyouwan/framework/v4/q;

    invoke-direct {v3, v1}, Lcom/pengyouwan/framework/v4/q;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    .line 360
    new-instance v3, Lcom/pengyouwan/framework/v4/q;

    invoke-direct {v3, v1}, Lcom/pengyouwan/framework/v4/q;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    .line 362
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->M:I

    .line 363
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->N:I

    .line 364
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->B:I

    .line 366
    new-instance v3, Lcom/pengyouwan/framework/v4/ViewPager$c;

    invoke-direct {v3, p0}, Lcom/pengyouwan/framework/v4/ViewPager$c;-><init>(Lcom/pengyouwan/framework/v4/ViewPager;)V

    invoke-static {p0, v3}, Lcom/pengyouwan/framework/v4/aq;->a(Landroid/view/View;Lcom/pengyouwan/framework/v4/a;)V

    .line 368
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->c(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    invoke-static {p0, v5}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;I)V

    .line 373
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 483
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 484
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZZ)V

    .line 485
    return-void

    .line 484
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1666
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->U:I

    if-lez v15, :cond_0

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v12

    .line 1668
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v10

    .line 1669
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v11

    .line 1670
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWidth()I

    move-result v14

    .line 1671
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v4

    .line 1672
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v4, :cond_4

    .line 1705
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v15, :cond_1

    .line 1706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(IFI)V

    .line 1708
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v15, :cond_2

    .line 1709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(IFI)V

    .line 1712
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->Z:Lcom/pengyouwan/framework/v4/ViewPager$e;

    if-eqz v15, :cond_3

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v12

    .line 1714
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v4

    .line 1715
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-lt v8, v4, :cond_7

    .line 1726
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v12    # "scrollX":I
    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->T:Z

    .line 1727
    return-void

    .line 1673
    .restart local v4    # "childCount":I
    .restart local v8    # "i":I
    .restart local v10    # "paddingLeft":I
    .restart local v11    # "paddingRight":I
    .restart local v12    # "scrollX":I
    .restart local v14    # "width":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1674
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1675
    .local v9, "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    if-nez v15, :cond_6

    .line 1672
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1677
    :cond_6
    iget v15, v9, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v15, 0x7

    .line 1678
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1679
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1681
    :pswitch_0
    move v5, v10

    .line 1696
    :goto_3
    add-int/2addr v5, v12

    .line 1698
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1699
    .local v6, "childOffset":I
    if-eqz v6, :cond_5

    .line 1700
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 1684
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1685
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1686
    goto :goto_3

    .line 1688
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1690
    goto :goto_3

    .line 1692
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1693
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_3

    .line 1716
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v9    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v14    # "width":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1717
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1719
    .restart local v9    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    if-eqz v15, :cond_8

    .line 1715
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1721
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1722
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->Z:Lcom/pengyouwan/framework/v4/ViewPager$e;

    invoke-interface {v15, v3, v13}, Lcom/pengyouwan/framework/v4/ViewPager$e;->a(Landroid/view/View;F)V

    goto :goto_4

    .line 1679
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 821
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v2

    .line 789
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v3

    .line 790
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 791
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 792
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 793
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->b()V

    .line 795
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    goto :goto_0

    .line 799
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 800
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    .line 802
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v12

    .line 803
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 804
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 805
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 806
    invoke-virtual {p0, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->a(F)F

    move-result v14

    mul-float/2addr v13, v14

    .line 805
    add-float v7, v1, v13

    .line 808
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 809
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 810
    if-lez p3, :cond_2

    .line 811
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 817
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 819
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 820
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;)V

    goto :goto_0

    .line 813
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    iget v14, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    invoke-virtual {v13, v14}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 814
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 815
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 495
    invoke-virtual {p0, p1, p2, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZZ)V

    .line 496
    return-void
.end method

.method a(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZZI)V

    .line 504
    return-void
.end method

.method a(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 507
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v3

    if-gtz v3, :cond_1

    .line 508
    :cond_0
    invoke-direct {p0, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 547
    :goto_0
    return-void

    .line 511
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    invoke-direct {p0, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    goto :goto_0

    .line 516
    :cond_2
    if-gez p1, :cond_8

    .line 517
    const/4 p1, 0x0

    .line 521
    :cond_3
    :goto_1
    iget v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->y:I

    .line 522
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_5

    .line 526
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_9

    .line 530
    .end local v1    # "i":I
    :cond_5
    iget v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-eq v3, p1, :cond_a

    .line 532
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    if-eqz v3, :cond_b

    .line 535
    iput p1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    .line 536
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_6

    .line 537
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->V:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 539
    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    if-eqz v3, :cond_7

    .line 540
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->W:Lcom/pengyouwan/framework/v4/ViewPager$d;

    invoke-interface {v3, p1}, Lcom/pengyouwan/framework/v4/ViewPager$d;->a(I)V

    .line 542
    :cond_7
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->requestLayout()V

    goto :goto_0

    .line 518
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_8
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 527
    .restart local v1    # "i":I
    .restart local v2    # "pageLimit":I
    :cond_9
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    iput-boolean v0, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->c:Z

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_a
    move v0, v4

    .line 530
    goto :goto_3

    .line 544
    .restart local v0    # "dispatchSelected":Z
    :cond_b
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->b(I)V

    .line 545
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2482
    const/4 v0, 0x0

    .line 2483
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2504
    :cond_0
    :goto_0
    return v0

    .line 2486
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(I)Z

    move-result v0

    .line 2487
    goto :goto_0

    .line 2489
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(I)Z

    move-result v0

    .line 2490
    goto :goto_0

    .line 2492
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2495
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/w;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2496
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(I)Z

    move-result v0

    .line 2497
    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Lcom/pengyouwan/framework/v4/w;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2498
    invoke-virtual {p0, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->d(I)Z

    move-result v0

    goto :goto_0

    .line 2484
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2445
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 2446
    check-cast v7, Landroid/view/ViewGroup;

    .line 2447
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2448
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2449
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2451
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-gez v8, :cond_1

    .line 2464
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/aq;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2454
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2455
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2456
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2457
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 2458
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2457
    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    .line 2458
    if-eqz v0, :cond_2

    .line 2459
    const/4 v0, 0x1

    goto :goto_1

    .line 2451
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2464
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2620
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2622
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2624
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_0

    .line 2625
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 2641
    .end local v3    # "i":I
    :cond_0
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_1

    .line 2643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 2646
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2657
    :cond_2
    :goto_1
    return-void

    .line 2626
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2627
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2628
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v4

    .line 2629
    .local v4, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v4, :cond_4

    iget v5, v4, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v6, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-ne v5, v6, :cond_4

    .line 2630
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2625
    .end local v4    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2649
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_5
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 2650
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2653
    :cond_6
    if-eqz p1, :cond_2

    .line 2654
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2667
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 2676
    return-void

    .line 2668
    :cond_0
    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2669
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2670
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v2

    .line 2671
    .local v2, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-ne v3, v4, :cond_1

    .line 2672
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2667
    .end local v2    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1286
    invoke-virtual {p0, p3}, Lcom/pengyouwan/framework/v4/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1287
    invoke-virtual {p0, p3}, Lcom/pengyouwan/framework/v4/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1289
    check-cast v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1290
    .local v0, "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    instance-of v2, p1, Lcom/pengyouwan/framework/v4/ViewPager$a;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    .line 1291
    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->v:Z

    if-eqz v1, :cond_2

    .line 1292
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_1

    .line 1293
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1295
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->d:Z

    .line 1296
    invoke-virtual {p0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1308
    :goto_0
    return-void

    .line 1298
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method b(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1331
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-ne v0, p0, :cond_0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v1

    :goto_1
    return-object v1

    .line 1332
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_2

    .line 1333
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 1335
    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->b(I)V

    .line 909
    return-void
.end method

.method b(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 912
    const/16 v21, 0x0

    .line 913
    .local v21, "oldCurInfo":Lcom/pengyouwan/framework/v4/ViewPager$b;
    const/4 v15, 0x2

    .line 914
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 916
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->c(I)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v21

    .line 917
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    .line 920
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->g()V

    .line 1097
    :cond_1
    :goto_1
    return-void

    .line 915
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 929
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 931
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->g()V

    goto :goto_1

    .line 938
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/view/ViewGroup;)V

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->y:I

    move/from16 v22, v0

    .line 945
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 946
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v4

    .line 947
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 949
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->b:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 952
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 956
    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->b:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 959
    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 960
    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 961
    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 956
    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 953
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 954
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .line 965
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 966
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 967
    .local v9, "curItem":Lcom/pengyouwan/framework/v4/ViewPager$b;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-lt v8, v0, :cond_d

    .line 975
    :cond_6
    :goto_4
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->a(II)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v9

    .line 982
    :cond_7
    if-eqz v9, :cond_a

    .line 983
    const/4 v13, 0x0

    .line 984
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 985
    .local v18, "itemIndex":I
    if-ltz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 986
    .local v17, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v7

    .line 987
    .local v7, "clientWidth":I
    if-gtz v7, :cond_10

    const/16 v19, 0x0

    .line 989
    .local v19, "leftWidthNeeded":F
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_7
    if-gez v23, :cond_11

    .line 1017
    :cond_8
    iget v14, v9, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    .line 1018
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1019
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 1021
    :goto_8
    if-gtz v7, :cond_19

    const/16 v25, 0x0

    .line 1023
    .local v25, "rightWidthNeeded":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_a
    move/from16 v0, v23

    if-lt v0, v4, :cond_1a

    .line 1050
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager$b;ILcom/pengyouwan/framework/v4/ViewPager$b;)V

    .line 1060
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v29, v0

    if-eqz v9, :cond_21

    iget-object v0, v9, Lcom/pengyouwan/framework/v4/ViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/ag;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ag;->b(Landroid/view/ViewGroup;)V

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v6

    .line 1067
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_c
    move/from16 v0, v16

    if-lt v0, v6, :cond_22

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->g()V

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1084
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_24

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v17

    .line 1085
    .restart local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :goto_d
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1086
    :cond_b
    const/16 v16, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1087
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1088
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v17

    .line 1089
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 1090
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1086
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 968
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v16    # "i":I
    .end local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 969
    .restart local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    .line 970
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 971
    goto/16 :goto_4

    .line 967
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 985
    .end local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 988
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_10
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_6

    .line 990
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_11
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_14

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 991
    if-eqz v17, :cond_8

    .line 994
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->c:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1001
    add-int/lit8 v18, v18, -0x1

    .line 1002
    add-int/lit8 v8, v8, -0x1

    .line 1003
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 989
    :cond_12
    :goto_f
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_7

    .line 1003
    :cond_13
    const/16 v17, 0x0

    goto :goto_f

    .line 1005
    :cond_14
    if-eqz v17, :cond_16

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1006
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1007
    add-int/lit8 v18, v18, -0x1

    .line 1008
    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 1009
    :goto_10
    goto :goto_f

    .line 1008
    :cond_15
    const/16 v17, 0x0

    goto :goto_10

    .line 1010
    :cond_16
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->a(II)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v17

    .line 1011
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1012
    add-int/lit8 v8, v8, 0x1

    .line 1013
    if-ltz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_17
    const/16 v17, 0x0

    goto :goto_11

    .line 1020
    .restart local v14    # "extraWidthRight":F
    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 1022
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_9

    .line 1024
    .restart local v25    # "rightWidthNeeded":F
    :cond_1a
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1d

    move/from16 v0, v23

    if-le v0, v12, :cond_1d

    .line 1025
    if-eqz v17, :cond_9

    .line 1028
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->c:Z

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->a:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 1023
    :cond_1b
    :goto_12
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_a

    .line 1035
    :cond_1c
    const/16 v17, 0x0

    goto :goto_12

    .line 1037
    :cond_1d
    if-eqz v17, :cond_1f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    .line 1038
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1039
    add-int/lit8 v18, v18, 0x1

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    .line 1041
    :goto_13
    goto :goto_12

    .line 1040
    :cond_1e
    const/16 v17, 0x0

    goto :goto_13

    .line 1042
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->a(II)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v17

    .line 1043
    add-int/lit8 v18, v18, 0x1

    .line 1044
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-object/from16 v17, v27

    :goto_14
    goto :goto_12

    :cond_20
    const/16 v17, 0x0

    goto :goto_14

    .line 1060
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_21
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 1068
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1069
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1070
    .local v20, "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->f:I

    .line 1071
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    move/from16 v27, v0

    if-nez v27, :cond_23

    move-object/from16 v0, v20

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->c:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_23

    .line 1073
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v17

    .line 1074
    .restart local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v17, :cond_23

    .line 1075
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->c:F

    .line 1076
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->e:I

    .line 1067
    .end local v17    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_23
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    .line 1084
    .end local v5    # "child":Landroid/view/View;
    .end local v20    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_d
.end method

.method c(I)Lcom/pengyouwan/framework/v4/ViewPager$b;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1347
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 1342
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 1343
    .local v1, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget v2, v1, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-eq v2, p1, :cond_0

    .line 1341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2600
    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-lez v1, :cond_0

    .line 2601
    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZ)V

    .line 2604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2418
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-nez v4, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return v2

    .line 2422
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v1

    .line 2423
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v0

    .line 2424
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 2425
    int-to-float v4, v1

    iget v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 2426
    :cond_2
    if-lez p1, :cond_0

    .line 2427
    int-to-float v4, v1

    iget v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2746
    instance-of v0, p1, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1601
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1602
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v0

    .line 1603
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollY()I

    move-result v1

    .line 1604
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1605
    .local v2, "x":I
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1607
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1608
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 1609
    invoke-direct {p0, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->f(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1610
    iget-object v4, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1611
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->scrollTo(II)V

    .line 1616
    :cond_1
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;)V

    .line 1622
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1621
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Z)V

    goto :goto_0
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2608
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2609
    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZ)V

    .line 2612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2508
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2509
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2510
    const/4 v1, 0x0

    .line 2534
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2536
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2538
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2539
    if-ne p1, v11, :cond_8

    .line 2542
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2543
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2544
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2545
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->c()Z

    move-result v2

    .line 2567
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2568
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->playSoundEffect(I)V

    .line 2570
    :cond_2
    return v2

    .line 2511
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2512
    const/4 v3, 0x0

    .line 2513
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_4

    .line 2520
    :goto_3
    if-nez v3, :cond_0

    .line 2522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2523
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_4
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_6

    .line 2528
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2528
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const/4 v1, 0x0

    goto :goto_0

    .line 2515
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    if-ne v6, p0, :cond_5

    .line 2516
    const/4 v3, 0x1

    .line 2517
    goto :goto_3

    .line 2514
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2526
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_4

    .line 2547
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2549
    goto :goto_1

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2552
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2553
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2554
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2555
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->d()Z

    move-result v2

    .line 2556
    goto/16 :goto_1

    .line 2557
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 2560
    goto/16 :goto_1

    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2562
    :cond_b
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->c()Z

    move-result v2

    .line 2563
    goto/16 :goto_1

    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2565
    :cond_d
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->d()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2470
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2714
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2715
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2731
    :goto_0
    return v4

    .line 2719
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v1

    .line 2720
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 2731
    const/4 v4, 0x0

    goto :goto_0

    .line 2721
    :cond_1
    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2722
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2723
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v3

    .line 2724
    .local v3, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-ne v4, v5, :cond_2

    .line 2725
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2726
    const/4 v4, 0x1

    goto :goto_0

    .line 2720
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2165
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2166
    const/4 v1, 0x0

    .line 2168
    .local v1, "needsInvalidate":Z
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->a(Landroid/view/View;)I

    move-result v2

    .line 2169
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    .line 2170
    if-ne v2, v6, :cond_4

    .line 2171
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2172
    :cond_0
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/q;->a()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2174
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2175
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWidth()I

    move-result v4

    .line 2177
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2178
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/pengyouwan/framework/v4/ViewPager;->r:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2179
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5, v0, v4}, Lcom/pengyouwan/framework/v4/q;->a(II)V

    .line 2180
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5, p1}, Lcom/pengyouwan/framework/v4/q;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2181
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2183
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/q;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2184
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2185
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWidth()I

    move-result v4

    .line 2186
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2188
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2189
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/pengyouwan/framework/v4/ViewPager;->s:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2190
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5, v0, v4}, Lcom/pengyouwan/framework/v4/q;->a(II)V

    .line 2191
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5, p1}, Lcom/pengyouwan/framework/v4/q;->a(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2192
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2199
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2201
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;)V

    .line 2203
    :cond_3
    return-void

    .line 2195
    :cond_4
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/q;->b()V

    .line 2196
    iget-object v5, p0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    invoke-virtual {v5}, Lcom/pengyouwan/framework/v4/q;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 749
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    .line 750
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 753
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2736
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2751
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2741
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 636
    iget v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->aa:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 637
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ab:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    iget v1, v2, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->f:I

    .line 638
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 636
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1352
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    .line 1354
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ad:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 378
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 379
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2207
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2210
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v13, :cond_0

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v10

    .line 2212
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getWidth()I

    move-result v11

    .line 2214
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2215
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2216
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2217
    .local v3, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget v8, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    .line 2218
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2219
    .local v4, "itemCount":I
    iget v2, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 2220
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/pengyouwan/framework/v4/ViewPager$b;

    iget v6, v13, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 2221
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-lt v9, v6, :cond_2

    .line 2247
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_0
    return-void

    .line 2223
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->e:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    check-cast v3, Lcom/pengyouwan/framework/v4/ViewPager$b;

    .line 2222
    .restart local v3    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_2
    iget v13, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-le v9, v13, :cond_3

    if-lt v5, v4, :cond_1

    .line 2227
    :cond_3
    iget v13, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    if-ne v9, v13, :cond_5

    .line 2228
    iget v13, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v14, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2229
    .local v1, "drawAt":F
    iget v13, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    iget v14, v3, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2236
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    .line 2237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pengyouwan/framework/v4/ViewPager;->p:I

    .line 2238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->q:I

    move/from16 v17, v0

    .line 2237
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2242
    :cond_4
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-gtz v13, :cond_0

    .line 2221
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2231
    .end local v1    # "drawAt":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v13, v9}, Lcom/pengyouwan/framework/v4/ag;->a(I)F

    move-result v12

    .line 2232
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2233
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1784
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1787
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    .line 1789
    const/4 v0, -0x1

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 1790
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    .line 1794
    :cond_1
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return v0

    .line 1799
    :cond_2
    if-eqz v6, :cond_4

    .line 1800
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    if-eqz v0, :cond_3

    .line 1802
    const/4 v0, 0x1

    goto :goto_0

    .line 1804
    :cond_3
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    if-eqz v0, :cond_4

    .line 1806
    const/4 v0, 0x0

    goto :goto_0

    .line 1810
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1905
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1906
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    .line 1908
    :cond_6
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1914
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    goto :goto_0

    .line 1821
    :sswitch_0
    iget v7, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 1822
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1827
    invoke-static {p1, v7}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1828
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1829
    .local v10, "x":F
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    sub-float v8, v10, v0

    .line 1830
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1831
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Lcom/pengyouwan/framework/v4/ad;->d(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1832
    .local v12, "y":F
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->H:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1835
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    invoke-direct {p0, v0, v8}, Lcom/pengyouwan/framework/v4/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1836
    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1838
    iput v10, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 1839
    iput v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    .line 1840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    .line 1841
    const/4 v0, 0x0

    goto :goto_0

    .line 1843
    :cond_7
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    .line 1846
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->c(Z)V

    .line 1847
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    .line 1848
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 1850
    iput v12, p0, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    .line 1851
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 1860
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    if-eqz v0, :cond_5

    .line 1862
    invoke-direct {p0, v10}, Lcom/pengyouwan/framework/v4/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1863
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1849
    :cond_9
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1852
    :cond_a
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    goto :goto_3

    .line 1874
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 1875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->H:F

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    .line 1876
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pengyouwan/framework/v4/ad;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 1877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->A:Z

    .line 1879
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1880
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->ae:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1881
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->N:I

    if-le v0, v1, :cond_b

    .line 1883
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 1885
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->b()V

    .line 1886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    .line 1887
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->c(Z)V

    .line 1888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    goto/16 :goto_1

    .line 1890
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Z)V

    .line 1891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    goto/16 :goto_1

    .line 1901
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1810
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v9

    .line 1493
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1494
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1495
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v19

    .line 1496
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v21

    .line 1497
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v20

    .line 1498
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingBottom()I

    move-result v18

    .line 1499
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v22

    .line 1501
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1505
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-lt v14, v9, :cond_1

    .line 1557
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1559
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_1
    if-lt v14, v9, :cond_3

    .line 1589
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->p:I

    .line 1590
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->q:I

    .line 1591
    move-object/from16 v0, p0

    iput v10, v0, Lcom/pengyouwan/framework/v4/ViewPager;->U:I

    .line 1593
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZIZ)V

    .line 1596
    :cond_0
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->R:Z

    .line 1597
    return-void

    .line 1506
    .end local v8    # "childWidth":I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1507
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 1508
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1509
    .local v17, "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1510
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1511
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1512
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->b:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1513
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->b:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1514
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1516
    :pswitch_0
    move/from16 v6, v19

    .line 1531
    :goto_2
    sparse-switch v23, :sswitch_data_0

    .line 1533
    move/from16 v7, v21

    .line 1548
    :goto_3
    add-int v6, v6, v22

    .line 1550
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1551
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1549
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1552
    add-int/lit8 v10, v10, 0x1

    .line 1505
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1519
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1520
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1521
    goto :goto_2

    .line 1523
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1525
    goto :goto_2

    .line 1527
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1528
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_2

    .line 1536
    :sswitch_0
    move/from16 v7, v21

    .line 1537
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1538
    goto :goto_3

    .line 1540
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1542
    goto :goto_3

    .line 1544
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1545
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_3

    .line 1560
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    .restart local v8    # "childWidth":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1561
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 1562
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1564
    .restart local v17    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v15

    .local v15, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v15, :cond_5

    .line 1565
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1566
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1567
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1568
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->d:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1571
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->d:Z

    .line 1573
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->c:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1574
    const/high16 v27, 0x40000000    # 2.0f

    .line 1572
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1576
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    .line 1577
    const/high16 v27, 0x40000000    # 2.0f

    .line 1575
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1578
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1584
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1585
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1583
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1559
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1531
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1363
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getDefaultSize(II)I

    move-result v21

    .line 1364
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->getDefaultSize(II)I

    move-result v22

    .line 1363
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->setMeasuredDimension(II)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1367
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1368
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->B:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->C:I

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1372
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1379
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v16

    .line 1380
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v12, v0, :cond_0

    .line 1425
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->t:I

    .line 1426
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->u:I

    .line 1429
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->v:Z

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->b()V

    .line 1431
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->v:Z

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v16

    .line 1435
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v12, v0, :cond_9

    .line 1449
    return-void

    .line 1381
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1382
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1383
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1384
    .local v13, "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    if-eqz v13, :cond_4

    iget-boolean v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1385
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->b:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1386
    .local v11, "hgrav":I
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->b:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1387
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1388
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1389
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/4 v7, 0x0

    .line 1390
    .local v7, "consumeVertical":Z
    :goto_2
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_6

    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v11, v0, :cond_6

    const/4 v6, 0x0

    .line 1392
    .local v6, "consumeHorizontal":Z
    :goto_3
    if-eqz v7, :cond_7

    .line 1393
    const/high16 v18, 0x40000000    # 2.0f

    .line 1398
    :cond_1
    :goto_4
    move/from16 v19, v5

    .line 1399
    .local v19, "widthSize":I
    move v9, v4

    .line 1400
    .local v9, "heightSize":I
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1401
    const/high16 v18, 0x40000000    # 2.0f

    .line 1402
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1403
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1406
    :cond_2
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1407
    const/high16 v8, 0x40000000    # 2.0f

    .line 1408
    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1409
    iget v9, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->height:I

    .line 1412
    :cond_3
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1413
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1414
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1416
    if-eqz v7, :cond_8

    .line 1417
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1380
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_4
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1389
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_5
    const/4 v7, 0x1

    goto :goto_2

    .line 1390
    .restart local v7    # "consumeVertical":Z
    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    .line 1394
    .restart local v6    # "consumeHorizontal":Z
    :cond_7
    if-eqz v6, :cond_1

    .line 1395
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    .line 1418
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_8
    if-eqz v6, :cond_4

    .line 1419
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_5

    .line 1436
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1437
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1441
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;

    .line 1442
    .restart local v13    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    if-eqz v13, :cond_a

    iget-boolean v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->a:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 1444
    :cond_a
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;->c:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    .line 1443
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1445
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->u:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1435
    .end local v13    # "lp":Lcom/pengyouwan/framework/v4/ViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2687
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildCount()I

    move-result v1

    .line 2688
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2689
    const/4 v6, 0x0

    .line 2690
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2691
    .local v5, "increment":I
    move v2, v1

    .line 2697
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-ne v3, v2, :cond_1

    .line 2708
    const/4 v7, 0x0

    :goto_2
    return v7

    .line 2693
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2694
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2695
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2698
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2699
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2700
    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v4

    .line 2701
    .local v4, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    if-eqz v4, :cond_2

    iget v7, v4, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    iget v8, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    if-ne v7, v8, :cond_2

    .line 2702
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2703
    const/4 v7, 0x1

    goto :goto_2

    .line 2697
    .end local v4    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    :cond_2
    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1266
    instance-of v1, p1, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1267
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1282
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1271
    check-cast v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    .line 1272
    .local v0, "ss":Lcom/pengyouwan/framework/v4/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1274
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    iget-object v2, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/framework/v4/ag;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1276
    iget v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1278
    :cond_1
    iget v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->a:I

    iput v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->j:I

    .line 1279
    iget-object v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->k:Landroid/os/Parcelable;

    .line 1280
    iget-object v1, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->l:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1255
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1256
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1257
    .local v0, "ss":Lcom/pengyouwan/framework/v4/ViewPager$SavedState;
    iget v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    iput v2, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->a:I

    .line 1258
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/ag;->b()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/pengyouwan/framework/v4/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1261
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1453
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1456
    if-eq p1, p3, :cond_0

    .line 1457
    iget v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    iget v1, p0, Lcom/pengyouwan/framework/v4/ViewPager;->n:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IIII)V

    .line 1459
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1919
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->O:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1923
    const/16 v24, 0x1

    .line 2040
    :goto_0
    return v24

    .line 1926
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1929
    const/16 v24, 0x0

    goto :goto_0

    .line 1932
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->h:Lcom/pengyouwan/framework/v4/ag;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v24

    if-nez v24, :cond_3

    .line 1934
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1937
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1938
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    .line 1940
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1942
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1943
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1945
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2037
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_6

    .line 2038
    invoke-static/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/aq;->b(Landroid/view/View;)V

    .line 2040
    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    .line 1947
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->m:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1948
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->b()V

    .line 1952
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 1953
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->H:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    .line 1954
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->b(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    goto :goto_1

    .line 1958
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1960
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1961
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1962
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/pengyouwan/framework/v4/ad;->d(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1963
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1965
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1967
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    .line 1968
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->c(Z)V

    .line 1969
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 1971
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->F:F

    .line 1972
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->e(I)V

    .line 1973
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->d(Z)V

    .line 1976
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1977
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_7

    .line 1978
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1983
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    move/from16 v24, v0

    .line 1985
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1987
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1988
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->b(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 1990
    goto/16 :goto_1

    .line 1970
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->D:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 1992
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->J:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1994
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->L:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1996
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    move/from16 v24, v0

    .line 1995
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ao;->a(Landroid/view/VelocityTracker;I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 1997
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->x:Z

    .line 1998
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->f()I

    move-result v19

    .line 1999
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->getScrollX()I

    move-result v16

    .line 2000
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->h()Lcom/pengyouwan/framework/v4/ViewPager$b;

    move-result-object v8

    .line 2001
    .local v8, "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    iget v7, v8, Lcom/pengyouwan/framework/v4/ViewPager$b;->b:I

    .line 2002
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/pengyouwan/framework/v4/ViewPager$b;->e:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/pengyouwan/framework/v4/ViewPager$b;->d:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2004
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 2005
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2006
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->G:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2007
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IFII)I

    move-result v12

    .line 2009
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZZI)V

    .line 2011
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 2012
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->i()V

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/pengyouwan/framework/v4/q;->c()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/pengyouwan/framework/v4/q;->c()Z

    move-result v25

    or-int v11, v24, v25

    .line 2015
    goto/16 :goto_1

    .line 2017
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/pengyouwan/framework/v4/ViewPager$b;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->z:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->i:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pengyouwan/framework/v4/ViewPager;->a(IZIZ)V

    .line 2019
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    .line 2020
    invoke-direct/range {p0 .. p0}, Lcom/pengyouwan/framework/v4/ViewPager;->i()V

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->P:Lcom/pengyouwan/framework/v4/q;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/pengyouwan/framework/v4/q;->c()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->Q:Lcom/pengyouwan/framework/v4/q;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/pengyouwan/framework/v4/q;->c()Z

    move-result v25

    or-int v11, v24, v25

    .line 2023
    goto/16 :goto_1

    .line 2025
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2026
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2027
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    .line 2028
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/pengyouwan/framework/v4/ad;->b(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    goto/16 :goto_1

    .line 2032
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pengyouwan/framework/v4/ViewPager;->I:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->a(Landroid/view/MotionEvent;I)I

    move-result v24

    .line 2033
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ad;->c(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pengyouwan/framework/v4/ViewPager;->E:F

    goto/16 :goto_1

    .line 1945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->v:Z

    if-eqz v0, :cond_0

    .line 1313
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/v4/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1317
    :goto_0
    return-void

    .line 1315
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
