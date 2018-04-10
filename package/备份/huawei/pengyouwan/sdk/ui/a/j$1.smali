.class Lcom/pengyouwan/sdk/ui/a/j$1;
.super Ljava/lang/Object;
.source "LoginingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/j;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/j;->a(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/j;->b(Lcom/pengyouwan/sdk/ui/a/j;)V

    .line 171
    invoke-static {}, Lcom/pengyouwan/sdk/ui/a/j;->a()I

    move-result v0

    const v1, 0xa004

    if-ne v0, v1, :cond_1

    .line 172
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/j;->c(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    .line 173
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/j;->dismiss()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/pengyouwan/sdk/ui/a/j;->a()I

    move-result v0

    const v1, 0xa005

    if-ne v0, v1, :cond_0

    .line 177
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/i;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/j;->c(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/a/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/i;->show()V

    .line 178
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j$1;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/j;->dismiss()V

    goto :goto_0
.end method
