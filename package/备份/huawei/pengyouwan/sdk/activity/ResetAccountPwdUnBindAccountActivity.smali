.class public Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "ResetAccountPwdUnBindAccountActivity.java"


# instance fields
.field private n:I

.field private o:Lcom/pengyouwan/sdk/ui/b/a;

.field private q:Lcom/pengyouwan/sdk/ui/b/l;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/os/Bundle;

.field private u:I

.field private v:Z

.field private w:Lcom/pengyouwan/sdk/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->u:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->v:Z

    .line 72
    new-instance v0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->w:Lcom/pengyouwan/sdk/c/b;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    .line 160
    const-class v1, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;

    .line 159
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "tag"

    const v2, 0xc001

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    return-object v0
.end method

.method private a(Lcom/pengyouwan/framework/v4/v;)V
    .locals 1
    .param p1, "transaction"    # Lcom/pengyouwan/framework/v4/v;

    .prologue
    .line 147
    if-eqz p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/v;->b()I

    .line 156
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->d(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    .line 168
    const-class v1, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;

    .line 167
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "tag"

    const v2, 0xc002

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v1, "boolean"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    return-object v0
.end method

.method private d(I)V
    .locals 6
    .param p1, "code"    # I

    .prologue
    const v5, 0xc002

    .line 82
    iput p1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->u:I

    .line 83
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->e()Lcom/pengyouwan/framework/v4/t;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/t;->a()Lcom/pengyouwan/framework/v4/v;

    move-result-object v1

    .line 85
    .local v1, "transaction":Lcom/pengyouwan/framework/v4/v;
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->a(Lcom/pengyouwan/framework/v4/v;)V

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const-string v3, "\u9a8c\u8bc1\u624b\u673a"

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->b(Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    if-nez v3, :cond_0

    .line 90
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 91
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "phone":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    const-string v4, "TAG"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    const-string v4, "is_reg"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/a;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/a;

    move-result-object v3

    .line 97
    iput-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    .line 99
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->w:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v3, v4}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 100
    iget v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->n:I

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->o:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {v1, v3, v4}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 102
    :cond_1
    const-string v3, "\u83b7\u53d6\u624b\u673a\u4fe1\u606f\u5931\u8d25"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "phone":Ljava/lang/String;
    :cond_2
    const-string v3, "\u83b7\u53d6\u8d26\u53f7\u4fe1\u606f\u6709\u8bef"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v2    # "user":Lcom/pengyouwan/sdk/entity/c;
    :pswitch_1
    const-string v3, "\u8bbe\u7f6e\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->b(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    if-nez v3, :cond_3

    .line 114
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    const-string v4, "account"

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->r:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    const-string v4, "state"

    iget v5, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->s:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->t:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/pengyouwan/sdk/ui/b/l;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/l;

    move-result-object v3

    iput-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    .line 117
    iget v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->n:I

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v1, v3, v4}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v1, v3}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0xc001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g()V
    .locals 4

    .prologue
    .line 58
    .line 60
    const-string v1, "pyw_layout_fragments"

    .line 58
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->n:I

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    const v3, 0xc002

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "code":I
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->r:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "boolean"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->v:Z

    .line 64
    const v1, 0xc001

    if-ne v0, v1, :cond_0

    .line 65
    const v1, 0xd005

    iput v1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->s:I

    .line 69
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->d(I)V

    .line 70
    return-void

    .line 67
    :cond_0
    const v1, 0xd006

    iput v1, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->s:I

    goto :goto_0
.end method


# virtual methods
.method protected f()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->onBackPressed()V

    .line 144
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->u:I

    const v1, 0xc002

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->q:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/b/l;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->v:Z

    if-nez v0, :cond_1

    .line 129
    const v0, 0xc001

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->d(I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->s:I

    const v1, 0xd005

    if-eq v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "pyw_activity_framelayout"

    .line 52
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->g()V

    .line 55
    return-void
.end method
