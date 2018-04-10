.class public Lcom/pengyouwan/sdk/ui/a/a;
.super Lcom/pengyouwan/framework/base/b;
.source "AccountManagerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Lcom/pengyouwan/sdk/c/a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lcom/pengyouwan/sdk/ui/a/a;-><init>(Landroid/app/Activity;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "state"    # I
    .param p3, "cur"    # I

    .prologue
    .line 45
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 46
    const-string v0, "pyw_dialog_accountmanager"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->setContentView(I)V

    .line 47
    iput p2, p0, Lcom/pengyouwan/sdk/ui/a/a;->h:I

    .line 48
    iput p3, p0, Lcom/pengyouwan/sdk/ui/a/a;->j:I

    .line 49
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/a;->a()V

    .line 50
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/a/a;->a(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 69
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_login"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->e:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_view_divider"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->c:Landroid/view/View;

    .line 71
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_view_delete_divider"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->d:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_psw"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->a:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_unbind"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->f:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_delete"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_cancle"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->b:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->h:I

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->e:Landroid/widget/TextView;

    const-string v1, "\u65b0\u5efa\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->f:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u5df2\u6709\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->f:Landroid/widget/TextView;

    const-string v1, "#FF3F3F3F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :cond_0
    iget v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->j:I

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->e:Landroid/widget/TextView;

    const-string v1, "\u8bbe\u7f6e\u72ec\u7acb\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 55
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 56
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 57
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .local v2, "parentWidth":I
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int v3, v2, v5

    .line 61
    .local v3, "width":I
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    const-string v5, "PYWThem_DialogShowAnim"

    invoke-static {p1, v5}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 64
    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/c/a;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/a;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/a;->a(I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/a;->a(I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/a;->a(I)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->b:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/a;->dismiss()V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/a;->i:Lcom/pengyouwan/sdk/c/a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/a;->a(I)V

    goto :goto_0
.end method
