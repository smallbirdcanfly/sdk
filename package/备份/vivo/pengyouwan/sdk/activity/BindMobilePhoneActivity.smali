.class public Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "BindMobilePhoneActivity.java"


# instance fields
.field private n:I

.field private o:Lcom/pengyouwan/sdk/ui/b/c;

.field private q:Lcom/pengyouwan/sdk/ui/b/d;

.field private r:Lcom/pengyouwan/sdk/ui/b/e;

.field private s:Lcom/pengyouwan/sdk/ui/b/b;

.field private t:Lcom/pengyouwan/sdk/ui/b/a;

.field private u:Z

.field private v:[I

.field private w:I

.field private x:Landroid/os/Bundle;

.field private y:Lcom/pengyouwan/sdk/c/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->u:Z

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->v:[I

    .line 68
    iput v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    .line 98
    new-instance v0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "send_call_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    return-object v0
.end method

.method private a(Lcom/pengyouwan/framework/v4/v;)V
    .locals 1
    .param p1, "transaction"    # Lcom/pengyouwan/framework/v4/v;

    .prologue
    .line 190
    if-eqz p1, :cond_5

    .line 191
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 206
    :cond_4
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/v;->b()I

    .line 208
    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->e()Lcom/pengyouwan/framework/v4/t;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/t;->a()Lcom/pengyouwan/framework/v4/v;

    move-result-object v0

    .line 109
    .local v0, "transaction":Lcom/pengyouwan/framework/v4/v;
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->e(I)V

    .line 110
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->a(Lcom/pengyouwan/framework/v4/v;)V

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 177
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->u:Z

    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->l()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->finish()V

    .line 183
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 115
    const/4 v2, 0x5

    .line 114
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 118
    const-string v1, "\u9a8c\u8bc1\u624b\u673a"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    const-string v2, "TAG"

    const/16 v3, 0x1013

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/a;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/a;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    .line 122
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 123
    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->t:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 130
    const/4 v2, 0x4

    .line 129
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 133
    const-string v1, "\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    if-nez v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/d;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/d;

    move-result-object v1

    .line 135
    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    .line 137
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/d;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 138
    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->q:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 143
    :pswitch_2
    const-string v1, "\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    if-nez v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/c;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/c;

    move-result-object v1

    .line 145
    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    .line 147
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/c;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 148
    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->o:Lcom/pengyouwan/sdk/ui/b/c;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto/16 :goto_0

    .line 154
    :pswitch_3
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 155
    const/4 v2, 0x6

    .line 154
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 158
    const-string v1, "\u8bbe\u7f6e\u624b\u673a\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    if-nez v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/e;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/e;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    .line 161
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/e;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 162
    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->r:Lcom/pengyouwan/sdk/ui/b/e;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto/16 :goto_0

    .line 167
    :pswitch_4
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->i()V

    .line 168
    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    if-nez v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/b;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/b;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    .line 171
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/b;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 172
    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->s:Lcom/pengyouwan/sdk/ui/b/b;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1010
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private e(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->v:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    aput p1, v0, v1

    .line 259
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 88
    .line 89
    const-string v0, "pyw_layout_fragments"

    .line 88
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->n:I

    .line 90
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const/16 v0, 0x1011

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->d(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/16 v0, 0x1012

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->d(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    .line 187
    return-void
.end method

.method private j()I
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 263
    iget v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    .line 264
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->v:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->w:I

    aget v0, v0, v1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 272
    const-string v0, "\u7ed1\u5b9a\u624b\u673a"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->b(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v2

    .line 290
    .local v2, "user":Lcom/pengyouwan/sdk/open/User;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v1, "data":Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "backToGameData":Landroid/os/Bundle;
    const-string v3, "sdk_extra_user"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    const-string v3, "sdk_extra_user"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 296
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 297
    const/4 v3, 0x1

    invoke-static {v3, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 298
    return-void
.end method


# virtual methods
.method protected f()V
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->u:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->l()V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->onBackPressed()V

    .line 306
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x3

    .line 212
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->v:[I

    if-eqz v1, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->j()I

    move-result v0

    .line 214
    .local v0, "code":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 215
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "4"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 216
    if-eqz v1, :cond_0

    .line 219
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 221
    const/4 v2, 0x4

    .line 220
    invoke-virtual {v1, v2, v4, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 226
    :cond_0
    if-lez v0, :cond_3

    .line 227
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "5"

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    if-eqz v1, :cond_2

    .line 232
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 234
    const/4 v2, 0x5

    .line 233
    invoke-virtual {v1, v2, v4, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 248
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->d(I)V

    .line 255
    .end local v0    # "code":I
    :goto_1
    return-void

    .line 237
    .restart local v0    # "code":I
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v2, "6"

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 239
    if-eqz v1, :cond_1

    .line 242
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 244
    const/4 v2, 0x6

    .line 243
    invoke-virtual {v1, v2, v4, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->finish()V

    goto :goto_1

    .line 253
    .end local v0    # "code":I
    :cond_4
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v1, "pyw_activity_framelayout"

    .line 75
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 80
    const-string v1, "send_call_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->u:Z

    .line 82
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->x:Landroid/os/Bundle;

    .line 83
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->k()V

    .line 84
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->g()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onDestroy()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->v:[I

    .line 285
    return-void
.end method
