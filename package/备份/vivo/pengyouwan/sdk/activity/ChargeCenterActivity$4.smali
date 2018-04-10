.class Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;
.super Lcom/pengyouwan/sdk/g/ab;
.source "ChargeCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->l()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 449
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 5
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/16 v4, 0x113

    const/4 v3, 0x1

    .line 452
    move-object v1, p1

    check-cast v1, Lcom/pengyouwan/sdk/g/ab$a;

    .line 453
    .local v1, "mResponse":Lcom/pengyouwan/sdk/g/ab$a;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Z)V

    .line 465
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2, v4}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 474
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :goto_1
    return-void

    .line 463
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Z)V

    goto :goto_0

    .line 466
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v3, 0x1003

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    goto :goto_1

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;Z)V

    .line 471
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$4;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2, v4}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 472
    const-string v2, "\u83b7\u53d6\u4ee3\u91d1\u5238\u6570\u636e\u5931\u8d25"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
