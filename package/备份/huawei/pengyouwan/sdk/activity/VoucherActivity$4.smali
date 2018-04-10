.class Lcom/pengyouwan/sdk/activity/VoucherActivity$4;
.super Lcom/pengyouwan/sdk/g/ab;
.source "VoucherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/VoucherActivity;->k()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    .line 181
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 5
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 185
    move-object v1, p1

    check-cast v1, Lcom/pengyouwan/sdk/g/ab$a;

    .line 186
    .local v1, "mResponse":Lcom/pengyouwan/sdk/g/ab$a;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 188
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x1001

    iput v3, v2, Landroid/os/Message;->what:I

    .line 189
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 191
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/ab$a;->d()I

    move-result v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->b(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V

    .line 194
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v3, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;Landroid/os/Message;)V

    .line 198
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    .end local v2    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$4;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    const/16 v4, 0x1002

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->c(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V

    goto :goto_0
.end method
