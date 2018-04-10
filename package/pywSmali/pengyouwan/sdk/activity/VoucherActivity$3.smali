.class Lcom/pengyouwan/sdk/activity/VoucherActivity$3;
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$3;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/VoucherActivity$3;->a:Lcom/pengyouwan/sdk/activity/VoucherActivity;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/VoucherActivity;->a(Lcom/pengyouwan/sdk/activity/VoucherActivity;I)V

    .line 160
    return-void
.end method
