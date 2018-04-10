.class Lcom/pengyouwan/sdk/ui/a/c$1;
.super Ljava/lang/Object;
.source "BindPassNoTipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 61
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->a(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 63
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 67
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/c;->dismiss()V

    .line 69
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/RegisterActivity;

    if-eq v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;

    if-ne v1, v2, :cond_1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->c(Lcom/pengyouwan/sdk/ui/a/c;)V

    .line 94
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->d(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 76
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    .line 78
    const/16 v2, 0x9

    .line 76
    invoke-virtual {v1, v3, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 80
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 87
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/c;->dismiss()V

    .line 89
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/RegisterActivity;

    if-eq v1, v2, :cond_4

    .line 90
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;

    if-ne v1, v2, :cond_2

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/c$1;->a:Lcom/pengyouwan/sdk/ui/a/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/c;->b(Lcom/pengyouwan/sdk/ui/a/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
