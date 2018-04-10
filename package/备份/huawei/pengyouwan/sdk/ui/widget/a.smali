.class public Lcom/pengyouwan/sdk/ui/widget/a;
.super Ljava/lang/Object;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/widget/a$a;,
        Lcom/pengyouwan/sdk/ui/widget/a$b;,
        Lcom/pengyouwan/sdk/ui/widget/a$c;
    }
.end annotation


# static fields
.field private static j:Landroid/widget/ImageView;


# instance fields
.field private A:Landroid/view/View$OnTouchListener;

.field a:Lcom/pengyouwan/sdk/ui/widget/a$b;

.field b:J

.field c:J

.field d:I

.field e:I

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/app/Activity;

.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Landroid/view/WindowManager;

.field private k:I

.field private l:I

.field private m:Landroid/content/SharedPreferences;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private final q:I

.field private final r:I

.field private s:I

.field private final t:I

.field private final u:I

.field private v:J

.field private w:Ljava/lang/Boolean;

.field private x:Z

.field private y:Lcom/pengyouwan/sdk/ui/widget/a$a;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    .line 62
    iput v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    .line 67
    const-string v0, "position"

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->n:Ljava/lang/String;

    .line 70
    const-string v0, "viewx"

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->o:Ljava/lang/String;

    .line 72
    const-string v0, "viewy"

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->p:Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/pengyouwan/sdk/ui/widget/a;->q:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->r:I

    .line 80
    iput v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    .line 83
    const/4 v0, 0x3

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->t:I

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->u:I

    .line 89
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->v:J

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    .line 95
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->x:Z

    .line 100
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->z:Z

    .line 102
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/a$b;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/a$b;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->b:J

    .line 192
    iput v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iput v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    .line 211
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/a$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/a$1;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->A:Landroid/view/View$OnTouchListener;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Landroid/app/Activity;Landroid/view/WindowManager;)V

    .line 106
    return-void
.end method

.method private a(I)I
    .locals 5
    .param p1, "width"    # I

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x500

    const/16 v2, 0x438

    const/16 v1, 0x2d0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "speed":I
    if-ge p1, v1, :cond_1

    .line 426
    const/16 v0, 0x10

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    if-le p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 428
    const/16 v0, 0xe

    .line 429
    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 430
    const/16 v0, 0xc

    .line 431
    goto :goto_0

    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 432
    const/16 v0, 0xa

    .line 433
    goto :goto_0

    :cond_4
    if-lt p1, v4, :cond_0

    .line 434
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/widget/a;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    return v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/widget/a;I)I
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/a;->a(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/WindowManager;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    .line 109
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    .line 110
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    .line 114
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->f()V

    .line 115
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->h()V

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/widget/a;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->x:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/widget/a;)Lcom/pengyouwan/sdk/ui/widget/a$a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->y:Lcom/pengyouwan/sdk/ui/widget/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/widget/a;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/widget/a;Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->z:Z

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    if-ge v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->e()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    if-le v0, v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->e()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    .line 138
    .local v0, "temp":I
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    .line 139
    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    .line 140
    return-void
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/widget/a;)J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->v:J

    return-wide v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 144
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    .line 145
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->o:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 146
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->p:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    .line 147
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 148
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 149
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 153
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 154
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 155
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->g()V

    .line 156
    return-void
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 161
    const/4 v0, 0x3

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 163
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 164
    const/4 v0, 0x4

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 171
    .local v6, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/a$a;

    const-wide/16 v2, 0x1004

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pengyouwan/sdk/ui/widget/a$a;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;JJ)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->y:Lcom/pengyouwan/sdk/ui/widget/a$a;

    .line 173
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    const-string v1, "pyw_view_imageview"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 172
    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    .line 174
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    .line 175
    const-string v2, "pyw_imageView1"

    .line 174
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    .line 176
    sget-object v0, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->A:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    sget-object v0, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/pengyouwan/sdk/ui/widget/a$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/widget/a$2;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 444
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 445
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 446
    new-instance v1, Lcom/pengyouwan/sdk/ui/widget/a$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/widget/a$3;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 464
    sget-object v1, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    return-void
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/ui/widget/a;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    return v0
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic l(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->d()V

    .line 198
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->o:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->k:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 199
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->p:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->l:I

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    .line 200
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->g()V

    .line 201
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 202
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 205
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    iget-wide v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->v:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->y:Lcom/pengyouwan/sdk/ui/widget/a$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/a$a;->cancel()V

    .line 208
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a;->y:Lcom/pengyouwan/sdk/ui/widget/a$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/a$a;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

.method public a(FF)V
    .locals 4
    .param p1, "p1"    # F
    .param p2, "p2"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 475
    .local v1, "animation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 476
    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 477
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 478
    iget-boolean v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->z:Z

    if-nez v2, :cond_0

    .line 480
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 481
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 482
    new-instance v2, Lcom/pengyouwan/sdk/ui/widget/a$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/pengyouwan/sdk/ui/widget/a$4;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 502
    sget-object v2, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 506
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v2, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v3, 0x421c0000    # 39.0f

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 308
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 310
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    .line 311
    sget-object v1, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 312
    .local v0, "normalParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 313
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 314
    sget-object v1, Lcom/pengyouwan/sdk/ui/widget/a;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    .line 315
    const-string v3, "pyw_img_float"

    .line 314
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->x:Z

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->s:I

    iget-wide v3, p0, Lcom/pengyouwan/sdk/ui/widget/a;->v:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    :cond_0
    iput-boolean v5, p0, Lcom/pengyouwan/sdk/ui/widget/a;->z:Z

    goto :goto_0

    .line 322
    .end local v0    # "normalParams":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    .line 323
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->i()V

    goto :goto_0

    .line 326
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    .line 327
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/pengyouwan/sdk/ui/widget/a;->a(FF)V

    goto :goto_0

    .line 330
    :pswitch_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->w:Ljava/lang/Boolean;

    .line 331
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->g:Landroid/app/Activity;

    invoke-static {v1, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Lcom/pengyouwan/sdk/ui/widget/a;->a(FF)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/a;->g()V

    .line 269
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->o:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->p:Ljava/lang/String;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->y:Lcom/pengyouwan/sdk/ui/widget/a$a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/widget/a$a;->cancel()V

    .line 274
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a;->i:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/a;->f:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
