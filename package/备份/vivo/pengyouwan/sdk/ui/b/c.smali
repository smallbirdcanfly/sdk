.class public Lcom/pengyouwan/sdk/ui/b/c;
.super Lcom/pengyouwan/framework/base/d;
.source "BindPassCardhadPhoneFragment.java"


# instance fields
.field private S:Lcom/pengyouwan/sdk/c/b;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u7684\u6e38\u620f\u8d26\u53f7\u5df2\u7ed1\u5b9a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ee970f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x9

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 86
    const/16 v4, 0x21

    .line 85
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/c;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/c;->S:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_tv_bindphone"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/c;->T:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_btn_login"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/c;->U:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->c()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "phone":Ljava/lang/String;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/c;->T:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/c;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .end local v1    # "phone":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/c;->U:Landroid/widget/Button;

    new-instance v3, Lcom/pengyouwan/sdk/ui/b/c$1;

    invoke-direct {v3, p0}, Lcom/pengyouwan/sdk/ui/b/c$1;-><init>(Lcom/pengyouwan/sdk/ui/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/c;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 36
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/c;-><init>()V

    .line 37
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/c;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/c;->c(Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_fragment_bindpasscard_type"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 53
    .local v0, "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    :goto_0
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/c;->a(Landroid/view/View;)V

    .line 59
    return-object v1

    .line 55
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 56
    .restart local v0    # "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/c;->S:Lcom/pengyouwan/sdk/c/b;

    .line 43
    return-void
.end method
