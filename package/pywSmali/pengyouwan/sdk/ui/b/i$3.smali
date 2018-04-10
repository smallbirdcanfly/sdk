.class Lcom/pengyouwan/sdk/ui/b/i$3;
.super Ljava/lang/Object;
.source "ForgetLoginPwdFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/i;->A()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/i;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->a:Lcom/pengyouwan/sdk/ui/b/i;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/i;->d(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->c:I

    .line 298
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->a:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/i;->d(Lcom/pengyouwan/sdk/ui/b/i;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->d:I

    .line 300
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 302
    iget v0, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->d:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 304
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 286
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/i$3;->b:Ljava/lang/CharSequence;

    .line 287
    return-void
.end method
