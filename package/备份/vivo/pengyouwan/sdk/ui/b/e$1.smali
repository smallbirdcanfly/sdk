.class Lcom/pengyouwan/sdk/ui/b/e$1;
.super Ljava/lang/Object;
.source "BindPasscardPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/e;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/e;->a(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 113
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 114
    const/4 v1, 0x6

    .line 115
    const/16 v2, 0xd

    .line 116
    const/4 v3, 0x3

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 117
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/e;->b(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/e;->a(Lcom/pengyouwan/sdk/ui/b/e;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/e;->c(Lcom/pengyouwan/sdk/ui/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/e;->b(Lcom/pengyouwan/sdk/ui/b/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    const/16 v1, 0x2005

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/e;->a(Lcom/pengyouwan/sdk/ui/b/e;I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/e;->d(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/e;->b(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/e;->d(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/e;->e(Lcom/pengyouwan/sdk/ui/b/e;)Z

    move-result v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/b/e$1;->a:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-static {v4}, Lcom/pengyouwan/sdk/ui/b/e;->f(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/e;->a(Lcom/pengyouwan/sdk/ui/b/e;Z)V

    goto :goto_0
.end method
