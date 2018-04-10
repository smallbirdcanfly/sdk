.class public Lcom/pengyouwan/sdk/ui/b/b;
.super Lcom/pengyouwan/framework/base/d;
.source "BindPassCardSuccessFragment.java"


# instance fields
.field private S:Lcom/pengyouwan/sdk/c/b;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u7684\u624b\u673a\u53f7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFBC00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x6

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 92
    const/16 v4, 0x21

    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 93
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/b;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/b;->S:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "pyw_btn_back_usercenter"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->T:Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "pyw_tv_tips"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->U:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "pyw_tv_passcard"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->V:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->V:Landroid/widget/TextView;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/ui/b/b;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->U:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/b;->x()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/b;->T:Landroid/view/View;

    new-instance v2, Lcom/pengyouwan/sdk/ui/b/b$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/b/b$1;-><init>(Lcom/pengyouwan/sdk/ui/b/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/b;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/b;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/b;-><init>()V

    .line 36
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/b;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/b;->c(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method

.method private x()Landroid/text/SpannableString;
    .locals 5

    .prologue
    const/16 v4, 0x21

    .line 81
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u60a8\u53ef\u4ee5\u4f7f\u7528\u624b\u673a\u53f7\u767b\u5f55\u670b\u53cb\u73a9\u548c\u6240\u6709\u6e38\u620f"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFBC00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFBC00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0xe

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 50
    const-string v2, "pyw_fragment_bind_passno_success_landscape"

    .line 49
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/b;->a(Landroid/view/View;)V

    .line 56
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/b;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 53
    const-string v2, "pyw_fragment_bind_passno_success_portrait"

    .line 52
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/b;->S:Lcom/pengyouwan/sdk/c/b;

    .line 42
    return-void
.end method
