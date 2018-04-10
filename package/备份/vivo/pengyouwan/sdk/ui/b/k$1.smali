.class Lcom/pengyouwan/sdk/ui/b/k$1;
.super Ljava/lang/Object;
.source "RegisterPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/k;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/k;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/k;->a(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 135
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 136
    const/16 v1, 0x9

    .line 137
    const/16 v2, 0xe

    .line 138
    const/4 v3, 0x3

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 139
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/k;->b(Lcom/pengyouwan/sdk/ui/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    const/16 v1, 0x1110

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/k;->a(Lcom/pengyouwan/sdk/ui/b/k;I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/k;->c(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/k;->d(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/k;->c(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/ImageView;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/k;->e(Lcom/pengyouwan/sdk/ui/b/k;)Z

    move-result v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/k$1;->a:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-static {v4}, Lcom/pengyouwan/sdk/ui/b/k;->f(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/content/Context;

    move-result-object v4

    .line 143
    invoke-static {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/k;->a(Lcom/pengyouwan/sdk/ui/b/k;Z)V

    goto :goto_0
.end method
