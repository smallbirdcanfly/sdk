.class Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;
.super Ljava/lang/Object;
.source "ChargeCenterActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/d/d$a;


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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v2, 0x108

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->c(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 602
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "sdk_extra_orderid"

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->k(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    .line 606
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;

    const/16 v1, 0x110

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->b(Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;I)V

    .line 612
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 616
    const-string v0, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 617
    return-void
.end method
