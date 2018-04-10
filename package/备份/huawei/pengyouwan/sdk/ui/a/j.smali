.class public Lcom/pengyouwan/sdk/ui/a/j;
.super Lcom/pengyouwan/framework/base/b;
.source "LoginingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/j$a;
    }
.end annotation


# static fields
.field private static h:I


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private final c:I

.field private final d:I

.field private e:Lcom/pengyouwan/sdk/entity/c;

.field private f:Lcom/pengyouwan/sdk/entity/c;

.field private g:Landroid/os/Handler;

.field private i:Z

.field private j:Z

.field private k:Landroid/widget/Button;

.field private l:Lcom/pengyouwan/sdk/ui/a/d;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/pengyouwan/sdk/ui/a/j;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "user"    # Lcom/pengyouwan/sdk/entity/c;
    .param p3, "isGoLogin"    # Z
    .param p4, "changeTo"    # I

    .prologue
    const/4 v2, 0x0

    .line 82
    .line 83
    const-string v0, "PYWTheme_Widget_Dialog"

    .line 82
    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 53
    const v0, 0xa001

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->c:I

    .line 55
    const v0, 0xa003

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->d:I

    .line 63
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->i:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->j:Z

    .line 166
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/j$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/j$1;-><init>(Lcom/pengyouwan/sdk/ui/a/j;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->m:Landroid/view/View$OnClickListener;

    .line 84
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    const-string v1, "pyw_dialog_logining"

    .line 84
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/j;->setContentView(I)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/a/j;->setCancelable(Z)V

    .line 87
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/j$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/j$a;-><init>(Lcom/pengyouwan/sdk/ui/a/j;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->g:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    .line 89
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/j;->e:Lcom/pengyouwan/sdk/entity/c;

    .line 90
    sput p4, Lcom/pengyouwan/sdk/ui/a/j;->h:I

    .line 91
    iput-boolean p3, p0, Lcom/pengyouwan/sdk/ui/a/j;->i:Z

    .line 92
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->b()V

    .line 93
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/pengyouwan/sdk/ui/a/j;->h:I

    return v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/a/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 243
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->dismiss()V

    .line 246
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_extra_erro"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 249
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 114
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 116
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    .line 118
    const-string v3, "PYWThem_LoginningDialog_Anim"

    .line 117
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 120
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 121
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 122
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 123
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    const-string v2, "pyw_btn_dialog_switch"

    .line 124
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/a/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->k:Landroid/widget/Button;

    .line 126
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    const-string v2, "pyw_tv_account_name"

    .line 126
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/a/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->b:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->k:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    .line 131
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 132
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->k:Landroid/widget/Button;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->h()V

    .line 147
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->e:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->f:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->e:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->g()V

    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->dismiss()V

    .line 194
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 195
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    const-class v3, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->h()V

    .line 221
    return-void

    .line 200
    :cond_1
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    invoke-static {}, Lcom/pengyouwan/sdk/utils/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/c;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/pengyouwan/sdk/ui/a/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/c;->show()V

    .line 203
    invoke-static {}, Lcom/pengyouwan/sdk/utils/d;->b()V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    if-eq v2, v3, :cond_3

    .line 206
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    :cond_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->d()V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    if-eq v2, v3, :cond_5

    .line 212
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/pengyouwan/sdk/activity/RegisterActivity;

    if-ne v2, v3, :cond_6

    .line 213
    :cond_5
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->g()V

    .line 216
    :cond_6
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->d()V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 227
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "sdk_extra_user"

    .line 229
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 230
    const/4 v0, 0x1

    .line 231
    .local v0, "code":I
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 233
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 234
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pengyouwan/sdk/d/h;->a(Z)V

    .line 235
    return-void
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/j;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->j:Z

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j;->a:Landroid/app/Activity;

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 256
    return-void
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/a/j;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->i:Z

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->i()V

    return-void
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->j:Z

    .line 266
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->g:Landroid/os/Handler;

    const v1, 0xa001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/j;->l:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 270
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pengyouwan/sdk/ui/a/j$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/j$2;-><init>(Lcom/pengyouwan/sdk/ui/a/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    .local v0, "countThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 297
    return-void
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->f()V

    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    .line 303
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/j;->g:Landroid/os/Handler;

    const v4, 0xa001

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 306
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/j$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/j$3;-><init>(Lcom/pengyouwan/sdk/ui/a/j;)V

    .line 325
    .local v1, "task":Lcom/pengyouwan/sdk/g/q;
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/j;->e:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-virtual {v1, v3, v4, v5}, Lcom/pengyouwan/sdk/g/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/q;
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 329
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

    .line 330
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

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/ui/a/j;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->e()V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->f()V

    .line 156
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/j;->dismiss()V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/j;->c()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0xa001
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
