.class public Lcom/pengyouwan/sdk/a/b;
.super Landroid/widget/BaseAdapter;
.source "MyVoucherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/a/b;->e:Z

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pengyouwan/sdk/a/b;->b:Landroid/view/LayoutInflater;

    .line 38
    iput-object p1, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/pengyouwan/sdk/a/b;->a:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method

.method private a(F)Ljava/lang/String;
    .locals 4
    .param p1, "flo"    # F

    .prologue
    .line 140
    const-string v0, "%.0f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/a/b;->e:Z

    .line 51
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    if-nez p2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->b:Landroid/view/LayoutInflater;

    .line 85
    iget-object v3, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    const-string v4, "pyw_item_myvoucher_list"

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v0, Lcom/pengyouwan/sdk/a/b$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/a/b$a;-><init>(Lcom/pengyouwan/sdk/a/b;)V

    .line 88
    .local v0, "holder":Lcom/pengyouwan/sdk/a/b$a;
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 89
    const-string v3, "pyw_tv_myvoucher_money"

    .line 88
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->c:Landroid/widget/TextView;

    .line 91
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 92
    const-string v3, "pyw_tv_myvoucher_time"

    .line 91
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->a:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 94
    const-string v3, "pyw_tv_myvoucher_id"

    .line 93
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->b:Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 96
    const-string v3, "pyw_tv_myvoucher_idnum"

    .line 95
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->d:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 98
    const-string v3, "pyw_layout_myvoucher_content"

    .line 97
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->f:Landroid/widget/LinearLayout;

    .line 99
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    .line 100
    const-string v3, "pyw_tv_myvoucher_sign"

    .line 99
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->e:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 108
    .local v1, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    if-eqz v1, :cond_0

    .line 109
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/a/b;->a(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-boolean v2, p0, Lcom/pengyouwan/sdk/a/b;->e:Z

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    const-string v5, "pyw_common_orange_lighter"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 114
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 117
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    const-string v5, "pyw_common_orange_lighter"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 119
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 130
    :cond_0
    :goto_1
    return-object p2

    .line 104
    .end local v0    # "holder":Lcom/pengyouwan/sdk/a/b$a;
    .end local v1    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/a/b$a;

    .restart local v0    # "holder":Lcom/pengyouwan/sdk/a/b$a;
    goto :goto_0

    .line 121
    .restart local v1    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_2
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    const-string v5, "pyw_myvocher_normal_txt_color"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 121
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/b;->c:Landroid/content/Context;

    const-string v5, "pyw_myvocher_normal_txt_color"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 126
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/b$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1
.end method
