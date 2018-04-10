.class public Lcom/pengyouwan/sdk/a/a;
.super Landroid/widget/BaseAdapter;
.source "AccountGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/pengyouwan/sdk/a/a;->c:Ljava/lang/String;

    .line 32
    iput v2, p0, Lcom/pengyouwan/sdk/a/a;->d:I

    .line 34
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/a/a;->e:Z

    .line 36
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/a/a;->f:Z

    .line 39
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    iput-object p2, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    .line 43
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    .line 45
    .local v0, "current":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/a/a;->c:Ljava/lang/String;

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<TE;>;"
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/pengyouwan/sdk/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    iput-boolean v0, p0, Lcom/pengyouwan/sdk/a/a;->e:Z

    .line 54
    iput-boolean v0, p0, Lcom/pengyouwan/sdk/a/a;->f:Z

    .line 55
    iput p3, p0, Lcom/pengyouwan/sdk/a/a;->d:I

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    .line 61
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/pengyouwan/sdk/a/a;->d:I

    add-int/2addr v0, v1

    .line 68
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/pengyouwan/sdk/a/a;->d:I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 76
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
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/pengyouwan/sdk/a/a;, "Lcom/pengyouwan/sdk/a/a<TE;>;"
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 88
    if-nez p2, :cond_1

    .line 89
    new-instance v0, Lcom/pengyouwan/sdk/a/a$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/a/a$a;-><init>(Lcom/pengyouwan/sdk/a/a;)V

    .line 90
    .local v0, "holder":Lcom/pengyouwan/sdk/a/a$a;, "Lcom/pengyouwan/sdk/a/a<TE;>.a;"
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 91
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    .line 92
    const-string v5, "pyw_griditem_account"

    .line 91
    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 92
    const/4 v5, 0x0

    .line 91
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    const-string v5, "pyw_layout_account_normal"

    .line 93
    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->c:Landroid/view/View;

    .line 96
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    const-string v5, "pyw_layout_account_new"

    .line 95
    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->d:Landroid/view/View;

    .line 97
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->c:Landroid/view/View;

    .line 98
    iget-object v5, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    const-string v6, "pyw_tv_account"

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 97
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->a:Landroid/widget/TextView;

    .line 99
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->c:Landroid/view/View;

    .line 100
    iget-object v5, p0, Lcom/pengyouwan/sdk/a/a;->b:Landroid/content/Context;

    const-string v6, "pyw_tv_account_state"

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 99
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/sdk/entity/a;

    .line 107
    .local v2, "user":Lcom/pengyouwan/sdk/entity/a;
    if-eqz v2, :cond_4

    .line 108
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->c:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->d:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "username":Ljava/lang/String;
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/pengyouwan/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    const-string v5, "\u5f53\u524d\u767b\u5f55"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_1
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/a;->c()I

    move-result v4

    if-ne v4, v9, :cond_0

    iget-boolean v4, p0, Lcom/pengyouwan/sdk/a/a;->f:Z

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    const-string v5, "\u5df2\u51bb\u7ed3"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v3    # "username":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object p2

    .line 103
    .end local v0    # "holder":Lcom/pengyouwan/sdk/a/a$a;, "Lcom/pengyouwan/sdk/a/a<TE;>.a;"
    .end local v2    # "user":Lcom/pengyouwan/sdk/entity/a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/a/a$a;

    .restart local v0    # "holder":Lcom/pengyouwan/sdk/a/a$a;, "Lcom/pengyouwan/sdk/a/a<TE;>.a;"
    goto :goto_0

    .line 115
    .restart local v2    # "user":Lcom/pengyouwan/sdk/entity/a;
    .restart local v3    # "username":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/a;->a()I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-boolean v4, p0, Lcom/pengyouwan/sdk/a/a;->e:Z

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    const-string v5, "\u65b0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 119
    :cond_3
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 126
    .end local v3    # "username":Ljava/lang/String;
    :cond_4
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->c:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v4, v0, Lcom/pengyouwan/sdk/a/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
