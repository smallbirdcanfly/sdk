.class public Lcom/pengyouwan/sdk/ui/a/k;
.super Lcom/pengyouwan/framework/base/b;
.source "LogoutDialog.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/pengyouwan/sdk/c/d;

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 32
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 53
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/k$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/k$1;-><init>(Lcom/pengyouwan/sdk/ui/a/k;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->f:Landroid/view/View$OnClickListener;

    .line 33
    iput p2, p0, Lcom/pengyouwan/sdk/ui/a/k;->d:I

    .line 34
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/k;->a()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/k;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_dialog_logout"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/k;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_logout_cancel"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->a:Landroid/widget/Button;

    .line 42
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_logout_ensure"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->b:Landroid/widget/Button;

    .line 44
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_logout_tips"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->e:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/k;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/k;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->d:I

    if-lez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->e:Landroid/widget/TextView;

    const-string v1, "\u786e\u5b9a\u5220\u9664\u6b64\u8d26\u53f7\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/k;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/k;)Lcom/pengyouwan/sdk/c/d;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k;->c:Lcom/pengyouwan/sdk/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/c/d;)V
    .locals 0
    .param p1, "call"    # Lcom/pengyouwan/sdk/c/d;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/k;->c:Lcom/pengyouwan/sdk/c/d;

    .line 68
    return-void
.end method
