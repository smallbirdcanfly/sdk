.class Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;
.super Lcom/pengyouwan/sdk/g/n;
.source "AccountManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    .line 142
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 4
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/16 v3, 0x2003

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/n$a;

    .line 146
    .local v0, "response":Lcom/pengyouwan/sdk/g/n$a;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/n$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/n$a;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;Ljava/util/ArrayList;)V

    .line 148
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    const/16 v2, 0x2004

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v1, v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    .line 152
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/n$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/n$a;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string v1, "\u83b7\u53d6\u8d26\u53f7\u5217\u8868\u5931\u8d25"

    goto :goto_1

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/AccountManagerActivity$1;->a:Lcom/pengyouwan/sdk/activity/AccountManagerActivity;

    invoke-static {v1, v3}, Lcom/pengyouwan/sdk/activity/AccountManagerActivity;->a(Lcom/pengyouwan/sdk/activity/AccountManagerActivity;I)V

    goto :goto_0
.end method
