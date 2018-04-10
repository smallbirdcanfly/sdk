.class Lcom/pengyouwan/sdk/ui/a/k$1;
.super Ljava/lang/Object;
.source "LogoutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/k;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/k;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/k;->a(Lcom/pengyouwan/sdk/ui/a/k;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->dismiss()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/k;->b(Lcom/pengyouwan/sdk/ui/a/k;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/k;->c(Lcom/pengyouwan/sdk/ui/a/k;)Lcom/pengyouwan/sdk/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/k$1;->a:Lcom/pengyouwan/sdk/ui/a/k;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/k;->c(Lcom/pengyouwan/sdk/ui/a/k;)Lcom/pengyouwan/sdk/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/pengyouwan/sdk/c/d;->a()V

    goto :goto_0
.end method
