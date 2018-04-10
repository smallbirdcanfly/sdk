.class Lcom/pengyouwan/sdk/ui/a/g$2;
.super Ljava/lang/Object;
.source "InputPayPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g$2;->a:Lcom/pengyouwan/sdk/ui/a/g;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g$2;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/g;->a(Lcom/pengyouwan/sdk/ui/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g$2;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/g;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method
