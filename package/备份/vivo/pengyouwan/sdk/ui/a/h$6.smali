.class Lcom/pengyouwan/sdk/ui/a/h$6;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/h;->k()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->a:Lcom/pengyouwan/sdk/ui/a/h;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->c:I

    .line 585
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->d:I

    .line 586
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->e:Z

    if-eqz v0, :cond_1

    .line 587
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 592
    iget v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->d:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 573
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->e:Z

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->e:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 566
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$6;->b:Ljava/lang/CharSequence;

    .line 567
    return-void
.end method
