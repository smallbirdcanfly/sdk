.class Lcom/pengyouwan/sdk/ui/a/b$1;
.super Ljava/lang/Object;
.source "BindAccountTipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/b;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->a(Lcom/pengyouwan/sdk/ui/a/b;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/b;->dismiss()V

    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->b(Lcom/pengyouwan/sdk/ui/a/b;)Lcom/pengyouwan/sdk/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->b(Lcom/pengyouwan/sdk/ui/a/b;)Lcom/pengyouwan/sdk/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/pengyouwan/sdk/c/c;->b()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->c(Lcom/pengyouwan/sdk/ui/a/b;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/b;->dismiss()V

    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->b(Lcom/pengyouwan/sdk/ui/a/b;)Lcom/pengyouwan/sdk/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/b$1;->a:Lcom/pengyouwan/sdk/ui/a/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/b;->b(Lcom/pengyouwan/sdk/ui/a/b;)Lcom/pengyouwan/sdk/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/pengyouwan/sdk/c/c;->a()V

    goto :goto_0
.end method
