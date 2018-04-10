.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 241
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->f(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/ui/a/a;->dismiss()V

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v4}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-virtual {v3, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v4}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 249
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-virtual {v3, v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    .end local v1    # "intent1":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    iget-object v4, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v4}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 253
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$3;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v4, 0x11

    invoke-virtual {v3, v2, v4}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
