.class public Lcom/pengyouwan/sdk/activity/BindAccountActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "BindAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private n:Lcom/pengyouwan/sdk/ui/a/d;

.field private final o:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/EditText;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/ImageView;

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 38
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->o:I

    .line 40
    const/16 v0, 0x2003

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->q:I

    .line 42
    const/16 v0, 0x2004

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->r:I

    .line 44
    const/16 v0, 0x2006

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->s:I

    .line 46
    const/16 v0, 0x2005

    iput v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->t:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->y:Z

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/BindAccountActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(I)V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 91
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "\u7ed1\u5b9a\u6e38\u620f\u8d26\u53f7"

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->b(Ljava/lang/String;)V

    .line 121
    const-string v0, "pyw_et_login_account"

    .line 120
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->u:Landroid/widget/EditText;

    .line 123
    const-string v0, "pyw_et_login_psw"

    .line 122
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->v:Landroid/widget/EditText;

    .line 124
    const-string v0, "pyw_btn_login"

    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->w:Landroid/view/View;

    .line 126
    const-string v0, "pyw_pwd_visible_img"

    .line 125
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->x:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    .line 133
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    .line 134
    .local v3, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "userName":Ljava/lang/String;
    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "pwd":Ljava/lang/String;
    new-instance v0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/BindAccountActivity;)V

    .line 154
    .local v0, "bindPassportTask":Lcom/pengyouwan/sdk/g/c;
    :try_start_0
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5, v4}, Lcom/pengyouwan/sdk/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v5, 0x2003

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(I)V

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/b;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/b;-><init>(Landroid/app/Activity;)V

    .line 164
    .local v0, "dialog":Lcom/pengyouwan/sdk/ui/a/b;
    new-instance v1, Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;-><init>(Lcom/pengyouwan/sdk/activity/BindAccountActivity;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/b;->a(Lcom/pengyouwan/sdk/c/c;)V

    .line 177
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/b;->show()V

    .line 178
    return-void
.end method

.method private l()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "accountStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 205
    :goto_0
    return v2

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "passwordstr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_2

    .line 202
    const-string v3, "\u5bc6\u7801\u957f\u5ea6\u987b\u5927\u4e8e6\u4f4d"

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    :pswitch_0
    return-void

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    .line 99
    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->n:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->g()V

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->g()V

    .line 109
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->finish()V

    goto :goto_0

    .line 112
    :pswitch_4
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->g()V

    .line 113
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->k()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public c(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 183
    :pswitch_0
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(I)V

    .line 184
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->j()V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x2005
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->x:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->x:Landroid/widget/ImageView;

    .line 212
    iget-boolean v2, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->y:Z

    .line 211
    invoke-static {v0, v1, v2, p0}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->y:Z

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->w:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/16 v0, 0x2005

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->b(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 60
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 63
    const-string v5, "pyw_activity_bind_account"

    .line 62
    invoke-static {p0, v5}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 63
    const/4 v6, 0x0

    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "view":Landroid/view/View;
    const-string v4, "pyw_layout_content"

    .line 64
    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "v":Landroid/view/View;
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const/high16 v4, 0x429c0000    # 78.0f

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 68
    .local v0, "size":I
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 69
    .local v1, "top":I
    invoke-virtual {v2, v0, v1, v0, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    const-string v4, "pyw_view_marginview"

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 72
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    const/high16 v6, 0x41880000    # 17.0f

    invoke-static {p0, v6}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v6

    .line 72
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :goto_0
    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->i()V

    .line 85
    return-void

    .line 75
    .end local v0    # "size":I
    .end local v1    # "top":I
    :cond_0
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 76
    .restart local v0    # "size":I
    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 77
    .restart local v1    # "top":I
    invoke-virtual {v2, v0, v1, v0, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    const-string v4, "pyw_view_marginview"

    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 80
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {p0, v6}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v6

    .line 80
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
