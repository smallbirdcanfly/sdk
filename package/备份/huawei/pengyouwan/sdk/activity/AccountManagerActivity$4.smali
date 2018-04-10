.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->l()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->g(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/a;->dismiss()V

    .line 272
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-void

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v2, 0x2006

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    goto :goto_0

    .line 277
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 278
    const-class v2, Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    .line 277
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$4;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
