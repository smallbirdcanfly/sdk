.class Lcom/pengyouwan/sdk/ui/b/j$1;
.super Ljava/lang/Object;
.source "RegisterLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/j;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/j;->a(Lcom/pengyouwan/sdk/ui/b/j;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 85
    new-instance v0, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 86
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/j;->b(Lcom/pengyouwan/sdk/ui/b/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 87
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/b/j;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    .line 92
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/j;->c(Lcom/pengyouwan/sdk/ui/b/j;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/j$1;->a:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/j;->d(Lcom/pengyouwan/sdk/ui/b/j;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v1

    const v2, 0xa000

    invoke-interface {v1, v2}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0
.end method
