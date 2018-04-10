.class public Lcom/pengyouwan/sdk/activity/UserCenterActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "UserCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/Button;

.field private I:Lcom/pengyouwan/sdk/entity/d;

.field private J:Lcom/pengyouwan/sdk/ui/a/k;

.field protected final n:I

.field private final o:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 48
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->n:I

    .line 50
    const/16 v0, 0x1000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->o:I

    .line 52
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->q:I

    .line 54
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->r:I

    .line 56
    const/16 v0, 0x1003

    iput v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->s:I

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "isPhone"    # Z

    .prologue
    const/16 v4, 0x21

    .line 219
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

    .line 220
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffaa00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 220
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 224
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)Lcom/pengyouwan/sdk/ui/a/k;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->J:Lcom/pengyouwan/sdk/ui/a/k;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;Lcom/pengyouwan/sdk/entity/d;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;Z)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(I)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .param p1, "isAccountMangerChange"    # Z

    .prologue
    .line 299
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    .line 300
    .local v0, "manager":Lcom/pengyouwan/sdk/d/h;
    if-eqz p1, :cond_0

    .line 301
    const v1, 0xa003

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/d/h;->a(I)V

    .line 305
    :goto_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->i()V

    .line 306
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->finish()V

    .line 307
    return-void

    .line 303
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/d/h;->a(Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 115
    .line 116
    const-string v0, "pyw_layout_common_title_bar_back"

    .line 115
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->w:Landroid/widget/LinearLayout;

    .line 118
    const-string v0, "pyw_layout_voucher"

    .line 117
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->v:Landroid/widget/LinearLayout;

    .line 120
    const-string v0, "pyw_tv_account"

    .line 119
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->A:Landroid/widget/TextView;

    .line 122
    const-string v0, "pyw_layout_loginpassword"

    .line 121
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->x:Landroid/widget/LinearLayout;

    .line 124
    const-string v0, "pyw_layout_paypassword"

    .line 123
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->u:Landroid/widget/LinearLayout;

    .line 126
    const-string v0, "pyw_tv_modify_pay"

    .line 125
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    .line 128
    const-string v0, "pyw_btn_manage_account"

    .line 127
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    .line 130
    const-string v0, "pyw_tv_usemoney"

    .line 129
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->C:Landroid/widget/TextView;

    .line 132
    const-string v0, "pyw_txt_usercenter_prompt"

    .line 131
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->D:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->G:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->F:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->E:Landroid/widget/TextView;

    const-string v1, "\u7248\u672c\u53f7\uff1a2.2.18"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const-string v0, "pyw_usercenter"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->c(I)V

    .line 146
    const-string v0, "pyw_layout_tips"

    .line 145
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    .line 148
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    new-instance v1, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private i()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 166
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->i()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "passNo":Ljava/lang/String;
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->b()I

    move-result v3

    .line 168
    .local v3, "type":I
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->h()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->k()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, " \u5df2\u8ba4\u8bc1"

    .line 171
    .local v4, "verifyStr":Ljava/lang/String;
    :goto_0
    if-ne v3, v10, :cond_3

    .line 172
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    const-string v6, "\u6e38\u620f\u8d26\u53f7\u7ba1\u7406"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->g()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "nickName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->A:Landroid/widget/TextView;

    const-string v6, "\u6b22\u8fce\u60a8\uff0c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v9}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->j()Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    const-string v6, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :goto_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->D:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    .end local v1    # "nickName":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->c()I

    move-result v5

    if-eqz v5, :cond_7

    .line 205
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->C:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/d;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5f20\u53ef\u7528"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_4
    return-void

    .line 170
    .end local v4    # "verifyStr":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 177
    .restart local v1    # "nickName":Ljava/lang/String;
    .restart local v4    # "verifyStr":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->A:Landroid/widget/TextView;

    const-string v6, "\u6b22\u8fce\u60a8\uff0c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v10}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    .end local v1    # "nickName":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 187
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    const-string v6, "\u4e0d\u53ef\u7528"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    const-string v6, "\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_6
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->A:Landroid/widget/TextView;

    const-string v6, "\u6b22\u8fce\u60a8\uff0c"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v9}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 189
    :cond_4
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->j()Z

    move-result v5

    if-nez v5, :cond_5

    .line 190
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    const-string v6, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 192
    :cond_5
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->B:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 199
    :cond_6
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 207
    :cond_7
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->C:Landroid/widget/TextView;

    const-string v6, "\u65e0\u53ef\u7528\u4ee3\u91d1\u5238"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private j()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->J:Lcom/pengyouwan/sdk/ui/a/k;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/k;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/k;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->J:Lcom/pengyouwan/sdk/ui/a/k;

    .line 286
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->J:Lcom/pengyouwan/sdk/ui/a/k;

    new-instance v1, Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/k;->a(Lcom/pengyouwan/sdk/c/d;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->J:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->show()V

    .line 295
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    .line 321
    const/16 v3, 0x1000

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(I)V

    .line 322
    new-instance v1, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;-><init>(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)V

    .line 340
    .local v1, "mTask":Lcom/pengyouwan/sdk/g/aa;
    :try_start_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 341
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 342
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v6

    .line 342
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/pengyouwan/sdk/g/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    .end local v2    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 345
    .restart local v2    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    const-string v3, ""

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v5

    .line 346
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v6

    .line 345
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/pengyouwan/sdk/g/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .end local v2    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 350
    const/16 v3, 0x1002

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(I)V

    .line 351
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->a(Landroid/os/Message;)V

    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 373
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->i()V

    .line 364
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a()V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->t:Lcom/pengyouwan/sdk/ui/widget/TipsLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a(I)V

    goto :goto_0

    .line 370
    :pswitch_3
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->c(Landroid/os/Message;)V

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 314
    :pswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->k()V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x11

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 378
    if-ne p1, v1, :cond_1

    .line 379
    const v0, 0xaa10

    if-ne p2, v0, :cond_1

    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Z)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-ne p1, v1, :cond_0

    .line 382
    const/16 v0, 0x1003

    if-ne p2, v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    .line 229
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->H:Landroid/widget/Button;

    if-ne v3, p1, :cond_2

    .line 230
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "passNo":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/d;->b()I

    move-result v2

    .line 232
    .local v2, "type":I
    if-ne v2, v4, :cond_1

    .line 233
    new-instance v0, Landroid/content/Intent;

    .line 234
    const-class v3, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 233
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "passNo":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v1    # "passNo":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    .line 239
    const-class v3, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;

    .line 238
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "passNo":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_2
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->F:Landroid/view/View;

    if-ne p1, v3, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->j()V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->v:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_4

    .line 246
    new-instance v0, Landroid/content/Intent;

    .line 247
    const-class v3, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    .line 246
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->w:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->finish()V

    goto :goto_0

    .line 251
    :cond_5
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->x:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_6

    .line 252
    new-instance v0, Landroid/content/Intent;

    .line 253
    const-class v3, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;

    .line 252
    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->u:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_a

    .line 256
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 257
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/d;->b()I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 258
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/d;->j()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    .line 263
    const v4, 0xe002

    .line 260
    invoke-static {p0, v3, v4}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->a(Landroid/content/Context;Lcom/pengyouwan/sdk/entity/d;I)Landroid/content/Intent;

    move-result-object v0

    .line 264
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->I:Lcom/pengyouwan/sdk/entity/d;

    .line 269
    const v4, 0xe001

    .line 267
    invoke-static {p0, v3, v4}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->a(Landroid/content/Context;Lcom/pengyouwan/sdk/entity/d;I)Landroid/content/Intent;

    move-result-object v0

    .line 270
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v3, "\u8bf7\u4f7f\u7528\u624b\u673a\u8d26\u53f7\u767b\u5f55\uff01\uff01"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_9
    const-string v3, "\u8bf7\u5148\u7ed1\u5b9a\u624b\u673a\uff01\uff01"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_a
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->G:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 279
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v0, "pyw_activity_usercenter_portrait"

    .line 78
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->setContentView(I)V

    .line 81
    const-string v0, "pyw_btn_change_account"

    .line 80
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->F:Landroid/view/View;

    .line 83
    const-string v0, "pyw_layout_bottom_landscape"

    .line 82
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->y:Landroid/widget/LinearLayout;

    .line 85
    const-string v0, "pyw_layout_bottom_portrait"

    .line 84
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->z:Landroid/widget/LinearLayout;

    .line 86
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->y:Landroid/widget/LinearLayout;

    .line 90
    const-string v1, "pyw_layout_contacts"

    .line 89
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->G:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->y:Landroid/widget/LinearLayout;

    .line 92
    const-string v1, "pyw_version_codes"

    .line 91
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->E:Landroid/widget/TextView;

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->g()V

    .line 102
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->z:Landroid/widget/LinearLayout;

    .line 97
    const-string v1, "pyw_layout_contact"

    .line 96
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->G:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->z:Landroid/widget/LinearLayout;

    .line 99
    const-string v1, "pyw_version_code"

    .line 98
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->E:Landroid/widget/TextView;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onResume()V

    .line 107
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(I)V

    goto :goto_0
.end method
