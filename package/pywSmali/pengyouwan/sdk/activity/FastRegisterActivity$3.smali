.class Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;
.super Lcom/pengyouwan/sdk/g/m;
.source "FastRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    .line 241
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 7
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 244
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/m$a;

    .line 245
    .local v0, "response":Lcom/pengyouwan/sdk/g/m$a;
    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v3}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->i(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/view/View;)V

    .line 249
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 250
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 251
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->finish()V

    .line 252
    invoke-static {}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->g()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->j(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    .line 265
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 256
    .restart local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->g()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    .line 257
    const/4 v5, 0x0

    const v6, 0xa004

    .line 256
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 257
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    .line 264
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$3;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v2}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->k(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 261
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/m$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_2
    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_3
    const-string v2, "\u767b\u5f55\u5931\u8d25"

    goto :goto_2
.end method
