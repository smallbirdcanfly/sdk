.class Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$4;
.super Ljava/lang/Object;
.source "GridPasswordView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$4;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 305
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$4;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->e(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;->a()V

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
