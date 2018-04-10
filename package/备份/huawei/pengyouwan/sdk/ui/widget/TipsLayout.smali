.class public Lcom/pengyouwan/sdk/ui/widget/TipsLayout;
.super Landroid/widget/RelativeLayout;
.source "TipsLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string v3, "pyw_view_loading"

    invoke-static {p1, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 57
    iput-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    .line 60
    const-string v3, "pyw_view_loading_faile"

    invoke-static {p1, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    iput-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->b:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->b:Landroid/view/View;

    .line 63
    const-string v4, "pyw_tv_loading_wrong"

    invoke-static {p1, v4}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "tips":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->b()Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->b:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private b()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u62b1\u6b49\uff0c\u52a0\u8f7d\u5931\u8d25\u4e86!"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pyw_tips_fail"

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 76
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 78
    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x21

    .line 75
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public a(I)V
    .locals 7
    .param p1, "showType"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-virtual {p0, v4}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->setVisibility(I)V

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 103
    if-ne p1, v2, :cond_2

    .line 104
    invoke-virtual {p0, v4}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_iv_loading"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :goto_2
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    if-ne p1, v3, :cond_3

    .line 106
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_3
    if-ne p1, v5, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 109
    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_iv_loading"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->b:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/TipsLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_layout_load_faile"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    .local v0, "layoutLoadFailed":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method
