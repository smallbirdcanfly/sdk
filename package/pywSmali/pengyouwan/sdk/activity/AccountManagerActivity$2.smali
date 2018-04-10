.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->j()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 206
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/a;->dismiss()V

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->c(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 214
    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-virtual {v2, v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/ResetAccountPwdUnBindAccountActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 221
    .local v1, "intent1":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 224
    .end local v1    # "intent1":Landroid/content/Intent;
    :pswitch_3
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$2;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->e(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
