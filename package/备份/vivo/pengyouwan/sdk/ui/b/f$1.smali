.class Lcom/pengyouwan/sdk/ui/b/f$1;
.super Ljava/lang/Object;
.source "CommonCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/f;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 164
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 166
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 168
    const/16 v2, 0xc

    .line 166
    invoke-virtual {v1, v4, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 170
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->b(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    .line 172
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/f;->b(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_networkunavilable"

    .line 171
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->c(Lcom/pengyouwan/sdk/ui/b/f;)Lcom/pengyouwan/sdk/ui/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/f$a;->start()Landroid/os/CountDownTimer;

    .line 176
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 178
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    const/16 v2, 0x1110

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/ui/b/f;I)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->d(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 183
    const/16 v2, 0xb

    .line 181
    invoke-virtual {v1, v4, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 185
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->e(Lcom/pengyouwan/sdk/ui/b/f;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "codeStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->f(Lcom/pengyouwan/sdk/ui/b/f;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v1

    if-nez v1, :cond_4

    .line 191
    const-string v1, "\u6821\u9a8c\u51fa\u9519\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$1;->a:Lcom/pengyouwan/sdk/ui/b/f;

    const/16 v2, 0x1113

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/ui/b/f;I)V

    goto :goto_0
.end method
