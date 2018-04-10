.class public Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "ChargeCenterActivity.java"


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/LinearLayout;

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private final R:I

.field private final S:I

.field private final T:I

.field private U:I

.field private V:F

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Lcom/pengyouwan/sdk/ui/a/d;

.field private ac:Ljava/lang/String;

.field private ad:I

.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Landroid/view/View;

.field private ah:Landroid/view/View;

.field private ai:Landroid/view/View;

.field private final aj:I

.field private final ak:I

.field private final al:I

.field private am:I

.field private an:F

.field private ao:Z

.field private ap:Z

.field private aq:Landroid/view/View$OnClickListener;

.field n:Lcom/pengyouwan/sdk/d/d$a;

.field o:Lcom/pengyouwan/sdk/ui/a/g$a;

.field private q:Lcom/pengyouwan/sdk/ui/a/g;

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 58
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->r:I

    .line 60
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->s:I

    .line 63
    const/16 v0, 0x1003

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->t:I

    .line 88
    const/16 v0, 0x101

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->J:I

    .line 91
    const/16 v0, 0x102

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->K:I

    .line 106
    const/16 v0, 0x105

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->L:I

    .line 108
    const/16 v0, 0x108

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->M:I

    .line 111
    const/16 v0, 0x114

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->N:I

    .line 114
    const/16 v0, 0x115

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->O:I

    .line 116
    const/16 v0, 0x109

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->P:I

    .line 119
    const/16 v0, 0x110

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Q:I

    .line 121
    const/16 v0, 0x111

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->R:I

    .line 123
    const/16 v0, 0x112

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->S:I

    .line 125
    const/16 v0, 0x113

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->T:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Z:Ljava/lang/String;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aa:Ljava/lang/String;

    .line 152
    iput v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ad:I

    .line 156
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    .line 160
    iput v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aj:I

    .line 162
    const/4 v0, 0x7

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ak:I

    .line 164
    const/4 v0, 0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->al:I

    .line 166
    iput v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    .line 170
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ao:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    .line 352
    new-instance v0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    .line 597
    new-instance v0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->n:Lcom/pengyouwan/sdk/d/d$a;

    .line 826
    new-instance v0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$3;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->o:Lcom/pengyouwan/sdk/ui/a/g$a;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isAnyAmount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "charge_total"

    .line 182
    const-string v2, "pay_money"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 183
    const-string v1, "product_extra"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    const-string v1, "cp_json_params"

    const-string v2, "product_extra"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :goto_0
    const-string v1, "role_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "cp_role"

    const-string v2, "role_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    :cond_0
    const-string v1, "service_area"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "cp_service"

    const-string v2, "service_area"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :cond_1
    const-string v1, "charge_product_name"

    .line 197
    const-string v2, "product_name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 199
    const-string v1, "cp_product_id"

    .line 200
    const-string v2, "product_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_2
    const-string v1, "is_any_amount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v1, "cp_order_id"

    const-string v2, "order_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    return-object v0

    .line 187
    :cond_3
    const-string v1, "cp_json_params"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "total"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 344
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 346
    const-string v3, "pyw_chargecenter_mumber"

    .line 345
    invoke-static {p0, v3}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 344
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 348
    const/16 v4, 0x21

    .line 343
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 349
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method private a(F)Ljava/lang/String;
    .locals 6
    .param p1, "flo"    # F

    .prologue
    .line 298
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 299
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 301
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

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ao:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    return v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .param p1, "orderNo"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x111

    .line 581
    const/16 v2, 0x105

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 583
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$5;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$5;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    .line 589
    .local v1, "task":Lcom/pengyouwan/sdk/g/e;
    invoke-virtual {v1, p1}, Lcom/pengyouwan/sdk/g/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 595
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/e;
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    :try_start_1
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    goto :goto_0

    .line 592
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    :catchall_0
    move-exception v2

    .line 593
    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 594
    throw v2
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->k()V

    return-void
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 242
    .line 243
    const-string v0, "pyw_tv_product_name_content"

    .line 242
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->G:Landroid/widget/TextView;

    .line 245
    const-string v0, "pyw_layout_alipay"

    .line 244
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    .line 247
    const-string v0, "pyw_layout_uppay"

    .line 246
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    .line 249
    const-string v0, "pyw_layout_wechat"

    .line 248
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    .line 251
    const-string v0, "pyw_iv_alipay_selected"

    .line 250
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ag:Landroid/view/View;

    .line 253
    const-string v0, "pyw_iv_uppay_selected"

    .line 252
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ah:Landroid/view/View;

    .line 255
    const-string v0, "pyw_iv_wechat_selected"

    .line 254
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ai:Landroid/view/View;

    .line 257
    const-string v0, "pyw_tv_order_id_content"

    .line 256
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->F:Landroid/widget/TextView;

    .line 259
    const-string v0, "pyw_tv_pay_text"

    .line 258
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->B:Landroid/widget/TextView;

    .line 261
    const-string v0, "pyw_tv_voucher_info"

    .line 260
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->D:Landroid/widget/TextView;

    .line 263
    const-string v0, "pyw_tv_total_content"

    .line 262
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->C:Landroid/widget/TextView;

    .line 266
    const-string v0, "pyw_tv_confirm"

    .line 265
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    .line 269
    const-string v0, "pyw_layout_voucher"

    .line 268
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    .line 271
    const-string v0, "pyw_layout_pay_success"

    .line 270
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->x:Landroid/view/View;

    .line 273
    const-string v0, "pyw_tv_text"

    .line 272
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->H:Landroid/widget/TextView;

    .line 275
    const-string v0, "pyw_layout_pay"

    .line 274
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    .line 278
    const-string v0, "pyw_tv_paytitle"

    .line 277
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->E:Landroid/widget/TextView;

    .line 280
    const-string v0, "pyw_btn_backgame"

    .line 279
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->A:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->A:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aq:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->r()V

    .line 289
    return-void
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Z
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->j()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 305
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->C:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u00a5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 307
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v1, v1

    iput v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    if-eqz v1, :cond_5

    .line 313
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 314
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    sub-float v0, v1, v2

    .line 315
    .local v0, "pay":F
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->D:Landroid/widget/TextView;

    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    const-string v1, "\u65e0\u53ef\u7528"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :goto_1
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->B:Landroid/widget/TextView;

    const-string v2, "\u9700\u4ed8\u91d1\u989d:"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u00a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .end local v0    # "pay":F
    :goto_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->F:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->X:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void

    .line 315
    .restart local v0    # "pay":F
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u62b5\u6263:\u00a5"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 318
    .end local v0    # "pay":F
    :cond_3
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    sub-float v0, v1, v2

    .line 319
    .restart local v0    # "pay":F
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->D:Landroid/widget/TextView;

    iget v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    const-string v1, "\u65e0\u53ef\u7528"

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u62b5\u6263:\u00a5"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 330
    .end local v0    # "pay":F
    :cond_5
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ao:Z

    if-eqz v1, :cond_6

    .line 331
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->D:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u4ee3\u91d1\u5238"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :goto_5
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->B:Landroid/widget/TextView;

    const-string v2, "\u9700\u4ed8\u91d1\u989d:"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u00a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 333
    :cond_6
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->D:Landroid/widget/TextView;

    const-string v2, "\u65e0\u53ef\u7528"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 338
    :cond_7
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->X:Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->q()V

    return-void
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->A:Landroid/widget/Button;

    return-object v0
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 397
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 399
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 401
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ah:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 405
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 406
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 407
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 408
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ah:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 413
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 414
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 415
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ai:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ag:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ah:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 448
    const/16 v2, 0x105

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 449
    new-instance v1, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    .line 477
    .local v1, "mTask":Lcom/pengyouwan/sdk/g/ab;
    :try_start_0
    const-string v2, "2"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/ab;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    iput-boolean v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ao:Z

    .line 481
    const/16 v2, 0x113

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 482
    const-string v2, "\u83b7\u53d6\u4ee3\u91d1\u5238\u6570\u636e\u5931\u8d25"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    return v0
.end method

.method static synthetic m(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ab:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ab:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 573
    :cond_0
    return-void
.end method

.method private n()V
    .locals 12

    .prologue
    .line 624
    const/16 v3, 0x105

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 625
    new-instance v0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;-><init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    .line 679
    .local v0, "task":Lcom/pengyouwan/sdk/g/j;
    :try_start_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->o()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "vouchers":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "total":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->X:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v6, ""

    .line 682
    .local v6, "name":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ac:Ljava/lang/String;

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->W:Ljava/lang/String;

    .line 683
    const/4 v7, 0x0

    iget v8, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ad:I

    iget-object v9, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Z:Ljava/lang/String;

    iget-object v10, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aa:Ljava/lang/String;

    .line 682
    invoke-virtual/range {v0 .. v10}, Lcom/pengyouwan/sdk/g/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v1    # "vouchers":Ljava/lang/String;
    .end local v2    # "total":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    return-void

    .line 681
    .restart local v1    # "vouchers":Ljava/lang/String;
    .restart local v2    # "total":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->X:Ljava/lang/String;
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    .end local v1    # "vouchers":Ljava/lang/String;
    .end local v2    # "total":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 685
    .local v11, "e":Lcom/pengyouwan/framework/base/a;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 686
    const/16 v3, 0x1002

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 687
    invoke-virtual {v11}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_1
.end method

.method private o()Ljava/lang/String;
    .locals 6

    .prologue
    .line 711
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 712
    .local v3, "vouchers":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/pengyouwan/sdk/utils/o;->a()Lcom/pengyouwan/sdk/utils/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/utils/o;->e()Ljava/util/LinkedList;

    move-result-object v1

    .line 713
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 718
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 720
    .end local v0    # "i":I
    :goto_1
    return-object v4

    .line 715
    .restart local v0    # "i":I
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/sdk/entity/Voucher;

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->e()Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "voucher":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "i":I
    .end local v2    # "voucher":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_1
.end method

.method private p()V
    .locals 1

    .prologue
    .line 725
    const-string v0, "\u5145\u503c\u4e2d\u5fc3"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    .line 809
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->q:Lcom/pengyouwan/sdk/ui/a/g;

    if-nez v2, :cond_0

    .line 810
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/g;

    .line 811
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->o:Lcom/pengyouwan/sdk/ui/a/g$a;

    invoke-direct {v2, p0, v3}, Lcom/pengyouwan/sdk/ui/a/g;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/ui/a/g$a;)V

    .line 810
    iput-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->q:Lcom/pengyouwan/sdk/ui/a/g;

    .line 813
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->q:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/g;->a()V

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "pay":F
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 817
    const-string v2, "\u4ee3\u91d1\u5238\u5df2\u62b5\u6263"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u00a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 818
    .local v1, "voucher":Landroid/text/SpannableString;
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    sub-float v0, v2, v3

    .line 823
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->q:Lcom/pengyouwan/sdk/ui/a/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u00a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pengyouwan/sdk/ui/a/g;->a(Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 824
    return-void

    .line 820
    .end local v1    # "voucher":Landroid/text/SpannableString;
    :cond_1
    const-string v2, "\u4ee3\u91d1\u5238\u5df2\u62b5\u6263"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u00a5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 821
    .restart local v1    # "voucher":Landroid/text/SpannableString;
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->an:F

    sub-float v0, v2, v3

    goto :goto_0
.end method

.method private r()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 839
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 841
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/open/SDKConfig;->getPayment()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "paymentStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "payments":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 860
    .end local v2    # "payments":[Ljava/lang/String;
    :cond_0
    return-void

    .line 844
    .restart local v2    # "payments":[Ljava/lang/String;
    :cond_1
    aget-object v0, v2, v3

    .line 845
    .local v0, "payment":Ljava/lang/String;
    const-string v6, "3"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 846
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 849
    :cond_2
    const-string v6, "7"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 850
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 851
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 853
    :cond_3
    const-string v6, "2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 854
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->I:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 855
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->z:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 844
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 489
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->a(Landroid/os/Message;)V

    .line 490
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 492
    :sswitch_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ab:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/d;

    .line 494
    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v1, p0, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 493
    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ab:Lcom/pengyouwan/sdk/ui/a/d;

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ab:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 499
    :sswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    goto :goto_0

    .line 502
    :sswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 503
    iput-boolean v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    .line 504
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->p:Landroid/widget/TextView;

    .line 505
    const-string v2, "pyw_buy_success_title"

    .line 504
    invoke-static {p0, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->E:Landroid/widget/TextView;

    .line 508
    const-string v2, "pyw_buy_success"

    .line 507
    invoke-static {p0, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 510
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 511
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 512
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 515
    :sswitch_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 516
    iput-boolean v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    .line 517
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->p:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->E:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 521
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 522
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 523
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .line 526
    :sswitch_4
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 527
    iput-boolean v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    .line 528
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->p:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->E:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 532
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 533
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 534
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .line 537
    :sswitch_5
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 538
    iput-boolean v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    .line 539
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->p:Landroid/widget/TextView;

    .line 540
    const-string v2, "pyw_buy_fail_title"

    .line 539
    invoke-static {p0, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->x:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->E:Landroid/widget/TextView;

    .line 543
    const-string v2, "pyw_buy_fail"

    .line 542
    invoke-static {p0, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 545
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->u:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 546
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 547
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->w:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .line 550
    :sswitch_6
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    goto/16 :goto_0

    .line 553
    :sswitch_7
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 554
    const/16 v1, 0x109

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "sdk_extra_orderid"

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 560
    .end local v0    # "data":Landroid/os/Bundle;
    :sswitch_8
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m()V

    .line 561
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->i()V

    goto/16 :goto_0

    .line 564
    :sswitch_9
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 490
    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_0
        0x108 -> :sswitch_2
        0x109 -> :sswitch_5
        0x111 -> :sswitch_7
        0x113 -> :sswitch_8
        0x114 -> :sswitch_3
        0x115 -> :sswitch_4
        0x1001 -> :sswitch_6
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_9
    .end sparse-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 422
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 424
    :sswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->n()V

    goto :goto_0

    .line 427
    :sswitch_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 430
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->am:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 431
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    const-string v3, "out_trade_no=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0xe

    .line 432
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    const-string v3, "\"&"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 433
    .local v0, "endIndex":I
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Y:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :sswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->l()V

    goto :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x102 -> :sswitch_0
        0x110 -> :sswitch_1
        0x112 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestcode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x115

    const/16 v5, 0x110

    const/16 v3, 0x104

    const/4 v4, 0x2

    .line 755
    const/16 v2, 0x101

    if-ne v2, p1, :cond_3

    .line 756
    invoke-static {}, Lcom/pengyouwan/sdk/utils/o;->a()Lcom/pengyouwan/sdk/utils/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/utils/o;->b()F

    move-result v2

    iput v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    .line 757
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 758
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    .line 759
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    iget v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 760
    iget v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    int-to-float v2, v2

    iput v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->V:F

    .line 765
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->i()V

    .line 805
    :cond_1
    :goto_1
    return-void

    .line 763
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ap:Z

    goto :goto_0

    .line 766
    :cond_3
    const/16 v2, 0x103

    if-ne v2, p1, :cond_4

    .line 767
    const/16 v2, 0x114

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 768
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "sdk_extra_orderid"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {v4, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 772
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    if-ne v3, p1, :cond_5

    .line 773
    invoke-virtual {p0, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "sdk_extra_orderid"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {v4, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 779
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    if-ne v3, p1, :cond_6

    .line 780
    invoke-virtual {p0, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 782
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "sdk_extra_orderid"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-static {v4, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 790
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_6
    if-eqz p3, :cond_1

    .line 791
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pay_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "str":Ljava/lang/String;
    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 793
    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(I)V

    .line 794
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 795
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v2, "sdk_extra_orderid"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {v4, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 798
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 799
    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(I)V

    goto :goto_1

    .line 800
    :cond_8
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(I)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    const-string v0, "pyw_activity_chargecenter_landscape"

    .line 213
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->setContentView(I)V

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_order_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "charge_total"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->U:I

    .line 221
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_product_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->W:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_any_amount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ad:I

    .line 223
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->W:Ljava/lang/String;

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "charge_product_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->X:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_json_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ac:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_role"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->Z:Ljava/lang/String;

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cp_service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->aa:Ljava/lang/String;

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->p()V

    .line 235
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->g()V

    .line 236
    invoke-static {}, Lcom/pengyouwan/sdk/utils/o;->a()Lcom/pengyouwan/sdk/utils/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/o;->c()V

    .line 237
    const/16 v0, 0x112

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(I)V

    .line 238
    return-void

    .line 217
    :cond_3
    const-string v0, "pyw_activity_chargecenter_portrait"

    .line 216
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 694
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->af:Z

    if-eqz v1, :cond_0

    .line 696
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 697
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "sdk_extra_orderid"

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    .line 701
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/utils/o;->a()Lcom/pengyouwan/sdk/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/utils/o;->c()V

    .line 702
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onDestroy()V

    .line 703
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 735
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onResume()V

    .line 751
    return-void
.end method
