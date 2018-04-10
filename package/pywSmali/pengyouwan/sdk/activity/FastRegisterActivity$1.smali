.class Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;
.super Ljava/lang/Object;
.source "FastRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/FastRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    .line 192
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->b(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->d(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->b(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->e(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 201
    const/4 v1, 0x2

    .line 200
    invoke-virtual {v0, v1, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 204
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->f(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    const-string v0, "\u8bf7\u5148\u9605\u8bfb\u514d\u8d23\u58f0\u660e"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->g(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    .line 212
    const-class v3, Lcom/pengyouwan/sdk/activity/MianzeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->b(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
