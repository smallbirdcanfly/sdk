.class Lcom/pengyouwan/sdk/ui/a/m$1;
.super Ljava/lang/Object;
.source "TokenErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/m;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/m$1;->a:Lcom/pengyouwan/sdk/ui/a/m;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m$1;->a:Lcom/pengyouwan/sdk/ui/a/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/m;->a(Lcom/pengyouwan/sdk/ui/a/m;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 66
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/m$1;->a:Lcom/pengyouwan/sdk/ui/a/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/m;->b(Lcom/pengyouwan/sdk/ui/a/m;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    :cond_0
    return-void
.end method
