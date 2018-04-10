.class Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;
.super Ljava/lang/Object;
.source "ChargeCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I

    move-result v3

    int-to-float v3, v3

    .line 356
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Landroid/content/Context;F)Landroid/content/Intent;

    move-result-object v0

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v3, 0x101

    invoke-virtual {v2, v0, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 361
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->d(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->e(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 363
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 364
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->d(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->f(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 366
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 367
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->d(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    goto :goto_0

    .line 368
    :cond_4
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->g(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_7

    .line 369
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 370
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 371
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 372
    const-string v4, "pyw_networkunavilable"

    .line 370
    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_5
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 376
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->h(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 377
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->i(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)V

    goto :goto_0

    .line 380
    :cond_6
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v3, 0x102

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    goto/16 :goto_0

    .line 382
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_7
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->j(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->finish()V

    goto/16 :goto_0
.end method
