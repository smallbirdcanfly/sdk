.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;
.super Lcom/pengyouwan/sdk/g/z;
.source "AccountManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 317
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/z$a;

    .line 321
    .local v0, "response":Lcom/pengyouwan/sdk/g/z$a;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/z$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string v1, "\u65b0\u5efa\u8d26\u53f7\u6210\u529f"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v2, 0x2005

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->b(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$6;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v2, 0x2003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    .line 328
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/z$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/z$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 328
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string v1, "\u521b\u5efa\u8d26\u53f7\u5931\u8d25"

    goto :goto_1
.end method
