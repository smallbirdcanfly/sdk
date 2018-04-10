.class Lcom/pengyouwan/sdk/ui/b/l$1;
.super Ljava/lang/Object;
.source "ResetAccountPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/l;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->a(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->b(Lcom/pengyouwan/sdk/ui/b/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    const v2, 0xd001

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(Lcom/pengyouwan/sdk/ui/b/l;I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->c(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->d(Lcom/pengyouwan/sdk/ui/b/l;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "\u6b63\u5728\u4fdd\u7559\u8d26\u53f7\u622a\u56fe\uff0c\u8bf7\u7a0d\u540e.."

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    .line 196
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->e(Lcom/pengyouwan/sdk/ui/b/l;)I

    move-result v1

    const v2, 0xd005

    if-ne v1, v2, :cond_3

    .line 197
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->f(Lcom/pengyouwan/sdk/ui/b/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/d/h;->a(Z)V

    .line 199
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->i()V

    .line 200
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->g()V

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->finish()V

    goto :goto_0

    .line 204
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/l;->g(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/l;->h(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/l;->g(Lcom/pengyouwan/sdk/ui/b/l;)Landroid/widget/ImageView;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v4}, Lcom/pengyouwan/sdk/ui/b/l;->i(Lcom/pengyouwan/sdk/ui/b/l;)Z

    move-result v4

    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/b/l$1;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v5

    .line 205
    invoke-static {v2, v3, v4, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->a(Lcom/pengyouwan/sdk/ui/b/l;Z)V

    goto :goto_0
.end method
