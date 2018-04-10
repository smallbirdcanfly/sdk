.class public Lcom/pengyouwan/sdk/ui/a/m;
.super Lcom/pengyouwan/framework/base/b;
.source "TokenErrorDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 30
    .line 31
    const-string v0, "PYWTheme_Widget_Dialog"

    .line 30
    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 59
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/m$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/m$1;-><init>(Lcom/pengyouwan/sdk/ui/a/m;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->a:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/m;->c:Landroid/app/Activity;

    .line 33
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/m;->a()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/m;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/m;->setCancelable(Z)V

    .line 40
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/m$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/m$2;-><init>(Lcom/pengyouwan/sdk/ui/a/m;)V

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/m;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 51
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->c:Landroid/app/Activity;

    .line 52
    const-string v1, "pyw_dialog_token_error"

    .line 51
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/m;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/m;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    const-string v1, "pyw_btn_bind"

    .line 53
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->b:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/m;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/m;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m;->c:Landroid/app/Activity;

    return-object v0
.end method
