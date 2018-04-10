.class public Lcom/pengyouwan/sdk/ui/b/g;
.super Lcom/pengyouwan/framework/base/d;
.source "CommonPhoneFragment.java"


# instance fields
.field private S:Lcom/pengyouwan/sdk/c/b;

.field private T:Landroid/widget/EditText;

.field private U:Landroid/widget/Button;

.field private V:Landroid/content/Context;

.field private W:Landroid/os/Bundle;

.field private X:Ljava/lang/String;

.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/CheckBox;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/view/View;

.field private ac:I

.field private ad:Z

.field private ae:Lcom/pengyouwan/sdk/ui/a/d;

.field private af:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ad:Z

    .line 156
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/g$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/g$1;-><init>(Lcom/pengyouwan/sdk/ui/b/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->af:Landroid/view/View$OnClickListener;

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x21

    const/16 v4, 0x15

    const/16 v3, 0x11

    .line 144
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#007eff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 147
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->U:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 102
    const-string v1, "pyw_layout_mianze"

    .line 101
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ab:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 104
    const-string v1, "pyw_cb_mianze"

    .line 103
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->Z:Landroid/widget/CheckBox;

    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 106
    const-string v1, "pyw_tv_mianze"

    .line 105
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->Y:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 108
    const-string v1, "pyw_et_register_account"

    .line 107
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->T:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 110
    const-string v1, "pyw_btn_getcode"

    .line 109
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->U:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->U:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 114
    const-string v1, "pyw_tv_other_tips"

    .line 113
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->W:Landroid/os/Bundle;

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ac:I

    .line 117
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->W:Landroid/os/Bundle;

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->T:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 121
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->T:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u5165\u6e38\u620f\u8d26\u53f7/\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    const-string v1, "\u6e29\u99a8\u63d0\u793a\uff1a\u5982\u6e38\u620f\u8d26\u53f7\u672a\u7ed1\u5b9a\u624b\u673a\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u7533\u8bc9"

    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/g;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/g;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/g;->ad:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->Z:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->T:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->W:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/g;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/g;->y()V

    return-void
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->aa:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->Y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/ui/b/g;)Lcom/pengyouwan/sdk/ui/a/d;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ae:Lcom/pengyouwan/sdk/ui/a/d;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/g;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/g;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/g;-><init>()V

    .line 79
    .local v0, "phoneFragment":Lcom/pengyouwan/sdk/ui/b/g;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/g;->c(Landroid/os/Bundle;)V

    .line 80
    return-object v0
.end method

.method private y()V
    .locals 5

    .prologue
    .line 199
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->ae:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/g;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v3

    const-string v4, "\u83b7\u53d6\u9a8c\u8bc1\u7801..."

    invoke-direct {v2, v3, v4}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->ae:Lcom/pengyouwan/sdk/ui/a/d;

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->ae:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 205
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/b/g$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/b/g$2;-><init>(Lcom/pengyouwan/sdk/ui/b/g;)V

    .line 232
    .local v1, "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    iget v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->ac:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    .line 233
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V

    .line 248
    .end local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :goto_0
    return-void

    .line 235
    .restart local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :cond_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    .line 237
    const/4 v3, 0x5

    .line 236
    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->ae:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 245
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

    .line 246
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    .restart local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    .line 240
    const/4 v3, 0x2

    .line 239
    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/g;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/g;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 90
    const-string v2, "pyw_fragment_common_phone_landscape"

    .line 89
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/g;->c()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g;->W:Landroid/os/Bundle;

    .line 96
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/g;->a(Landroid/view/View;)V

    .line 97
    return-object v0

    .line 92
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/g;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 93
    const-string v2, "pyw_fragment_common_phone_portrait"

    .line 92
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/g;->S:Lcom/pengyouwan/sdk/c/b;

    .line 154
    return-void
.end method

.method protected x()V
    .locals 4

    .prologue
    const v3, 0xa001

    .line 254
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->W:Landroid/os/Bundle;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ac:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2

    .line 256
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ad:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->S:Lcom/pengyouwan/sdk/c/b;

    const v1, 0xa003

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->V:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/b/g;->a(Landroid/content/Context;)V

    .line 270
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->S:Lcom/pengyouwan/sdk/c/b;

    invoke-interface {v0, v3}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ac:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    .line 262
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->ad:Z

    if-nez v0, :cond_3

    .line 263
    const-string v0, "\u7528\u6237\u672a\u6ce8\u518c\uff01"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g;->S:Lcom/pengyouwan/sdk/c/b;

    .line 266
    invoke-interface {v0, v3}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0
.end method
