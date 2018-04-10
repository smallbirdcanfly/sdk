.class Lcom/pengyouwan/sdk/ui/a/f$1;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/f;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/f;->a(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/f;->dismiss()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/f;->b(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/f;->c(Lcom/pengyouwan/sdk/ui/a/f;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/f;->d(Lcom/pengyouwan/sdk/ui/a/f;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 125
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/f$1;->a:Lcom/pengyouwan/sdk/ui/a/f;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
