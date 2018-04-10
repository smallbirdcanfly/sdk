.class Lcom/pengyouwan/sdk/ui/b/g$1;
.super Ljava/lang/Object;
.source "CommonPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 161
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 162
    const/4 v1, 0x7

    .line 163
    const/16 v2, 0xa

    .line 164
    const/4 v3, 0x3

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 165
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->b(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/g;->c(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/ui/b/g;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->d(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->e(Lcom/pengyouwan/sdk/ui/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->f(Lcom/pengyouwan/sdk/ui/b/g;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v0, "\u6e38\u620f\u8d26\u53f7/\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->e(Lcom/pengyouwan/sdk/ui/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->f(Lcom/pengyouwan/sdk/ui/b/g;)V

    goto :goto_0

    .line 178
    :cond_3
    const-string v0, "\u60a8\u8f93\u5165\u7684\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_4
    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u514d\u8d23\u58f0\u660e"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->g(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->h(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->i(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/b/g;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/pengyouwan/sdk/activity/MianzeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/b/g;->a(Landroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/g$1;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/g;->b(Lcom/pengyouwan/sdk/ui/b/g;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
