.class public Lcom/pengyouwan/sdk/ui/b/f;
.super Lcom/pengyouwan/framework/base/d;
.source "CommonCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/b/f$a;
    }
.end annotation


# instance fields
.field private S:Landroid/content/Context;

.field private T:Landroid/os/Bundle;

.field private U:Landroid/widget/EditText;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/Button;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:I

.field private ab:Lcom/pengyouwan/sdk/ui/b/f$a;

.field private final ac:I

.field private final ad:I

.field private final ae:I

.field private final af:I

.field private final ag:I

.field private final ah:I

.field private ai:Lcom/pengyouwan/sdk/c/b;

.field private aj:I

.field private ak:Lcom/pengyouwan/sdk/ui/a/d;

.field private al:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 63
    const/16 v0, 0x1110

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ac:I

    .line 65
    const/16 v0, 0x1112

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ad:I

    .line 67
    const/16 v0, 0x1113

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ae:I

    .line 69
    const/16 v0, 0x1114

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->af:I

    .line 71
    const/16 v0, 0x1115

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ag:I

    .line 73
    const/16 v0, 0x1116

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ah:I

    .line 161
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/f$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/f$1;-><init>(Lcom/pengyouwan/sdk/ui/b/f;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->al:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 127
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

    .line 128
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffaa00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    .line 130
    const/16 v4, 0x21

    .line 128
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 131
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    .line 106
    const-string v1, "pyw_et_register_code"

    .line 105
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    .line 108
    const-string v1, "pyw_tv_getcode"

    .line 107
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    const-string v1, "pyw_tv_send_phone"

    .line 110
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->W:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    .line 113
    const-string v1, "pyw_btn_next"

    .line 112
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->X:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->X:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->al:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/f$a;

    const-wide/32 v2, 0xeac4

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pengyouwan/sdk/ui/b/f$a;-><init>(Lcom/pengyouwan/sdk/ui/b/f;JJ)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    .line 116
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    .line 120
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->W:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7ecf\u5411"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/f$a;->start()Landroid/os/CountDownTimer;

    .line 123
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/f;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/f;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/f;->Z:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/f;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/f;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/f;)Lcom/pengyouwan/sdk/ui/b/f$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/f;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/pengyouwan/sdk/ui/b/f;->aa:I

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->X:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/f;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ai:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/f;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/f;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/f;-><init>()V

    .line 83
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/f;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/f;->c(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/b/f$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/b/f$2;-><init>(Lcom/pengyouwan/sdk/ui/b/f;)V

    .line 270
    .local v1, "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    iget v2, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_0

    .line 271
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V

    .line 287
    .end local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :goto_0
    return-void

    .line 273
    .restart local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 275
    const/4 v3, 0x5

    .line 274
    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x1112

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(I)V

    .line 283
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

    .line 284
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    .restart local v1    # "messageCodeTask":Lcom/pengyouwan/sdk/g/o;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 278
    const/4 v3, 0x2

    .line 277
    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/o;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private y()V
    .locals 5

    .prologue
    const v4, 0xa002

    .line 297
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/f$a;->cancel()V

    .line 298
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/b/f;->a(Landroid/content/Context;)V

    .line 299
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "mCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v2, "code"

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "mCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v2, "is_check"

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_2

    .line 304
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ai:Lcom/pengyouwan/sdk/c/b;

    invoke-interface {v1, v4}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    iget v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v2, "accountNum"

    iget v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->aa:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ai:Lcom/pengyouwan/sdk/c/b;

    .line 308
    invoke-interface {v1, v4}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0
.end method

.method private z()V
    .locals 5

    .prologue
    .line 341
    const/16 v3, 0x1114

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/f;->a(I)V

    .line 342
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "code":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/pengyouwan/sdk/ui/b/f$3;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/b/f$3;-><init>(Lcom/pengyouwan/sdk/ui/b/f;)V

    .line 363
    .local v2, "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    iget v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    .line 364
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 365
    const/4 v4, 0x1

    .line 364
    invoke-virtual {v2, v3, v0, v4}, Lcom/pengyouwan/sdk/g/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    .end local v2    # "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    :goto_0
    return-void

    .line 367
    .restart local v2    # "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 368
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 369
    const/4 v4, 0x5

    .line 368
    invoke-virtual {v2, v3, v0, v4}, Lcom/pengyouwan/sdk/g/h;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    .end local v2    # "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v3, 0x1116

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/f;->a(I)V

    .line 377
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

    .line 378
    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v1    # "e":Lcom/pengyouwan/framework/base/a;
    .restart local v2    # "messageCodeTask":Lcom/pengyouwan/sdk/g/h;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 372
    const/4 v4, 0x2

    .line 371
    invoke-virtual {v2, v3, v0, v4}, Lcom/pengyouwan/sdk/g/h;->a(Ljava/lang/String;Ljava/lang/String;I)V
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

    .line 91
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 93
    const-string v2, "pyw_fragment_common_code_landscape"

    .line 92
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->S:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->c()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    .line 100
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/f;->a(Landroid/view/View;)V

    .line 101
    return-object v0

    .line 95
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 96
    const-string v2, "pyw_fragment_common_code_portrait"

    .line 95
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
    .line 157
    invoke-super {p0}, Lcom/pengyouwan/framework/base/d;->a()V

    .line 158
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/f$a;->cancel()V

    .line 159
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Landroid/os/Message;)V

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/f$a;->cancel()V

    .line 220
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 225
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/f;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 231
    :pswitch_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/f;->y()V

    goto :goto_0

    .line 237
    :pswitch_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->ak:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->U:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x1112
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ai:Lcom/pengyouwan/sdk/c/b;

    .line 291
    return-void
.end method

.method public a(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/f$a;->cancel()V

    .line 139
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const-string v2, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 153
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->aj:I

    .line 144
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->T:Landroid/os/Bundle;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "tempPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->W:Landroid/widget/TextView;

    const-string v2, "\u5df2\u7ecf\u5411"

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/ui/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->W:Landroid/widget/TextView;

    const-string v2, "\u5df2\u7ecf\u5411"

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/f;->Y:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/pengyouwan/sdk/ui/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->ab:Lcom/pengyouwan/sdk/ui/b/f$a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/f$a;->start()Landroid/os/CountDownTimer;

    .line 151
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f;->V:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public b(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->b(Landroid/os/Message;)V

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/f;->x()V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/f;->z()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1110
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
