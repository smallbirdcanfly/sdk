.class public Lcom/pengyouwan/sdk/ui/b/l;
.super Lcom/pengyouwan/framework/base/d;
.source "ResetAccountPwdFragment.java"


# instance fields
.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/view/View;

.field private X:Landroid/view/View;

.field private Y:Landroid/view/View;

.field private Z:Landroid/view/View;

.field private aa:Landroid/widget/EditText;

.field private final ab:I

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private af:Lcom/pengyouwan/sdk/ui/a/d;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/lang/String;

.field private ai:I

.field private aj:Landroid/widget/ImageView;

.field private ak:Z

.field private al:Landroid/graphics/Bitmap;

.field private am:Z

.field private an:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 61
    const v0, 0xd001

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ab:I

    .line 63
    const v0, 0xd002

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ac:I

    .line 65
    const v0, 0xd003

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ad:I

    .line 67
    const v0, 0xd004

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ae:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ak:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->am:Z

    .line 182
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/l$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/l$1;-><init>(Lcom/pengyouwan/sdk/ui/b/l;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->an:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method private A()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 320
    const v2, 0xd002

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(I)V

    .line 321
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->aa:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 325
    :cond_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/b/l$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/b/l$3;-><init>(Lcom/pengyouwan/sdk/ui/b/l;)V

    .line 342
    .local v1, "task":Lcom/pengyouwan/sdk/g/u;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
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

    .line 345
    const v2, 0xd003

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(I)V

    .line 346
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private B()V
    .locals 5

    .prologue
    .line 351
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 352
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->aa:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    .line 353
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const-string v3, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 356
    :cond_0
    const v3, 0xd002

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/l;->a(I)V

    .line 357
    new-instance v1, Lcom/pengyouwan/sdk/ui/b/l$4;

    invoke-direct {v1, p0, v2}, Lcom/pengyouwan/sdk/ui/b/l$4;-><init>(Lcom/pengyouwan/sdk/ui/b/l;Lcom/pengyouwan/sdk/entity/c;)V

    .line 381
    .local v1, "task":Lcom/pengyouwan/sdk/g/y;
    :try_start_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/pengyouwan/sdk/g/y;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
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

    .line 384
    const v3, 0xd003

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/l;->a(I)V

    .line 385
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 150
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

    .line 151
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ee970f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 151
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->W:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_tv_account"

    .line 111
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->S:Landroid/widget/TextView;

    .line 114
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_tv_tips"

    .line 113
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->U:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_tv_input_tips"

    .line 115
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->T:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_tv_pwd"

    .line 117
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->V:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    .line 120
    const-string v3, "pyw_btn_login"

    .line 119
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->W:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    .line 122
    const-string v3, "pyw_btn_back"

    .line 121
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->X:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    .line 124
    const-string v3, "pyw_layout_reset_start"

    .line 123
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->Y:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    .line 126
    const-string v3, "pyw_layout_reset_finish"

    .line 125
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_et_register_account"

    .line 127
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->aa:Landroid/widget/EditText;

    .line 130
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_pwd_visible_img"

    .line 129
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->aj:Landroid/widget/ImageView;

    .line 131
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->aj:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->an:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->W:Landroid/view/View;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->an:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->X:Landroid/view/View;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l;->an:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->Y:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/ui/b/l;->b(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 137
    const-string v2, "state"

    const v3, 0xd006

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ai:I

    .line 138
    const-string v2, "tips"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "tips":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->U:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->T:Landroid/widget/TextView;

    const-string v3, "\u767b\u5f55\u8d26\u53f7\u540d:"

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/pengyouwan/sdk/ui/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v1    # "tips":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/l;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/l;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/l;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/l;->al:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/l;Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/l;->ak:Z

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 157
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->Y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 160
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/l;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/l;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/l;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/l;->am:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/l;)Z
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/l;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->X:Landroid/view/View;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->am:Z

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 261
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 262
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->al:Landroid/graphics/Bitmap;

    .line 267
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/l;->z()V

    .line 269
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/l;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->am:Z

    return v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/l;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ai:I

    return v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->aj:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->aa:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/ui/b/l;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ak:Z

    return v0
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->al:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/l;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/l;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/l;-><init>()V

    .line 91
    .local v0, "mf":Lcom/pengyouwan/sdk/ui/b/l;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/l;->c(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/ui/b/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    return-object v0
.end method

.method private y()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->aa:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "passwordstr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 179
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 176
    :cond_1
    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u987b\u4e3a6~12\u4f4d"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pengyouwan/sdk/ui/b/l$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/b/l$2;-><init>(Lcom/pengyouwan/sdk/ui/b/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 101
    const-string v2, "pyw_fragment_resetaccountpwd_landscape"

    .line 100
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/l;->a(Landroid/view/View;)V

    .line 107
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 104
    const-string v2, "pyw_fragment_resetaccountpwd_portrait"

    .line 103
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 232
    const-string v2, "\u6b63\u5728\u8bbe\u7f6e\u5bc6\u7801.."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 231
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->af:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->S:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u8d26\u53f7:"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ag:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->V:Landroid/widget/TextView;

    const-string v1, "\u72ec\u7acb\u5bc6\u7801:"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l;->ah:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/l;->b(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0xd002
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/l;->ai:I

    const v1, 0xd005

    if-ne v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/l;->B()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/l;->A()V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0xd001
        :pswitch_0
    .end packed-switch
.end method

.method public x()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l;->Z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method
