.class public Lcom/pengyouwan/sdk/activity/MyVoucherActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "MyVoucherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/RelativeLayout;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:I

.field private P:I

.field private Q:I

.field protected final n:I

.field private o:Landroid/content/Context;

.field private q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

.field private r:Lcom/pengyouwan/sdk/a/b;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Landroid/widget/ListView;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 51
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->n:I

    .line 53
    const/16 v0, 0x1000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->u:I

    .line 55
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->v:I

    .line 57
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->w:I

    .line 59
    const/16 v0, 0x1004

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->x:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->D:I

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->z:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->z:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->p()V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->C:I

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->O:I

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->P:I

    return-void
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->Q:I

    return-void
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->a(I)V

    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    .line 103
    const/4 v1, 0x1

    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    .line 104
    const/4 v1, 0x2

    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->B:I

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->C:I

    .line 106
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "pyw_view_listview_footer"

    invoke-static {p0, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 108
    const-string v2, "pyw_my_voucher_title"

    .line 107
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->c(I)V

    .line 109
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 110
    const-string v2, "pyw_layout_tips"

    .line 109
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    .line 111
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 112
    const-string v2, "pyw_tv_empty"

    .line 111
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->s:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 114
    const-string v2, "pyw_tv_account_name"

    .line 113
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->t:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 117
    const-string v2, "pyw_myvoucher_canuse_title_line"

    .line 116
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->F:Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 119
    const-string v2, "pyw_myvoucher_used_title_line"

    .line 118
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->G:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 121
    const-string v2, "pyw_myvoucher_overdue_title_line"

    .line 120
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->H:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 124
    const-string v2, "pyw_myvoucher_canuse_title"

    .line 123
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->L:Landroid/widget/TextView;

    .line 125
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 126
    const-string v2, "pyw_myvoucher_used_title"

    .line 125
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->M:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 128
    const-string v2, "pyw_myvoucher_overdue_title"

    .line 127
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->N:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 131
    const-string v2, "pyw_myvoucher_overdue_title_btn"

    .line 130
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->K:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 133
    const-string v2, "pyw_myvoucher_used_title_btn"

    .line 132
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->J:Landroid/widget/RelativeLayout;

    .line 134
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 135
    const-string v2, "pyw_myvoucher_canuse_title_btn"

    .line 134
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->I:Landroid/widget/RelativeLayout;

    .line 137
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u767b\u5f55\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 143
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ee970f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x5

    .line 144
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 143
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    new-instance v2, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)V

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->i()V

    .line 160
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V

    .line 161
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->l()V

    .line 162
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 166
    const-string v1, "pyw_list"

    .line 165
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    .line 167
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 168
    new-instance v0, Lcom/pengyouwan/sdk/a/b;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/a/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    .line 169
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 171
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 176
    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 177
    const/16 v2, 0x1000

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->a(I)V

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o()V

    .line 180
    new-instance v1, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)V

    .line 201
    .local v1, "mTask":Lcom/pengyouwan/sdk/g/ab;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->B:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

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

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->a(I)V

    .line 205
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->L:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53ef\u4f7f\u7528\uff08"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u4f7f\u7528\uff08"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u8fc7\u671f\uff08"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 277
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_common_orange_lighter"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 286
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->G:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_common_orange_lighter"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 295
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_myvocher_type_title_txt_color"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    const-string v3, "pyw_common_orange_lighter"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 311
    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->a(Landroid/os/Message;)V

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    if-le v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/a/b;->b(Ljava/util/ArrayList;)V

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/a/b;->notifyDataSetChanged()V

    .line 225
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->k()V

    .line 232
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/a/b;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->q:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    .line 236
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->p()V

    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/a/b;->notifyDataSetChanged()V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->K:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->n()V

    .line 257
    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    .line 258
    const/4 v0, 0x4

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->B:I

    .line 259
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/a/b;->a(Z)V

    .line 260
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->J:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->m()V

    .line 263
    const/4 v0, 0x3

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->B:I

    .line 264
    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    .line 265
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0, v2}, Lcom/pengyouwan/sdk/a/b;->a(Z)V

    .line 266
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->I:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 268
    const/4 v0, 0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->B:I

    .line 269
    iput v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    .line 270
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->l()V

    .line 271
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/a/b;->a(Z)V

    .line 272
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iput-object p0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->o:Landroid/content/Context;

    .line 81
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "pyw_activity_myvouchers_landscape"

    .line 82
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->setContentView(I)V

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->g()V

    .line 89
    return-void

    .line 86
    :cond_0
    const-string v0, "pyw_activity_myvouchers_portrait"

    .line 85
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onResume()V

    .line 94
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->b(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 322
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->D:I

    .line 323
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 327
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->r:Lcom/pengyouwan/sdk/a/b;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/a/b;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 328
    .local v0, "itemsLastIndex":I
    add-int/lit8 v1, v0, 0x1

    .line 329
    .local v1, "lastIndex":I
    if-nez p2, :cond_0

    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->D:I

    if-ne v2, v1, :cond_0

    .line 330
    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->C:I

    iget v3, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    if-le v2, v3, :cond_1

    .line 331
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->E:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->A:I

    .line 333
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string v2, "\u6570\u636e\u5168\u90e8\u52a0\u8f7d\u5b8c"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->p()V

    goto :goto_0
.end method
