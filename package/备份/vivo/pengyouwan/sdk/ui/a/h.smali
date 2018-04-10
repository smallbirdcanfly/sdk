.class public Lcom/pengyouwan/sdk/ui/a/h;
.super Lcom/pengyouwan/framework/base/b;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/text/TextWatcher;

.field private m:Landroid/widget/PopupWindow;

.field private n:Lcom/pengyouwan/sdk/entity/c;

.field private o:Landroid/widget/BaseAdapter;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/pengyouwan/sdk/ui/a/d;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 93
    .line 94
    const-string v0, "PYWTheme_Widget_Dialog"

    .line 93
    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 208
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/h$1;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    .line 95
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    const-string v1, "pyw_dialog_login_start"

    .line 95
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->setContentView(I)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->setCancelable(Z)V

    .line 98
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    .line 99
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->a()V

    .line 101
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    const/4 v2, 0x1

    .line 115
    .line 116
    const-string v0, "PYWTheme_Widget_Dialog"

    .line 115
    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 208
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/h$1;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    .line 117
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    const-string v1, "pyw_dialog_login_start"

    .line 117
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->setContentView(I)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->setCancelable(Z)V

    .line 120
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    .line 121
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    .line 122
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->a()V

    .line 124
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 128
    return-void
.end method

.method private a(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/sdk/entity/c;

    .line 418
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    const-wide/16 v0, -0x1

    .line 419
    .local v0, "delTag":J
    if-eqz v2, :cond_0

    .line 420
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pengyouwan/sdk/b/d;->c(Lcom/pengyouwan/sdk/entity/c;)J

    move-result-wide v0

    .line 421
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/ui/a/h;->a(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/h;I)J
    .locals 2

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/a/h;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 134
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    const-string v1, "pyw_btn_entergame"

    .line 134
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->i:Landroid/widget/Button;

    .line 137
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_layout_login_account"

    .line 136
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->h:Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_et_login_account"

    .line 138
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    .line 141
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_et_login_psw"

    .line 140
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    .line 142
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    const-string v1, "pyw_tv_forgetpsw_tips"

    .line 142
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->d:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_quick_regist"

    .line 144
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->f:Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    const-string v1, "pyw_tv_separated"

    .line 146
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->g:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    const-string v1, "pyw_tv_fast_regist"

    .line 148
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->e:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    const-string v1, "pyw_layout_select_account"

    .line 150
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->j:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->c()Z

    .line 160
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/b;->j()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->b()V

    .line 166
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->h()V

    .line 168
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->l()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->k()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/h$2;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 183
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/h;Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 431
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h$5;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/h$5;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 436
    .local v1, "task":Lcom/pengyouwan/sdk/g/k;
    invoke-virtual {v1, p1}, Lcom/pengyouwan/sdk/g/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/k;
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/d;->f()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    .line 205
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->j:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->f()V

    .line 272
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/h$3;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 290
    .local v1, "loginTask":Lcom/pengyouwan/sdk/g/r;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->g()V

    .line 294
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->m:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 303
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->dismiss()V

    .line 306
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v5

    .line 307
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 308
    .local v0, "accountType":I
    if-ne v0, v6, :cond_3

    .line 309
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->g()Lorg/json/JSONArray;

    move-result-object v3

    .line 310
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->g()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 312
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 313
    .local v2, "jobj":Lorg/json/JSONObject;
    new-instance v4, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 314
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v5, "account"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 315
    const-string v5, "last_buy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 316
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->a(I)V

    .line 318
    :cond_1
    new-instance v5, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    const/4 v7, 0x1

    .line 319
    const v8, 0xa005

    .line 318
    invoke-direct {v5, v6, v4, v7, v8}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 319
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/a/j;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 320
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/pengyouwan/sdk/ui/a/i;

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/pengyouwan/sdk/ui/a/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/a/i;->show()V

    .line 322
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v5, Lcom/pengyouwan/sdk/ui/a/i;

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/pengyouwan/sdk/ui/a/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/a/i;->show()V

    goto :goto_0

    .line 328
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    new-instance v5, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v7

    .line 329
    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v7

    .line 330
    const v8, 0xa004

    .line 328
    invoke-direct {v5, v6, v7, v9, v8}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 330
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->o:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->a:Landroid/app/Activity;

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 358
    return-void
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->q:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 367
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 373
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 375
    const-string v3, "pyw_view_account_list"

    .line 374
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 375
    const/4 v3, 0x0

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v2

    .line 377
    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 376
    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->m:Landroid/widget/PopupWindow;

    .line 378
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 379
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->m:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pyw_list_accounts"

    .line 380
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->p:Landroid/widget/ListView;

    .line 382
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/pengyouwan/sdk/ui/a/h$a;-><init>(Lcom/pengyouwan/sdk/ui/a/h;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->o:Landroid/widget/BaseAdapter;

    .line 383
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h;->o:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 384
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h;->p:Landroid/widget/ListView;

    new-instance v2, Lcom/pengyouwan/sdk/ui/a/h$4;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/a/h$4;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 400
    return-void
.end method

.method private i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/d;->e()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/ui/a/h;)Z
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->d()V

    return-void
.end method

.method private j()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 534
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "accountStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    const-string v3, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 547
    :goto_0
    return v2

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "passwordstr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    const-string v3, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 544
    const-string v3, "\u5bc6\u7801\u957f\u5ea6\u987b\u5927\u4e8e6\u4f4d"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private k()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->k:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h$6;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/h$6;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->k:Landroid/text/TextWatcher;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->k:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->l:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h$7;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/h$7;-><init>(Lcom/pengyouwan/sdk/ui/a/h;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->l:Landroid/text/TextWatcher;

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->l:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic l(Lcom/pengyouwan/sdk/ui/a/h;)Lcom/pengyouwan/sdk/entity/c;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->n:Lcom/pengyouwan/sdk/entity/c;

    return-object v0
.end method

.method static synthetic m(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->b()V

    return-void
.end method

.method static synthetic n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->g()V

    return-void
.end method

.method static synthetic p(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/h;->e()V

    return-void
.end method

.method static synthetic q(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h;->k:Landroid/text/TextWatcher;

    return-object v0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/base/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
