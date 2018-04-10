.class Lcom/pengyouwan/sdk/ui/a/i$b;
.super Landroid/widget/BaseAdapter;
.source "LoginFromPassnoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/i;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/a/i;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "lis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/c;>;"
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->b:Landroid/content/Context;

    .line 360
    iput-object p3, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    .line 361
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 368
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
    .line 373
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
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
    .line 381
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 386
    if-nez p2, :cond_0

    .line 387
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->b:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 388
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->b:Landroid/content/Context;

    const-string v5, "pyw_item_account"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 390
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->b:Landroid/content/Context;

    const-string v5, "pyw_iv_delect"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 391
    .local v0, "delIv":Landroid/widget/ImageView;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->b:Landroid/content/Context;

    const-string v5, "pyw_tv_accountname"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i$b;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/sdk/entity/c;

    .line 394
    .local v3, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_1
    return-object p2
.end method
