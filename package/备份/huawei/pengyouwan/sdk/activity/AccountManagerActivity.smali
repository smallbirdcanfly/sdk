.class public Lcom/pengyouwan/sdk/activity/AccountManagerActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "AccountManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/pengyouwan/sdk/ui/a/k;

.field private C:Lcom/pengyouwan/sdk/ui/a/k;

.field private n:Lcom/pengyouwan/sdk/ui/a/d;

.field private o:Landroid/widget/GridView;

.field private q:Lcom/pengyouwan/sdk/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/sdk/a/a",
            "<",
            "Lcom/pengyouwan/sdk/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/pengyouwan/sdk/ui/a/a;

.field private s:Lcom/pengyouwan/sdk/ui/a/a;

.field private t:Lcom/pengyouwan/sdk/ui/a/a;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 54
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->u:I

    .line 56
    const/16 v0, 0x2003

    iput v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->v:I

    .line 58
    const/16 v0, 0x2004

    iput v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->w:I

    .line 60
    const/16 v0, 0x2005

    iput v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->x:I

    .line 62
    const/16 v0, 0x2006

    iput v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->y:I

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->z:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pass"    # Ljava/lang/String;
    .param p2, "passnotoken"    # Ljava/lang/String;

    .prologue
    .line 141
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(I)V

    .line 142
    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    .line 161
    .local v1, "task":Lcom/pengyouwan/sdk/g/n;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/pengyouwan/sdk/g/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x2003

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(I)V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->r:Lcom/pengyouwan/sdk/ui/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "passNo"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    .line 335
    .local v1, "task":Lcom/pengyouwan/sdk/g/z;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/pengyouwan/sdk/g/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x2003

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(I)V

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n()V

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o()V

    return-void
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->t:Lcom/pengyouwan/sdk/ui/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->s:Lcom/pengyouwan/sdk/ui/a/a;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "\u6e38\u620f\u8d26\u53f7\u7ba1\u7406"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Ljava/lang/String;)V

    .line 85
    const-string v0, "pyw_view_grid"

    .line 84
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o:Landroid/widget/GridView;

    .line 87
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 92
    :goto_0
    new-instance v0, Lcom/pengyouwan/sdk/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/pengyouwan/sdk/a/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    .line 93
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    const/16 v0, 0x2005

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(I)V

    .line 96
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->B:Lcom/pengyouwan/sdk/ui/a/k;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 173
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->m()V

    return-void
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/k;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->C:Lcom/pengyouwan/sdk/ui/a/k;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->r:Lcom/pengyouwan/sdk/ui/a/a;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->r:Lcom/pengyouwan/sdk/ui/a/a;

    .line 203
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->r:Lcom/pengyouwan/sdk/ui/a/a;

    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/a;->a(Lcom/pengyouwan/sdk/c/a;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->r:Lcom/pengyouwan/sdk/ui/a/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/a;->show()V

    .line 232
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->t:Lcom/pengyouwan/sdk/ui/a/a;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/a;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/a;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->t:Lcom/pengyouwan/sdk/ui/a/a;

    .line 238
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->t:Lcom/pengyouwan/sdk/ui/a/a;

    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/a;->a(Lcom/pengyouwan/sdk/c/a;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->t:Lcom/pengyouwan/sdk/ui/a/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/a;->show()V

    .line 260
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->s:Lcom/pengyouwan/sdk/ui/a/a;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/a;

    .line 266
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/a;-><init>(Landroid/app/Activity;II)V

    .line 265
    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->s:Lcom/pengyouwan/sdk/ui/a/a;

    .line 267
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->s:Lcom/pengyouwan/sdk/ui/a/a;

    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/a;->a(Lcom/pengyouwan/sdk/c/a;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->s:Lcom/pengyouwan/sdk/ui/a/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/a;->show()V

    .line 286
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 290
    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$5;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$5;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    .line 307
    .local v1, "task":Lcom/pengyouwan/sdk/g/l;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/g/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x2003

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(I)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->B:Lcom/pengyouwan/sdk/ui/a/k;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/k;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/k;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->B:Lcom/pengyouwan/sdk/ui/a/k;

    .line 348
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->B:Lcom/pengyouwan/sdk/ui/a/k;

    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/k;->a(Lcom/pengyouwan/sdk/c/d;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->B:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->show()V

    .line 361
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->C:Lcom/pengyouwan/sdk/ui/a/k;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/k;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/k;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->C:Lcom/pengyouwan/sdk/ui/a/k;

    .line 366
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->C:Lcom/pengyouwan/sdk/ui/a/k;

    new-instance v1, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;-><init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/k;->a(Lcom/pengyouwan/sdk/c/d;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->C:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->show()V

    .line 375
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    .line 104
    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->i()V

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->i()V

    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/a/a;->a(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/a/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "pass":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "\u6ca1\u83b7\u53d6\u5230\u5f53\u524d\u8d26\u53f7\u7684\u901a\u4fe1\u8bc1"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x2005
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 382
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 383
    const v0, 0xd007

    if-ne p2, v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->finish()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/16 v0, 0x2005

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "pyw_activity_account_manager"

    .line 76
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->g()V

    .line 79
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->q:Lcom/pengyouwan/sdk/a/a;

    invoke-virtual {v2, p3}, Lcom/pengyouwan/sdk/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/a;

    .line 180
    .local v0, "obj":Lcom/pengyouwan/sdk/entity/a;
    if-nez v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->l()V

    .line 197
    .end local v0    # "obj":Lcom/pengyouwan/sdk/entity/a;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0    # "obj":Lcom/pengyouwan/sdk/entity/a;
    :cond_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 186
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->A:Ljava/lang/String;

    .line 187
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/a;->c()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 190
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->k()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->j()V

    goto :goto_0
.end method
