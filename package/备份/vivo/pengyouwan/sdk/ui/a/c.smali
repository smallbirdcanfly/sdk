.class public Lcom/pengyouwan/sdk/ui/a/c;
.super Lcom/pengyouwan/framework/base/b;
.source "BindPassNoTipsDialog.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 37
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 57
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/c$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/c$1;-><init>(Lcom/pengyouwan/sdk/ui/a/c;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->a:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/c;->d:Landroid/app/Activity;

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/c;->setCancelable(Z)V

    .line 40
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/c;->a()V

    .line 42
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 43
    const/4 v1, 0x3

    .line 42
    invoke-virtual {v0, v1, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->b:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->d:Landroid/app/Activity;

    const-string v1, "pyw_dialog_tips_bindpassno"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/c;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_unbind"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->b:Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_bind"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->c:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v2

    .line 103
    .local v2, "user":Lcom/pengyouwan/sdk/open/User;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v1, "data":Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "backToGameData":Landroid/os/Bundle;
    const-string v3, "sdk_extra_user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 107
    const-string v3, "sdk_extra_user"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 110
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/c;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/c;->b()V

    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/c;->c:Landroid/view/View;

    return-object v0
.end method
