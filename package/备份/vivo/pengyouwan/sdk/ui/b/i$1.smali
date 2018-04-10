.class Lcom/pengyouwan/sdk/ui/b/i$1;
.super Ljava/lang/Object;
.source "ForgetLoginPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/i;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/i;->a(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/i;->b(Lcom/pengyouwan/sdk/ui/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(Lcom/pengyouwan/sdk/ui/b/i;I)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/i;->c(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/i;->d(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/i;->c(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/i;->e(Lcom/pengyouwan/sdk/ui/b/i;)Z

    move-result v3

    .line 235
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/i$1;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/ui/b/i;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v4

    .line 234
    invoke-static {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/i;->a(Lcom/pengyouwan/sdk/ui/b/i;Z)V

    goto :goto_0
.end method
