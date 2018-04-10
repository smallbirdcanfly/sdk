.class public Lcom/pengyouwan/sdk/ui/b/h;
.super Lcom/pengyouwan/framework/base/d;
.source "ForgetFindPayPsdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/os/Bundle;

.field private V:Lcom/pengyouwan/sdk/entity/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->U:Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->U:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->U:Landroid/os/Bundle;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/d;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->V:Lcom/pengyouwan/sdk/entity/d;

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    .line 60
    const-string v1, "pyw_layout_change_paypsd"

    .line 59
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->T:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    .line 62
    const-string v1, "pyw_layout_find_paypsd"

    .line 61
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->S:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/h;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/h;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 40
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/h;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/h;-><init>()V

    .line 41
    .local v0, "f":Lcom/pengyouwan/sdk/ui/b/h;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/h;->c(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "pyw_fragment_paypsd_forgetfind"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/h;->a(Landroid/view/View;)V

    .line 51
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1001

    .line 74
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/h;->T:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/h;->V:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "\u8df3\u8f6c\u94fe\u63a5\u5931\u8d25\uff01"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/h;->V:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/d;->e()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/b/h;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/h;->S:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/h;->V:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    const-string v1, "\u8df3\u8f6c\u94fe\u63a5\u5931\u8d25\uff01"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/h;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/h;->V:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/b/h;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
