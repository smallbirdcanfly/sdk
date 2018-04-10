.class public Lcom/pengyouwan/sdk/activity/RegisterActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "RegisterActivity.java"


# static fields
.field private static x:Landroid/app/Activity;


# instance fields
.field public n:I

.field private o:I

.field private q:Lcom/pengyouwan/sdk/ui/b/g;

.field private r:Lcom/pengyouwan/sdk/ui/b/f;

.field private s:Lcom/pengyouwan/sdk/ui/b/k;

.field private t:Lcom/pengyouwan/sdk/ui/b/j;

.field private u:[I

.field private v:I

.field private w:Landroid/os/Bundle;

.field private y:Lcom/pengyouwan/sdk/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 40
    const v0, 0xa000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->n:I

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->u:[I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    .line 172
    new-instance v0, Lcom/pengyouwan/sdk/activity/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/RegisterActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->y:Lcom/pengyouwan/sdk/c/b;

    .line 30
    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pengyouwan/sdk/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    sput-object p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->x:Landroid/app/Activity;

    .line 72
    return-object v0
.end method

.method private a(Lcom/pengyouwan/framework/v4/v;)V
    .locals 1
    .param p1, "transaction"    # Lcom/pengyouwan/framework/v4/v;

    .prologue
    .line 155
    if-eqz p1, :cond_4

    .line 156
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-virtual {p1, v0}, Lcom/pengyouwan/framework/v4/v;->a(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/v;->b()I

    .line 170
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/RegisterActivity;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 4
    .param p1, "fragmentCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->e(I)V

    .line 94
    iput p1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->n:I

    .line 95
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->e()Lcom/pengyouwan/framework/v4/t;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/t;->a()Lcom/pengyouwan/framework/v4/v;

    move-result-object v0

    .line 97
    .local v0, "transaction":Lcom/pengyouwan/framework/v4/v;
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->a(Lcom/pengyouwan/framework/v4/v;)V

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 103
    const/4 v2, 0x7

    .line 102
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 106
    const-string v1, "\u624b\u673a\u6ce8\u518c\uff081/3\uff09"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->b(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    const-string v2, "TAG"

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/g;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/g;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    .line 110
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 111
    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->q:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 118
    const/16 v2, 0x8

    .line 117
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 121
    const-string v1, "\u624b\u673a\u6ce8\u518c\uff082/3\uff09"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->b(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/f;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/f;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    .line 124
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 125
    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->r:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 132
    const/16 v2, 0x9

    .line 131
    invoke-virtual {v1, v2, v3, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 135
    const-string v1, "\u624b\u673a\u6ce8\u518c\uff083/3\uff09"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->b(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/k;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/k;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    .line 138
    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->s:Lcom/pengyouwan/sdk/ui/b/k;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    goto/16 :goto_0

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    if-nez v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/j;->k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/j;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    .line 145
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->y:Lcom/pengyouwan/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/j;->a(Lcom/pengyouwan/sdk/c/b;)V

    .line 146
    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->o:I

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/v4/v;->a(ILcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->t:Lcom/pengyouwan/sdk/ui/b/j;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/v;->b(Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/v;

    .line 149
    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0xa000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->u:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    aput p1, v0, v1

    .line 230
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 77
    const-string v1, "\u624b\u673a\u6ce8\u518c\uff081/3\uff09"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->b(Ljava/lang/String;)V

    .line 80
    const-string v1, "pyw_title_logo"

    .line 79
    invoke-static {p0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "logo":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->w:Landroid/os/Bundle;

    .line 87
    const-string v0, "pyw_layout_fragments"

    .line 86
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->o:I

    .line 88
    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->d(I)V

    .line 89
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    .line 225
    return-void
.end method

.method private k()I
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    .line 235
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->u:[I

    iget v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->v:I

    aget v0, v0, v1

    .line 237
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
    .line 243
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->onBackPressed()V

    .line 244
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x7

    .line 184
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity;->u:[I

    if-eqz v1, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->k()I

    move-result v0

    .line 186
    .local v0, "code":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "7"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 190
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v4}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 196
    :cond_0
    if-lez v0, :cond_3

    .line 197
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "8"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 198
    if-eqz v1, :cond_2

    .line 200
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 201
    const/16 v2, 0x8

    .line 200
    invoke-virtual {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 212
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->d(I)V

    .line 221
    .end local v0    # "code":I
    :goto_1
    return-void

    .line 204
    .restart local v0    # "code":I
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "9"

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 205
    if-eqz v1, :cond_1

    .line 207
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 208
    const/16 v2, 0x9

    .line 207
    invoke-virtual {v1, v2, v3, v4}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->finish()V

    .line 215
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    sget-object v2, Lcom/pengyouwan/sdk/activity/RegisterActivity;->x:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    goto :goto_1

    .line 218
    .end local v0    # "code":I
    :cond_4
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->finish()V

    .line 219
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h;

    sget-object v2, Lcom/pengyouwan/sdk/activity/RegisterActivity;->x:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "pyw_activity_register"

    .line 63
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->g()V

    .line 66
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->i()V

    .line 67
    return-void
.end method
