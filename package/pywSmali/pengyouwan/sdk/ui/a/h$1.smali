.class Lcom/pengyouwan/sdk/ui/a/h$1;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 212
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->a(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 217
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 219
    const/4 v2, 0x6

    .line 217
    invoke-virtual {v1, v4, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 221
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->dismiss()V

    .line 264
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->c(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 230
    const/4 v2, 0x5

    .line 228
    invoke-virtual {v1, v4, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 232
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->dismiss()V

    goto :goto_0

    .line 235
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->d(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->e(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->f(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->f(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->e(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/h;->g(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 240
    :cond_3
    const-string v1, "\u6ca1\u6709\u7f13\u5b58\u8d26\u53f7"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->h(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 244
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->i(Lcom/pengyouwan/sdk/ui/a/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 250
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->j(Lcom/pengyouwan/sdk/ui/a/h;)V

    goto/16 :goto_0

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->k(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 258
    const/4 v2, 0x4

    .line 256
    invoke-virtual {v1, v4, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 260
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$1;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->dismiss()V

    goto/16 :goto_0
.end method
