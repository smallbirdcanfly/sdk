.class public Lcom/pengyouwan/sdk/ui/b/d;
.super Lcom/pengyouwan/framework/base/d;
.source "BindPasscardPhoneFragment.java"


# instance fields
.field private S:Lcom/pengyouwan/sdk/c/b;

.field private T:Landroid/widget/EditText;

.field private U:Landroid/widget/Button;

.field private V:Landroid/content/Context;

.field private W:Ljava/lang/String;

.field private X:Landroid/os/Bundle;

.field private Y:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 81
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/d$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/d$1;-><init>(Lcom/pengyouwan/sdk/ui/b/d;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->Y:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/d;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->T:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->X:Landroid/os/Bundle;

    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->V:Landroid/content/Context;

    const-string v1, "pyw_et_register_account"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 73
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->T:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->V:Landroid/content/Context;

    const-string v1, "pyw_btn_getcode"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->U:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->U:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/d;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/d;->W:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/d;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->X:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/d;)Lcom/pengyouwan/sdk/c/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d;->S:Lcom/pengyouwan/sdk/c/b;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/d;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/d;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/d;-><init>()V

    .line 44
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/d;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/d;->c(Landroid/os/Bundle;)V

    .line 45
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

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-string v3, "pyw_fragment_bindpasscard_phone"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 61
    .local v0, "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/d;->V:Landroid/content/Context;

    .line 67
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/d;->a(Landroid/view/View;)V

    .line 68
    return-object v1

    .line 63
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/d;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 64
    .restart local v0    # "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/d;->S:Lcom/pengyouwan/sdk/c/b;

    .line 50
    return-void
.end method
