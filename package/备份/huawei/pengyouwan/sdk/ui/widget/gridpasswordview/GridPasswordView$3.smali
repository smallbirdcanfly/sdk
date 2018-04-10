.class Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;
.super Ljava/lang/Object;
.source "GridPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 297
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 264
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 269
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "newStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 275
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v6

    .line 276
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 278
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "newNum":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 287
    :goto_2
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    move-result-object v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v4}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->setSelection(I)V

    .line 290
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    .line 281
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;

    move-result-object v3

    aput-object v1, v3, v0

    .line 282
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    goto :goto_2

    .line 279
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
