.class Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;
.super Ljava/lang/Object;
.source "GridPasswordView.java"

# interfaces
.implements Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 256
    :goto_1
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v1

    aput-object v2, v1, v0

    .line 249
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    goto :goto_1

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
