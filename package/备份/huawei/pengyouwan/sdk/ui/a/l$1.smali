.class Lcom/pengyouwan/sdk/ui/a/l$1;
.super Ljava/lang/Object;
.source "NewAccountLoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/l;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0xa005

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->a(Lcom/pengyouwan/sdk/ui/a/l;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/l;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/l;->dismiss()V

    .line 79
    :cond_0
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->b(Lcom/pengyouwan/sdk/ui/a/l;)Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->c(Lcom/pengyouwan/sdk/ui/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v2, v3, v1, v4, v6}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 80
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/l;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/l;->dismiss()V

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->c(Lcom/pengyouwan/sdk/ui/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 87
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->c(Lcom/pengyouwan/sdk/ui/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    .line 91
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_1
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/l;->b(Lcom/pengyouwan/sdk/ui/a/l;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4, v6}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 92
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    goto :goto_0

    .line 89
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l$1;->a:Lcom/pengyouwan/sdk/ui/a/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/l;->c(Lcom/pengyouwan/sdk/ui/a/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    .restart local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    goto :goto_1
.end method
