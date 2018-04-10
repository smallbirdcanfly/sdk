.class Lcom/pengyouwan/sdk/ui/b/a$a;
.super Landroid/os/CountDownTimer;
.source "BindMobilePhoneCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/a;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/b/a;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 401
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    .line 402
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 403
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/content/Context;

    move-result-object v2

    .line 415
    const-string v3, "pyw_bindphone_getcode"

    .line 414
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 418
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 407
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u540e\u91cd\u53d1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/a;->a(Lcom/pengyouwan/sdk/ui/b/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$a;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/a;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    .line 409
    const-string v2, "pyw_common_hint_color"

    .line 408
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    return-void
.end method
