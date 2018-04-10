.class public Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "ForgetLoginPasswordActivity.java"


# static fields
.field private static w:Landroid/app/Activity;


# instance fields
.field public n:I

.field private o:I

.field private q:Lcom/pengyouwan/sdk/ui/b/g;

.field private r:Lcom/pengyouwan/sdk/ui/b/f;

.field private s:Lcom/pengyouwan/sdk/ui/b/i;

.field private t:Landroid/os/Bundle;

.field private u:[I

.field private v:I

.field private x:Lcom/pengyouwan/sdk/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 32
    const v0, 0xa000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->n:I

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->u:[I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    .line 128
    new-instance v0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/c/b;

    .line 24
    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    sput-object p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->w:Landroid/app/Activity;

    .line 62
    return-object v0
.end method

.method private a(Lcom/pengyouwan/framework/v4/v;)V
    .locals 1
    .param p1, "transaction"    # Lcom/pengyouwan/framework/v4/v;

    .prologue
    .line 114
    if-eqz p1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 124
    :cond_2
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/v;->b()I

    .line 126
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 4
    .param p1, "fragmentCode"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->n:I

    .line 79
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->e(I)V

    .line 80
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->e()Lcom/pengyouwan/framework/v4/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/t;->a()Lcom/pengyouwan/framework/v4/v;

    move-result-object v0

    .line 81
    .local v0, "transaction":Lcom/pengyouwan/framework/v4/v;
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->a(Lcom/pengyouwan/framework/v4/v;)V

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 84
    :pswitch_0
    const-string v1, "\u9a8c\u8bc1\u5bc6\u4fdd\u624b\u673a"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->b(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->t:Landroid/os/Bundle;

    const-string v2, "TAG"

    const/16 v3, 0x1001

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->t:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/g;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/g;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    .line 88
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 89
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v1, "\u586b\u5199\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->b(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->t:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    .line 97
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 98
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v1, "\u91cd\u7f6e\u5bc6\u7801"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->b(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    if-nez v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->t:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/i;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    .line 106
    iget v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->s:Lcom/pengyouwan/sdk/ui/b/i;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0xa000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->u:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    aput p1, v0, v1

    .line 154
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "\u9a8c\u8bc1\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->b(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->t:Landroid/os/Bundle;

    .line 72
    const-string v0, "pyw_layout_fragments"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->o:I

    .line 73
    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->d(I)V

    .line 74
    return-void
.end method

.method private j()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 158
    iget v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    .line 159
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->u:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->v:I

    aget v0, v0, v1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected f()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->onBackPressed()V

    .line 174
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->u:[I

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->j()I

    move-result v0

    .line 139
    .local v0, "code":I
    if-lez v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->d(I)V

    .line 149
    .end local v0    # "code":I
    :goto_0
    return-void

    .line 142
    .restart local v0    # "code":I
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->finish()V

    .line 143
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    sget-object v2, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->w:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    goto :goto_0

    .line 146
    .end local v0    # "code":I
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->finish()V

    .line 147
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    sget-object v2, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->w:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "pyw_activity_forgetpassword"

    .line 53
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->g()V

    .line 56
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->i()V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onDestroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;->u:[I

    .line 169
    return-void
.end method
