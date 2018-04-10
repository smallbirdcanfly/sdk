.class public Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "SetPayPasswordActivity.java"


# instance fields
.field private n:I

.field private o:Lcom/pengyouwan/sdk/ui/b/h;

.field private q:Landroid/os/Bundle;

.field private r:Lcom/pengyouwan/sdk/entity/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/pengyouwan/sdk/entity/d;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userCenter"    # Lcom/pengyouwan/sdk/entity/d;
    .param p2, "isSetPsd"    # I

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private a(Lcom/pengyouwan/framework/v4/v;)V
    .locals 1
    .param p1, "transaction"    # Lcom/pengyouwan/framework/v4/v;

    .prologue
    .line 97
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/v;->b()I

    .line 103
    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->e()Lcom/pengyouwan/framework/v4/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/framework/v4/t;->a()Lcom/pengyouwan/framework/v4/v;

    move-result-object v1

    .line 75
    .local v1, "transaction":Lcom/pengyouwan/framework/v4/v;
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->a(Lcom/pengyouwan/framework/v4/v;)V

    .line 76
    packed-switch p1, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->r:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "\u8df3\u8f6c\u94fe\u63a5\u5931\u8d25\uff01"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->r:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/d;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1001

    const/4 v4, 0x0

    .line 81
    invoke-static {p0, v2, v3, v4}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0xe003

    invoke-virtual {p0, v0, v2}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    if-nez v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->q:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/h;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/h;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    .line 89
    iget v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->n:I

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->o:Lcom/pengyouwan/sdk/ui/b/h;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0xe001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g()V
    .locals 4

    .prologue
    .line 55
    const-string v1, "\u4ea4\u6613\u5bc6\u7801"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/entity/d;

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->r:Lcom/pengyouwan/sdk/entity/d;

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->q:Landroid/os/Bundle;

    .line 58
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->q:Landroid/os/Bundle;

    const-string v2, "data"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->r:Lcom/pengyouwan/sdk/entity/d;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    const-string v1, "pyw_layout_fragments"

    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->n:I

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    const v3, 0xe001

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "code":I
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->d(I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    const v0, 0xe003

    if-ne p1, v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->finish()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "pyw_activity_framelayout"

    .line 48
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/SetPayPasswordActivity;->g()V

    .line 52
    return-void
.end method
