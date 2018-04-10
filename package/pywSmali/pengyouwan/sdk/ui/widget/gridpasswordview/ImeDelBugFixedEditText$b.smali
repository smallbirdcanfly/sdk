.class Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "ImeDelBugFixedEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    .line 42
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v3, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 60
    new-instance v2, Landroid/view/KeyEvent;

    .line 61
    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    new-instance v2, Landroid/view/KeyEvent;

    .line 63
    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0

    .line 66
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;->a()V

    .line 51
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
