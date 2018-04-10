.class Lcom/pengyouwan/sdk/activity/VoucherActivity$2;
.super Ljava/lang/Object;
.source "VoucherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/VoucherActivity;->i()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v1, v1, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    iget-object v1, v1, Lcom/pengyouwan/sdk/activity/VoucherActivity;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    const/16 v2, 0x1005

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V

    .line 152
    :goto_1
    return-void

    .line 145
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/Voucher;

    .line 146
    .local v0, "voucher":Lcom/pengyouwan/sdk/entity/Voucher;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->f(Lcom/pengyouwan/sdk/activity/VoucherActivity;)Lcom/pengyouwan/sdk/utils/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pengyouwan/sdk/utils/o;->a(Lcom/pengyouwan/sdk/entity/Voucher;)V

    goto :goto_0

    .line 150
    .end local v0    # "voucher":Lcom/pengyouwan/sdk/entity/Voucher;
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->finish()V

    goto :goto_1
.end method
