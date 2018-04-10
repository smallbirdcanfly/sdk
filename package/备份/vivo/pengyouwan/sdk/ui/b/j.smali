.class public Lcom/pengyouwan/sdk/ui/b/j;
.super Lcom/pengyouwan/framework/base/d;
.source "RegisterLoginFragment.java"


# instance fields
.field private S:Landroid/content/Context;

.field private T:Lcom/pengyouwan/sdk/c/b;

.field private U:Landroid/widget/Button;

.field private V:Landroid/widget/Button;

.field private W:Ljava/lang/String;

.field private X:Landroid/os/Bundle;

.field private Y:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 80
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/j$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/j$1;-><init>(Lcom/pengyouwan/sdk/ui/b/j;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->Y:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/j;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->V:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->S:Landroid/content/Context;

    .line 61
    const-string v1, "pyw_btn_register_ohter"

    .line 60
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->U:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->S:Landroid/content/Context;

    const-string v1, "pyw_btn_login"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->V:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->U:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->V:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/j;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->X:Landroid/os/Bundle;

    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->X:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->W:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/j;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->U:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/j;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->T:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/j;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/j;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/j;-><init>()V

    .line 40
    .local v0, "loginFragment":Lcom/pengyouwan/sdk/ui/b/j;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/j;->c(Landroid/os/Bundle;)V

    .line 41
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
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/j;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->S:Landroid/content/Context;

    .line 48
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/j;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 50
    const-string v2, "pyw_fragment_register_login_landscape"

    .line 49
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/j;->a(Landroid/view/View;)V

    .line 56
    return-object v0

    .line 52
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/j;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 53
    const-string v2, "pyw_fragment_register_login_portrait"

    .line 52
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/j;->T:Lcom/pengyouwan/sdk/c/b;

    .line 98
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Z)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->X:Landroid/os/Bundle;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "tempPhone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j;->W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/j;->W:Ljava/lang/String;

    .line 78
    .end local v0    # "tempPhone":Ljava/lang/String;
    :cond_0
    return-void
.end method
