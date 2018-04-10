.class public Lcom/pengyouwan/sdk/ui/a/g;
.super Lcom/pengyouwan/framework/base/b;
.source "InputPayPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/g$a;
    }
.end annotation


# instance fields
.field a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

.field private i:Landroid/app/Activity;

.field private j:Lcom/pengyouwan/sdk/ui/a/g$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/ui/a/g$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/pengyouwan/sdk/ui/a/g$a;

    .prologue
    .line 43
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 67
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/g$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/g$1;-><init>(Lcom/pengyouwan/sdk/ui/a/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    .line 134
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/g$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/g$2;-><init>(Lcom/pengyouwan/sdk/ui/a/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->b:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/g$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/g$3;-><init>(Lcom/pengyouwan/sdk/ui/a/g;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->c:Landroid/content/DialogInterface$OnDismissListener;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->setCancelable(Z)V

    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 46
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/g;->j:Lcom/pengyouwan/sdk/ui/a/g$a;

    .line 48
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/g;->b()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/g;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/g;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    const-string v1, "pyw_dialog_input_paypassword"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->setContentView(I)V

    .line 53
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    .line 54
    const-string v1, "pyw_tv_common_dialog_title"

    .line 53
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->d:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->d:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u4ea4\u6613\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    const-string v1, "pyw_iv_close"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->g:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    .line 58
    const-string v1, "pyw_tv_input_paypsd_paymoney"

    .line 57
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->e:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    .line 60
    const-string v1, "pyw_tv_input_paypsd_voucher"

    .line 59
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->f:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->i:Landroid/app/Activity;

    .line 62
    const-string v1, "pyw_gv_password"

    .line 61
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/g;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/g;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;)V

    .line 65
    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/g;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/g;)Lcom/pengyouwan/sdk/ui/a/g$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->j:Lcom/pengyouwan/sdk/ui/a/g$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->h:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c()V

    .line 132
    :cond_0
    return-void
.end method

.method protected a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    .line 161
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 165
    const/4 v2, 0x2

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/g$5;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/g$5;-><init>(Lcom/pengyouwan/sdk/ui/a/g;)V

    .line 120
    .local v1, "task":Lcom/pengyouwan/sdk/g/f;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/pengyouwan/sdk/g/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
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

    .line 123
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/text/SpannableString;)V
    .locals 4
    .param p1, "pm"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/text/SpannableString;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/g;->show()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/pengyouwan/sdk/ui/a/g$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/g$4;-><init>(Lcom/pengyouwan/sdk/ui/a/g;)V

    .line 94
    const-wide/16 v2, 0xc8

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method
