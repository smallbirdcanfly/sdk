.class public Lcom/pengyouwan/sdk/activity/VoucherActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "VoucherActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private E:Z

.field private F:Landroid/widget/ListView;

.field private G:Landroid/widget/LinearLayout;

.field private H:I

.field private I:I

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private K:Landroid/widget/AdapterView$OnItemClickListener;

.field protected final n:I

.field o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/content/Context;

.field private r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

.field private s:Lcom/pengyouwan/sdk/a/c;

.field private t:Lcom/pengyouwan/sdk/utils/o;

.field private u:Landroid/widget/TextView;

.field private v:F

.field private w:F

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 56
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->n:I

    .line 58
    const/16 v0, 0x1000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->A:I

    .line 60
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->B:I

    .line 62
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->C:I

    .line 64
    const/16 v0, 0x1005

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->D:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->E:Z

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->H:I

    .line 278
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    .line 280
    new-instance v0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/VoucherActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->K:Landroid/widget/AdapterView$OnItemClickListener;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->v:F

    return v0
.end method

.method public static a(Landroid/content/Context;F)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "total"    # F

    .prologue
    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "total_money"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 367
    return-object v0
.end method

.method private a(F)Ljava/lang/String;
    .locals 6
    .param p1, "flo"    # F

    .prologue
    .line 121
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 122
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 123
    .local v1, "num2":F
    const-string v2, "%.0f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->w:F

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/VoucherActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->w:F

    return v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->I:I

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/a/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->s:Lcom/pengyouwan/sdk/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/utils/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->t:Lcom/pengyouwan/sdk/utils/o;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/pengyouwan/sdk/utils/o;->a()Lcom/pengyouwan/sdk/utils/o;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->t:Lcom/pengyouwan/sdk/utils/o;

    .line 108
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "total_money"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->v:F

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->t:Lcom/pengyouwan/sdk/utils/o;

    iget v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->v:F

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/utils/o;->a(F)V

    .line 110
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->t:Lcom/pengyouwan/sdk/utils/o;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/o;->d()V

    .line 111
    iput v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->w:F

    .line 112
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 130
    const-string v0, "\u9009\u62e9\u4ee3\u91d1\u5238"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    .line 132
    const-string v1, "pyw_layout_confirm"

    .line 131
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->G:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    const-string v1, "pyw_tv_confirm"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->u:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    const-string v1, "pyw_layout_tips"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    .line 135
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    .line 136
    const-string v1, "pyw_tv_order_money"

    .line 135
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->y:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    .line 139
    const-string v1, "pyw_tv_select_money"

    .line 138
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->z:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    const-string v1, "pyw_tv_empty"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->x:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/VoucherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    new-instance v1, Lcom/pengyouwan/sdk/activity/VoucherActivity$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity$3;-><init>(Lcom/pengyouwan/sdk/activity/VoucherActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->y:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00a5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->v:F

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->z:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u00a5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->w:F

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->j()V

    .line 167
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(I)V

    .line 168
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    const-string v1, "pyw_list"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    .line 172
    new-instance v0, Lcom/pengyouwan/sdk/a/c;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    iget v3, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->v:F

    invoke-direct {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/a/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;F)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->s:Lcom/pengyouwan/sdk/a/c;

    .line 173
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->s:Lcom/pengyouwan/sdk/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->K:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 180
    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(I)V

    .line 181
    new-instance v1, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;-><init>(Lcom/pengyouwan/sdk/activity/VoucherActivity;)V

    .line 201
    .local v1, "mTask":Lcom/pengyouwan/sdk/g/ab;
    :try_start_0
    const-string v2, "2"

    iget v3, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->H:I

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/ab;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
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

    .line 204
    const/16 v2, 0x1002

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(I)V

    .line 205
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->E:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->t:Lcom/pengyouwan/sdk/utils/o;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/o;->d()V

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 243
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->a(Landroid/os/Message;)V

    .line 244
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    .line 254
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 255
    .local v0, "vlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz v0, :cond_3

    .line 256
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->s:Lcom/pengyouwan/sdk/a/c;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/a/c;->a(Ljava/util/ArrayList;)V

    .line 258
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->s:Lcom/pengyouwan/sdk/a/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/a/c;->notifyDataSetChanged()V

    .line 259
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a()V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->F:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 270
    .end local v0    # "vlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :pswitch_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->r:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Z)V
    .locals 3
    .param p1, "isEqual"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_3

    .line 350
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    :cond_1
    return-void

    .line 350
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 351
    .local v0, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->a(Z)V

    goto :goto_0

    .line 357
    .end local v0    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 358
    .restart local v0    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/entity/Voucher;->a(Z)V

    goto :goto_1
.end method

.method public c(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->c(Landroid/os/Message;)V

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 214
    :sswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->k()V

    goto :goto_0

    .line 217
    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->E:Z

    .line 218
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->finish()V

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x1005 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->onBackPressed()V

    .line 227
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->l()V

    .line 238
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onBackPressed()V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    iput-object p0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->q:Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->g()V

    .line 85
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "pyw_activity_voucher_landscape"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->setContentView(I)V

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->i()V

    .line 91
    return-void

    .line 88
    :cond_0
    const-string v0, "pyw_activity_voucher_portrait"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onResume()V

    .line 101
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 372
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 376
    if-nez p2, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 380
    iget v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->I:I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->H:I

    if-le v0, v1, :cond_0

    .line 381
    iget v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity;->H:I

    .line 382
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->k()V

    .line 388
    :cond_0
    return-void
.end method
