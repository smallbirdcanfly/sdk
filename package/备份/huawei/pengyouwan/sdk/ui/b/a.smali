.class public Lcom/pengyouwan/sdk/ui/b/a;
.super Lcom/pengyouwan/framework/base/d;
.source "BindMobilePhoneCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/b/a$a;
    }
.end annotation


# instance fields
.field private S:Landroid/content/Context;

.field private T:Landroid/os/Bundle;

.field private U:Landroid/widget/EditText;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/Button;

.field private Z:Ljava/lang/String;

.field private aa:Lcom/pengyouwan/sdk/ui/b/a$a;

.field private final ab:I

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private final af:I

.field private final ag:I

.field private final ah:I

.field private final ai:I

.field private aj:Lcom/pengyouwan/sdk/c/b;

.field private ak:I

.field private al:Lcom/pengyouwan/sdk/ui/a/d;

.field private am:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 62
    const/16 v0, 0x1110

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ab:I

    .line 64
    const/16 v0, 0x1112

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ac:I

    .line 66
    const/16 v0, 0x1113

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ad:I

    .line 68
    const/16 v0, 0x1114

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ae:I

    .line 70
    const/16 v0, 0x1115

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->af:I

    .line 72
    const/16 v0, 0x1116

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ag:I

    .line 74
    const/16 v0, 0x1117

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ah:I

    .line 76
    const/16 v0, 0x1118

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ai:I

    .line 168
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/a$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/a$1;-><init>(Lcom/pengyouwan/sdk/ui/b/a;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->am:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffaa00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    .line 140
    const/16 v4, 0x21

    .line 138
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 141
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    .line 113
    const-string v1, "pyw_et_register_code"

    .line 112
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    .line 115
    const-string v1, "pyw_tv_getcode"

    .line 114
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    const-string v1, "pyw_tv_send_phone"

    .line 117
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->W:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    .line 120
    const-string v1, "pyw_tv_other_tips"

    .line 119
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->X:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    .line 122
    const-string v1, "pyw_btn_next"

    .line 121
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->Y:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->Y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->am:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/a$a;

    const-wide/32 v2, 0xeac4

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pengyouwan/sdk/ui/b/a$a;-><init>(Lcom/pengyouwan/sdk/ui/b/a;JJ)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    .line 125
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    .line 126
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    const v1, 0xc002

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->X:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->W:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7ecf\u5411"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/16 v0, 0x1110

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/b/a;->b(I)V

    .line 132
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/a$a;->start()Landroid/os/CountDownTimer;

    .line 133
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/a;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/a;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/a;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/a;)Lcom/pengyouwan/sdk/ui/b/a$a;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->Y:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/a;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aj:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/a;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/a;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/a;-><init>()V

    .line 86
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/a;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/a;->c(Landroid/os/Bundle;)V

    .line 87
    return-object v0
.end method

.method private x()V
    .locals 6

    .prologue
    .line 230
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "sms":Ljava/lang/String;
    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const-string v3, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 234
    :cond_0
    const/16 v3, 0x1114

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    .line 235
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/a$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/a$2;-><init>(Lcom/pengyouwan/sdk/ui/b/a;)V

    .line 267
    .local v0, "checkSmsAndBindTask":Lcom/pengyouwan/sdk/g/g;
    const/4 v3, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/pengyouwan/sdk/g/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v3, 0x1116

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 327
    new-instance v1, Lcom/pengyouwan/sdk/ui/b/a$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/b/a$3;-><init>(Lcom/pengyouwan/sdk/ui/b/a;)V

    .line 342
    .local v1, "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :try_start_0
    iget v2, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    const v3, 0xc002

    if-ne v2, v3, :cond_0

    .line 343
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V

    .line 353
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x1112

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    .line 350
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

    .line 351
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    .line 359
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    const-string v3, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 363
    :cond_0
    const/16 v3, 0x1114

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    .line 364
    new-instance v2, Lcom/pengyouwan/sdk/ui/b/a$4;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/b/a$4;-><init>(Lcom/pengyouwan/sdk/ui/b/a;)V

    .line 382
    .local v2, "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    :try_start_0
    iget v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    const v4, 0xc002

    if-ne v3, v4, :cond_1

    .line 383
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Lcom/pengyouwan/sdk/g/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    .line 386
    const/4 v4, 0x3

    .line 385
    invoke-virtual {v2, v3, v0, v4}, Lcom/pengyouwan/sdk/g/h;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v3, 0x1116

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/a;->a(I)V

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

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

    .line 98
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 100
    const-string v2, "pyw_fragment_bindmobilephone_code_landscape"

    .line 99
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->S:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->c()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    .line 107
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Landroid/view/View;)V

    .line 108
    return-object v0

    .line 103
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "pyw_fragment_bindmobilephone_code_portrait"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/pengyouwan/framework/base/d;->a()V

    .line 165
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/a$a;->cancel()V

    .line 166
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v1, 0xc002

    .line 277
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Landroid/os/Message;)V

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/a$a;->cancel()V

    .line 281
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 286
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 295
    :cond_2
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    if-ne v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aj:Lcom/pengyouwan/sdk/c/b;

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aj:Lcom/pengyouwan/sdk/c/b;

    const/16 v1, 0x1013

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0

    .line 302
    :pswitch_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 305
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->U:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :pswitch_5
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 315
    :pswitch_6
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->al:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->aj:Lcom/pengyouwan/sdk/c/b;

    const/16 v1, 0x1014

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/a;->aj:Lcom/pengyouwan/sdk/c/b;

    .line 92
    return-void
.end method

.method public a(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Z)V

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->aa:Lcom/pengyouwan/sdk/ui/b/a$a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/a$a;->cancel()V

    .line 149
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const-string v2, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->V:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    .line 154
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->T:Landroid/os/Bundle;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "tempPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a;->W:Landroid/widget/TextView;

    const-string v2, "\u5df2\u7ecf\u5411"

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/a;->Z:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/ui/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->b(Landroid/os/Message;)V

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    return-void

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/a;->y()V

    goto :goto_0

    .line 217
    :pswitch_2
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/a;->ak:I

    const v1, 0xc002

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/a;->z()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/a;->x()V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1110
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
