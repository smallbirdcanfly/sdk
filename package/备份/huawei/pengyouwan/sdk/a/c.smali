.class public Lcom/pengyouwan/sdk/a/c;
.super Landroid/widget/BaseAdapter;
.source "VoucherListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/a/c$a;
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

.field private e:F

.field private f:F

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "total"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/pengyouwan/sdk/a/c;->b:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/pengyouwan/sdk/a/c;->a:Landroid/view/ViewGroup;

    .line 50
    iput p3, p0, Lcom/pengyouwan/sdk/a/c;->e:F

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ffaa00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x21

    .line 172
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    return-object v0
.end method

.method private b(F)Ljava/lang/String;
    .locals 4
    .param p1, "flo"    # F

    .prologue
    .line 178
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
.method public a(F)V
    .locals 0
    .param p1, "mSelectSum"    # F

    .prologue
    .line 186
    iput p1, p0, Lcom/pengyouwan/sdk/a/c;->f:F

    .line 187
    return-void
.end method

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
    .line 54
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public a(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pengyouwan/sdk/entity/Voucher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "voucherLinkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    iput-object p1, p0, Lcom/pengyouwan/sdk/a/c;->g:Ljava/util/LinkedList;

    .line 62
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
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
    .line 74
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
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
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    if-nez p2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->b:Landroid/view/LayoutInflater;

    .line 90
    iget-object v3, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    const-string v4, "pyw_item_voucher_list"

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v0, Lcom/pengyouwan/sdk/a/c$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/a/c$a;-><init>(Lcom/pengyouwan/sdk/a/c;)V

    .line 94
    .local v0, "holder":Lcom/pengyouwan/sdk/a/c$a;
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    const-string v3, "pyw_layout_voucher_content"

    .line 93
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->e:Landroid/widget/LinearLayout;

    .line 96
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 97
    const-string v3, "pyw_tv_voucher_money"

    .line 96
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->d:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 100
    const-string v3, "pyw_tv_voucher_time"

    .line 99
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->a:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 103
    const-string v3, "pyw_tv_voucher_idnum"

    .line 102
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 106
    const-string v3, "pyw_tv_voucher_sign"

    .line 105
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->c:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->c:Landroid/content/Context;

    .line 109
    const-string v3, "pyw_cb_check"

    .line 108
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->f:Landroid/widget/CheckBox;

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 115
    .local v1, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    if-eqz v1, :cond_0

    .line 116
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 121
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->c:Landroid/widget/TextView;

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->d:Landroid/widget/TextView;

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f7f\u7528\uff1a\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    \u5269\u4f59\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v4

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    :cond_0
    :goto_1
    return-object p2

    .line 112
    .end local v0    # "holder":Lcom/pengyouwan/sdk/a/c$a;
    .end local v1    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/a/c$a;

    .restart local v0    # "holder":Lcom/pengyouwan/sdk/a/c$a;
    goto/16 :goto_0

    .line 128
    .restart local v1    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_2
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->d:Landroid/widget/TextView;

    const-string v3, "\u4f7f\u7528\uff1a"

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    \u5269\u4f59\uff1a\uffe5"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v6

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-direct {p0, v3, v4, v5}, Lcom/pengyouwan/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget v2, p0, Lcom/pengyouwan/sdk/a/c;->f:F

    iget v3, p0, Lcom/pengyouwan/sdk/a/c;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/pengyouwan/sdk/a/c;->g:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 134
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->c:Landroid/widget/TextView;

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v5, 0xcc

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f7f\u7528\uff1a\uffe5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    \u5269\u4f59\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v4

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/a/c;->b(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 140
    :cond_3
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 141
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->c:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 145
    :cond_4
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->e:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 146
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->c:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v2, v0, Lcom/pengyouwan/sdk/a/c$a;->b:Landroid/widget/TextView;

    const/16 v3, 0xff

    const/16 v4, 0xaa

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
