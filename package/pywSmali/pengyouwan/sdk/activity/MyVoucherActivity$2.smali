.class Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;
.super Lcom/pengyouwan/sdk/g/ab;
.source "MyVoucherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    .line 180
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 183
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/ab$a;

    .line 184
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/ab$a;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->a(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;Ljava/util/ArrayList;)V

    .line 186
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->a(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->b(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->b(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    .line 190
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->c(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    .line 191
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->f()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->d(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    .line 192
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/ab$a;->g()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->e(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    .line 193
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    const/16 v2, 0x1001

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->f(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/MyVoucherActivity$2;->a:Lcom/pengyouwan/sdk/activity/MyVoucherActivity;

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/MyVoucherActivity;->f(Lcom/pengyouwan/sdk/activity/MyVoucherActivity;I)V

    goto :goto_0
.end method
