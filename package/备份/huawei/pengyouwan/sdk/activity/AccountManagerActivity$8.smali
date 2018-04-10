.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->o()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->i(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)V

    .line 370
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$8;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->j(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->dismiss()V

    .line 371
    return-void
.end method
