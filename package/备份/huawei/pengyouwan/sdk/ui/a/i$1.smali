.class Lcom/pengyouwan/sdk/ui/a/i$1;
.super Ljava/lang/Object;
.source "LoginFromPassnoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/i;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->a(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->b(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->c(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->c(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->b(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->d(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const-string v0, "\u6ca1\u6709\u7f13\u5b58\u8d26\u53f7"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->e(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->f(Lcom/pengyouwan/sdk/ui/a/i;)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->g(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->h(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->j(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i$1;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/i;->k(Lcom/pengyouwan/sdk/ui/a/i;)V

    goto :goto_0
.end method
