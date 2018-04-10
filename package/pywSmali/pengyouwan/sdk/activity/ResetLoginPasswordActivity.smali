.class public Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "ResetLoginPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/content/Context;

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private x:Lcom/pengyouwan/sdk/ui/a/d;

.field private y:Z

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->t:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->u:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->v:I

    .line 64
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->w:I

    .line 71
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->y:Z

    .line 75
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->A:Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldpwd"    # Ljava/lang/String;
    .param p2, "newpwd"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(I)V

    .line 177
    new-instance v1, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;)V

    .line 194
    .local v1, "task":Lcom/pengyouwan/sdk/g/x;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/pengyouwan/sdk/g/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
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

    .line 197
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(I)V

    .line 198
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    const-string v1, "pyw_reset_pwd_title"

    .line 105
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->b(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    const-string v1, "pyw_et_reset_old"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->n:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    const-string v1, "pyw_et_reset_new"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->o:Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    const-string v1, "pyw_tv_forget_pwd"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->q:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    const-string v1, "pyw_btn_reset_modify"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->r:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    .line 112
    const-string v1, "pyw_pwd_visible_img"

    .line 111
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->z:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    .line 207
    .local v0, "currentUser":Lcom/pengyouwan/sdk/entity/c;
    new-instance v1, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v1}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 208
    .local v1, "dbUser":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 213
    :goto_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pengyouwan/sdk/b/d;->b(Lcom/pengyouwan/sdk/entity/c;)J

    .line 215
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    .line 153
    const-string v1, "\u6b63\u5728\u8bbe\u7f6e\u5bc6\u7801.."

    invoke-direct {v0, p0, v1}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 152
    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/ui/a/d;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->y:Z

    .line 160
    const-string v0, "\u4fee\u6539\u6210\u529f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 161
    const/16 v0, 0x1003

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->finish()V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->x:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1002

    if-ne p2, v0, :cond_0

    .line 221
    const/16 v0, 0x1003

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->setResult(I)V

    .line 222
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->finish()V

    .line 224
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x6

    .line 120
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->r:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 121
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    .line 123
    const-string v3, "pyw_networkunavilable"

    .line 122
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "oldText":Ljava/lang/String;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "newText":Ljava/lang/String;
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "\u8bf7\u8f93\u5165\u65e7\u5bc6\u7801"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 131
    :cond_2
    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string v2, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_4

    .line 135
    invoke-direct {p0, v1, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u5fc5\u987b\u5927\u4e8e\u516d\u4f4d\u6570"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0    # "newText":Ljava/lang/String;
    .end local v1    # "oldText":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->q:Landroid/widget/TextView;

    if-ne p1, v2, :cond_6

    .line 140
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    const-class v4, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const/16 v3, 0x1001

    .line 140
    invoke-virtual {p0, v2, v3}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->z:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->o:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->z:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->A:Z

    iget-object v5, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    invoke-static {v2, v3, v4, v5}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->A:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "pyw_activity_reset_loginpassword_landscape"

    .line 81
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->setContentView(I)V

    .line 87
    :goto_0
    iput-object p0, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->s:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->g()V

    .line 89
    return-void

    .line 85
    :cond_0
    const-string v0, "pyw_activity_reset_loginpassword_portrait"

    .line 84
    invoke-static {p0, v0}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 98
    .line 99
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
