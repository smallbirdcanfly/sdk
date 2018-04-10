.class Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;
.super Lcom/pengyouwan/sdk/g/j;
.source "ChargeCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->n()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 625
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 9
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/16 v6, 0x1002

    const/4 v8, 0x2

    .line 629
    move-object v4, p1

    check-cast v4, Lcom/pengyouwan/sdk/g/j$a;

    .line 630
    .local v4, "response":Lcom/pengyouwan/sdk/g/j$a;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 631
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 633
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 634
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 636
    .local v2, "jobj":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->l(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 638
    :try_start_0
    const-string v5, "total_fee"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 639
    const-string v5, "total_fee"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 645
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5, v2}, Lcom/pengyouwan/sdk/d/d;->b(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 676
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 640
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    .restart local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    .line 651
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5, v2}, Lcom/pengyouwan/sdk/d/d;->c(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 654
    :cond_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->m(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 657
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5, v2}, Lcom/pengyouwan/sdk/d/d;->a(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 664
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "sdk_extra_orderid"

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->k(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v6, 0x108

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 667
    invoke-static {v8, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 670
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->d()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 671
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v6, 0x1003

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    goto :goto_1

    .line 673
    :cond_6
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$6;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 674
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/g/j$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
