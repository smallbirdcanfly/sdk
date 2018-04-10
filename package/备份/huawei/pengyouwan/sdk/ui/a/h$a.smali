.class Lcom/pengyouwan/sdk/ui/a/h$a;
.super Landroid/widget/BaseAdapter;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/h$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;

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

.field private d:Lcom/pengyouwan/sdk/ui/a/h$a$a;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
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
    .line 450
    .local p3, "lis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/c;>;"
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->b:Landroid/content/Context;

    .line 452
    iput-object p3, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    .line 453
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/h$a$a;-><init>(Lcom/pengyouwan/sdk/ui/a/h$a;Lcom/pengyouwan/sdk/ui/a/h$a$a;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->d:Lcom/pengyouwan/sdk/ui/a/h$a$a;

    .line 454
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/h$a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->a:Lcom/pengyouwan/sdk/ui/a/h;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
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
    .line 497
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 500
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
    .line 506
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 511
    if-nez p2, :cond_0

    .line 512
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->b:Landroid/content/Context;

    .line 513
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 512
    check-cast v1, Landroid/view/LayoutInflater;

    .line 515
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->b:Landroid/content/Context;

    const-string v5, "pyw_item_account"

    .line 514
    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 515
    const/4 v5, 0x0

    .line 514
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 518
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->b:Landroid/content/Context;

    const-string v5, "pyw_iv_delect"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 517
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 519
    .local v0, "delIv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->d:Lcom/pengyouwan/sdk/ui/a/h$a$a;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 522
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->b:Landroid/content/Context;

    const-string v5, "pyw_tv_accountname"

    invoke-static {v4, v5}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 521
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 523
    .local v2, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/h$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/sdk/entity/c;

    .line 524
    .local v3, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v3, :cond_1

    .line 525
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :cond_1
    return-object p2
.end method
