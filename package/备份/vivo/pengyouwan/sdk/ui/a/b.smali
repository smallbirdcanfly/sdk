.class public Lcom/pengyouwan/sdk/ui/a/b;
.super Lcom/pengyouwan/framework/base/b;
.source "BindAccountTipsDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/app/Activity;

.field private e:Lcom/pengyouwan/sdk/c/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 27
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 42
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/b$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/b$1;-><init>(Lcom/pengyouwan/sdk/ui/a/b;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->a:Landroid/view/View$OnClickListener;

    .line 28
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/b;->d:Landroid/app/Activity;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/b;->setCancelable(Z)V

    .line 30
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/b;->a()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/b;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->d:Landroid/app/Activity;

    const-string v1, "pyw_dialog_tips_bindaccount"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/b;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_unbind"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->b:Landroid/widget/Button;

    .line 36
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_bind"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->c:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/b;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/b;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/b;)Lcom/pengyouwan/sdk/c/c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->e:Lcom/pengyouwan/sdk/c/c;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/b;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/c/c;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/c;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/b;->e:Lcom/pengyouwan/sdk/c/c;

    .line 63
    return-void
.end method
