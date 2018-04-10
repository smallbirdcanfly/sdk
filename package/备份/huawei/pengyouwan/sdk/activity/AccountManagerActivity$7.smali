.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;
.super Ljava/lang/Object;
.source "AccountManagerActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->n()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->d(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 354
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->h(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Lcom/pengyouwan/sdk/ui/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->dismiss()V

    .line 355
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const v1, 0xaa10

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->setResult(I)V

    .line 356
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$7;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->finish()V

    .line 357
    return-void
.end method
