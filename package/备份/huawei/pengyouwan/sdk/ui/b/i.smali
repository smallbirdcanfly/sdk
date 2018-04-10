.class public Lcom/pengyouwan/sdk/ui/b/i;
.super Lcom/pengyouwan/framework/base/d;
.source "ForgetLoginPwdFragment.java"


# instance fields
.field private S:Landroid/view/View;

.field private T:Landroid/widget/EditText;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/os/Bundle;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:I

.field private final ab:I

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private af:Lcom/pengyouwan/sdk/ui/a/d;

.field private ag:Landroid/text/TextWatcher;

.field private ah:Landroid/widget/ImageView;

.field private ai:Z

.field private aj:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 59
    const/16 v0, 0x1000

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ab:I

    .line 61
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ac:I

    .line 63
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ad:I

    .line 65
    const/16 v0, 0x1003

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ae:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ai:Z

    .line 225
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/i$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/i$1;-><init>(Lcom/pengyouwan/sdk/ui/b/i;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->aj:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method private A()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ag:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/i$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/i$3;-><init>(Lcom/pengyouwan/sdk/ui/b/i;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ag:Landroid/text/TextWatcher;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ag:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffaa00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x5

    const/16 v3, 0x10

    .line 151
    const/16 v4, 0x21

    .line 150
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->S:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    const-string v1, "pyw_btn_login"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->S:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    .line 100
    const-string v1, "pyw_et_register_account"

    .line 99
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->T:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->T:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/i;->A()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    .line 103
    const-string v1, "pyw_pwd_visible_img"

    .line 102
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ah:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    .line 105
    const-string v1, "pyw_tv_reset_tips"

    .line 104
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->U:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->aj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->S:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->aj:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->Z:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v1, "is_check"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->Y:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v1, "accountNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    .line 113
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->U:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u624b\u673a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\u5df2\u7ed1\u5b9a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e2a\u8d26\u53f7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->U:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u624b\u673a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/i;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/i;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/i;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/i;->ai:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/i;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/i;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/i;)Z
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/i;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ah:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->T:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/i;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->ai:Z

    return v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/i;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 76
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/i;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/i;-><init>()V

    .line 77
    .local v0, "mf":Lcom/pengyouwan/sdk/ui/b/i;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/i;->c(Landroid/os/Bundle;)V

    .line 78
    return-object v0
.end method

.method private x()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 197
    :cond_0
    const-string v1, "\u91cd\u7f6e\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 200
    new-instance v0, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 201
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 202
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    .line 210
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Lcom/pengyouwan/framework/v4/FragmentActivity;->setResult(I)V

    .line 206
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private y()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/i;->T:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "passwordstr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 222
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 219
    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u987b\u5927\u4e8e6\u4f4d"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private z()V
    .locals 8

    .prologue
    .line 242
    const/16 v1, 0x1001

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(I)V

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->T:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->X:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/i$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/i$2;-><init>(Lcom/pengyouwan/sdk/ui/b/i;)V

    .line 261
    .local v0, "task":Lcom/pengyouwan/sdk/g/v;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v7

    .line 262
    .local v7, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v7, :cond_0

    .line 263
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/i;->X:Ljava/lang/String;

    .line 264
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/b/i;->Y:Ljava/lang/String;

    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/sdk/g/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    .end local v0    # "task":Lcom/pengyouwan/sdk/g/v;
    .end local v7    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 266
    .restart local v0    # "task":Lcom/pengyouwan/sdk/g/v;
    .restart local v7    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/i;->X:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/b/i;->Y:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/sdk/g/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "task":Lcom/pengyouwan/sdk/g/v;
    .end local v7    # "user":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v6

    .line 269
    .local v6, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v1, 0x1003

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(I)V

    .line 270
    invoke-virtual {v6}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_fragment_findback_resetpwd"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 88
    .local v0, "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    :goto_0
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(Landroid/view/View;)V

    .line 94
    return-object v1

    .line 90
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 91
    .restart local v0    # "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Landroid/os/Message;)V

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/i;->x()V

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 7
    .param p1, "hidden"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Z)V

    .line 123
    if-nez p1, :cond_3

    .line 124
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "tempAccount":Ljava/lang/String;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v5, "code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "tempCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v5, "is_check"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "tempCheck":Ljava/lang/String;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->V:Landroid/os/Bundle;

    const-string v5, "accountNum"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 128
    .local v3, "tempNum":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    .line 131
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->Z:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/i;->Z:Ljava/lang/String;

    .line 134
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->Y:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i;->Y:Ljava/lang/String;

    .line 137
    :cond_2
    iget v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    if-eq v3, v4, :cond_3

    .line 138
    iput v3, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    .line 139
    iget v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    if-lez v4, :cond_4

    .line 140
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->U:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u767b\u5f55\u624b\u673a\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(\u5df2\u7ed1\u5b9a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/pengyouwan/sdk/ui/b/i;->aa:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u4e2a\u8d26\u53f7)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pengyouwan/sdk/ui/b/i;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .end local v0    # "tempAccount":Ljava/lang/String;
    .end local v1    # "tempCheck":Ljava/lang/String;
    .end local v2    # "tempCode":Ljava/lang/String;
    .end local v3    # "tempNum":I
    :cond_3
    :goto_0
    return-void

    .line 142
    .restart local v0    # "tempAccount":Ljava/lang/String;
    .restart local v1    # "tempCheck":Ljava/lang/String;
    .restart local v2    # "tempCode":Ljava/lang/String;
    .restart local v3    # "tempNum":I
    :cond_4
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i;->U:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u767b\u5f55\u624b\u673a\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/b/i;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/pengyouwan/sdk/ui/b/i;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->b(Landroid/os/Message;)V

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/i;->z()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
    .end packed-switch
.end method
