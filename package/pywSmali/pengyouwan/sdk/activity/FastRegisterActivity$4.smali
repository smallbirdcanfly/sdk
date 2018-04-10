.class Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;
.super Lcom/pengyouwan/sdk/g/m;
.source "FastRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->n()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    .line 281
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 5
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 284
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/m$a;

    .line 285
    .local v0, "response":Lcom/pengyouwan/sdk/g/m$a;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Lcom/pengyouwan/sdk/entity/c;)V

    .line 289
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->l(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const-string v3, "\u767b\u5f55\u8d26\u53f7\u540d:"

    .line 290
    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v4}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 289
    invoke-static {v2, v3, v4}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->d(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->d(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->c(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 299
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$4;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->k(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    .line 300
    return-void

    .line 295
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 295
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    goto :goto_1
.end method
