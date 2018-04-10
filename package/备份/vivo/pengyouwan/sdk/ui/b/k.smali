.class public Lcom/pengyouwan/sdk/ui/b/k;
.super Lcom/pengyouwan/framework/base/d;
.source "RegisterPwdFragment.java"


# instance fields
.field private S:Landroid/content/Context;

.field private T:Landroid/os/Bundle;

.field private U:Landroid/widget/EditText;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Landroid/widget/Button;

.field private final Y:I

.field private final Z:I

.field private final aa:I

.field private final ab:I

.field private ac:Ljava/lang/String;

.field private ad:Lcom/pengyouwan/sdk/ui/a/d;

.field private ae:Landroid/widget/ImageView;

.field private af:Z

.field private ag:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 58
    const/16 v0, 0x1110

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->Y:I

    .line 60
    const/16 v0, 0x1111

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->Z:I

    .line 62
    const/16 v0, 0x1112

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->aa:I

    .line 64
    const/16 v0, 0x1113

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ab:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->af:Z

    .line 130
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/k$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/k$1;-><init>(Lcom/pengyouwan/sdk/ui/b/k;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ag:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->X:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ac:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->V:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v1, "is_check"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->W:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    .line 102
    const-string v1, "pyw_et_register_pwd"

    .line 101
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->U:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    .line 104
    const-string v1, "pyw_btn_login"

    .line 103
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->X:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    const-string v1, "pyw_pwd_visible_img"

    .line 105
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ae:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ae:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->X:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/k;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/k;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/k;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/k;->af:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/k;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/k;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/k;)Z
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/k;->x()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->ae:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->U:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/k;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->af:Z

    return v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/k;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/k;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/k;-><init>()V

    .line 76
    .local v0, "pwdFragment":Lcom/pengyouwan/sdk/ui/b/k;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/k;->c(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method private x()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->U:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const-string v2, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 211
    :goto_0
    return v1

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 207
    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u987b\u5927\u4e8e6\u4f4d"

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private y()V
    .locals 6

    .prologue
    .line 218
    const/16 v3, 0x1111

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/k;->a(I)V

    .line 220
    :try_start_0
    new-instance v2, Lcom/pengyouwan/sdk/ui/b/k$2;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/b/k$2;-><init>(Lcom/pengyouwan/sdk/ui/b/k;)V

    .line 236
    .local v2, "regTask":Lcom/pengyouwan/sdk/g/t;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->U:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "pwd":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->ac:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/b/k;->W:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/pengyouwan/sdk/g/t;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "pwd":Ljava/lang/String;
    .end local v2    # "regTask":Lcom/pengyouwan/sdk/g/t;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v3, 0x1113

    invoke-virtual {p0, v3}, Lcom/pengyouwan/sdk/ui/b/k;->a(I)V

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private z()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v2

    .line 250
    .local v2, "user":Lcom/pengyouwan/sdk/open/User;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "sdk_extra_user"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 252
    const/4 v0, 0x1

    .line 253
    .local v0, "code":I
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 255
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 256
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/framework/v4/FragmentActivity;->finish()V

    .line 257
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 87
    const-string v2, "pyw_fragment_register_pwd_landscape"

    .line 86
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/b/k;->a(Landroid/view/View;)V

    .line 93
    return-object v0

    .line 89
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 90
    const-string v2, "pyw_fragment_register_pwd_portrait"

    .line 89
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 261
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/k;->z()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "\u6ce8\u518c\u5931\u8d25\uff0c\u672a\u5b9e\u540d\u5236\u9a8c\u8bc1\u3002"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Landroid/os/Message;)V

    .line 151
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/k;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v3

    const-string v4, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v2, v3, v4}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 162
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 163
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->S:Landroid/content/Context;

    const-class v3, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/pengyouwan/sdk/ui/b/k;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/k;->z()V

    goto :goto_0

    .line 175
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :pswitch_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ad:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1111
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 5
    .param p1, "hidden"    # Z

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->a(Z)V

    .line 114
    if-nez p1, :cond_2

    .line 115
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "tempPhone":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v4, "code"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "tempCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->T:Landroid/os/Bundle;

    const-string v4, "is_check"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "tempCheck":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->ac:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/k;->ac:Ljava/lang/String;

    .line 121
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->V:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k;->V:Ljava/lang/String;

    .line 124
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/k;->W:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/k;->W:Ljava/lang/String;

    .line 128
    .end local v0    # "tempCheck":Ljava/lang/String;
    .end local v1    # "tempCode":Ljava/lang/String;
    .end local v2    # "tempPhone":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/base/d;->b(Landroid/os/Message;)V

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/k;->y()V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1110
        :pswitch_0
    .end packed-switch
.end method
