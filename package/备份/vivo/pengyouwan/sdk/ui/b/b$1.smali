.class Lcom/pengyouwan/sdk/ui/b/b$1;
.super Ljava/lang/Object;
.source "BindPassCardSuccessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/b;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/b$1;->a:Lcom/pengyouwan/sdk/ui/b/b;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/b$1;->a:Lcom/pengyouwan/sdk/ui/b/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/b;->a(Lcom/pengyouwan/sdk/ui/b/b;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/b$1;->a:Lcom/pengyouwan/sdk/ui/b/b;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/b;->a(Lcom/pengyouwan/sdk/ui/b/b;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    .line 76
    :cond_0
    return-void
.end method
