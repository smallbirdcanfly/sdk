.class public Lcom/pengyouwan/sdk/activity/FastRegisterActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "FastRegisterActivity.java"


# static fields
.field private static s:Landroid/app/Activity;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/CheckBox;

.field private C:Landroid/view/View$OnClickListener;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/EditText;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageView;

.field private t:Lcom/pengyouwan/sdk/ui/a/d;

.field private u:Lcom/pengyouwan/sdk/entity/c;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->u:Lcom/pengyouwan/sdk/entity/c;

    .line 189
    new-instance v0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->C:Landroid/view/View$OnClickListener;

    .line 48
    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    sput-object p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->s:Landroid/app/Activity;

    .line 92
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 326
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

    .line 327
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ee970f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 327
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 329
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 128
    const/high16 v1, 0x40000000    # 2.0f

    .line 127
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 128
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 131
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->z:Landroid/graphics/Bitmap;

    .line 137
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->k()V

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->z:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->u:Lcom/pengyouwan/sdk/entity/c;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->B:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->u:Lcom/pengyouwan/sdk/entity/c;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Z
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->m()V

    return-void
.end method

.method static synthetic g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->s:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "\u5feb\u901f\u6ce8\u518c"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->b(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 101
    .line 102
    const-string v0, "pyw_cb_mianze"

    .line 101
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->B:Landroid/widget/CheckBox;

    .line 104
    const-string v0, "pyw_tv_mianze"

    .line 103
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->A:Landroid/widget/TextView;

    .line 106
    const-string v0, "pyw_tv_fastregister_account_tips"

    .line 105
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->n:Landroid/widget/TextView;

    .line 108
    const-string v0, "pyw_et_fastregister_password"

    .line 107
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->o:Landroid/widget/EditText;

    .line 110
    const-string v0, "pyw_btn_login_fastregister"

    .line 109
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->q:Landroid/widget/Button;

    .line 112
    const-string v0, "pyw_title_logo"

    .line 111
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->r:Landroid/widget/ImageView;

    .line 114
    const-string v0, "pyw_common_title_fastregister"

    .line 113
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->y:Landroid/view/View;

    .line 116
    const-string v0, "pyw_layout_fastregister_start"

    .line 115
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->x:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->q()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->p()V

    return-void
.end method

.method static synthetic l(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 233
    :goto_0
    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->w:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 229
    const-string v1, "\u5bc6\u7801\u957f\u5ea6\u987b\u5927\u4e8e6\u4f4d"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->o()V

    .line 241
    new-instance v1, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;-><init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    .line 268
    .local v1, "task":Lcom/pengyouwan/sdk/g/m;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->w:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/g/m;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->p()V

    .line 271
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 272
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

    goto :goto_0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->o()V

    .line 281
    new-instance v1, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;-><init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    .line 303
    .local v1, "task":Lcom/pengyouwan/sdk/g/m;
    :try_start_0
    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/g/m;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->p()V

    .line 306
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 307
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

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    .line 338
    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 337
    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 341
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->t:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 350
    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 375
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_extra_erro"

    const-string v2, "\u6ce8\u518c\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 379
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 356
    const/4 v1, 0x2

    .line 357
    const/4 v2, 0x7

    .line 358
    const/4 v3, 0x3

    .line 355
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 359
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->onBackPressed()V

    .line 360
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->finish()V

    .line 365
    sget-object v0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->s:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->q()V

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h;

    sget-object v1, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->s:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v0, "pyw_activity_fast_register"

    .line 77
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->i()V

    .line 80
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->j()V

    .line 81
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->n()V

    .line 83
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 84
    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0, v1, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 87
    return-void
.end method
