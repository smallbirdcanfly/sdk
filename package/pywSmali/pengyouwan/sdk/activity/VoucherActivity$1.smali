.class Lcom/pengyouwan/sdk/activity/VoucherActivity$1;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/VoucherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/VoucherActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/VoucherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 284
    .local v4, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->d()Z

    move-result v1

    .line 286
    .local v1, "isSelect":Z
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, v5, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 292
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v0

    .line 293
    .local v0, "consumption_amount":F
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v5

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->b()F

    move-result v6

    sub-float v3, v5, v6

    .line 294
    .local v3, "residual_amount":F
    add-float v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/Voucher;->b(F)V

    .line 295
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/Voucher;->a(F)V

    .line 296
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    sub-float/2addr v6, v0

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)V

    .line 301
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, v5, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->c(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pengyouwan/sdk/entity/Voucher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    .line 336
    .end local v0    # "consumption_amount":F
    .end local v3    # "residual_amount":F
    :goto_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 337
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->d(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u00a5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v8, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v8}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v8

    invoke-static {v7, v8}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->e(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/a/c;

    move-result-object v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v6, v6, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/a/c;->a(Ljava/util/LinkedList;)V

    .line 342
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->e(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/a/c;

    move-result-object v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/a/c;->a(F)V

    .line 343
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Z)V

    .line 344
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->e(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/a/c;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 304
    :cond_2
    if-nez v1, :cond_4

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, v5, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 305
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    sub-float v0, v5, v6

    .line 306
    .restart local v0    # "consumption_amount":F
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v2

    .line 310
    .local v2, "leftMoney":F
    cmpl-float v5, v2, v0

    if-ltz v5, :cond_3

    .line 316
    :goto_4
    invoke-virtual {v4, v0}, Lcom/pengyouwan/sdk/entity/Voucher;->a(F)V

    .line 318
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    add-float/2addr v6, v0

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)V

    .line 323
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, v5, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->c(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pengyouwan/sdk/entity/Voucher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    .line 325
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    goto/16 :goto_1

    .line 314
    :cond_3
    move v0, v2

    goto :goto_4

    .line 327
    .end local v0    # "consumption_amount":F
    .end local v2    # "leftMoney":F
    :cond_4
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 328
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v6

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/Voucher;->f()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)V

    .line 333
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v5, v5, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->c(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pengyouwan/sdk/entity/Voucher;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Z)V

    goto/16 :goto_1

    .line 339
    :cond_5
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->d(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u00a5"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v8, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$1;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v8}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;)F

    move-result v8

    invoke-static {v7, v8}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 343
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3
.end method
