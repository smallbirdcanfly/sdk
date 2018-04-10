.class Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;
.super Lcom/pengyouwan/sdk/g/aa;
.source "UserCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/UserCenterActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    .line 322
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 325
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/aa$a;

    .line 326
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/aa$a;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/aa$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/aa$a;->b()Lcom/pengyouwan/sdk/entity/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;Lcom/pengyouwan/sdk/entity/d;)V

    .line 329
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    const/16 v2, 0x1001

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/aa$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    const/16 v2, 0x1003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$3;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->b(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V

    goto :goto_0
.end method
