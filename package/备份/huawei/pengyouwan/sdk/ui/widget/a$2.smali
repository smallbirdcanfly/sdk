.class Lcom/pengyouwan/sdk/ui/widget/a$2;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/widget/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/widget/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a$2;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$2;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->k(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$2;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->l(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/open/PYWPlatform;->openUsercenter(Landroid/app/Activity;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$2;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v0, v0, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
