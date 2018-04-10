.class Lcom/pengyouwan/sdk/ui/a/i$2;
.super Ljava/lang/Object;
.source "LoginFromPassnoDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/i;->b()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    .line 220
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
    .line 223
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->c(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    .line 224
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/a/i;->a(Lcom/pengyouwan/sdk/ui/a/i;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->h(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/i;->l(Lcom/pengyouwan/sdk/ui/a/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$2;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->b(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 229
    :cond_0
    return-void
.end method
