.class Lcom/pengyouwan/sdk/ui/a/h$4;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->f(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    .line 389
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/ui/a/h;->a(Lcom/pengyouwan/sdk/ui/a/h;Lcom/pengyouwan/sdk/entity/c;)V

    .line 391
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->q(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/h;->r(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 393
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/h;->r(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 396
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$4;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->e(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 398
    :cond_0
    return-void
.end method
