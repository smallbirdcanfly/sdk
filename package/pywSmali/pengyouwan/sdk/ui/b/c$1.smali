.class Lcom/pengyouwan/sdk/ui/b/c$1;
.super Ljava/lang/Object;
.source "BindPassCardhadPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/c$1;->a:Lcom/pengyouwan/sdk/ui/b/c;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/c$1;->a:Lcom/pengyouwan/sdk/ui/b/c;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/c;->a(Lcom/pengyouwan/sdk/ui/b/c;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/c$1;->a:Lcom/pengyouwan/sdk/ui/b/c;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/c;->a(Lcom/pengyouwan/sdk/ui/b/c;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v0

    const/16 v1, 0x1010

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    .line 79
    :cond_0
    return-void
.end method
