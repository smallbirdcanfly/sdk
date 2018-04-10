.class Lcom/pengyouwan/framework/v4/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/Fragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/Fragment;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/Fragment$1;->a:Lcom/pengyouwan/framework/v4/Fragment;

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment$1;->a:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/Fragment$1;->a:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/Fragment;->L:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
