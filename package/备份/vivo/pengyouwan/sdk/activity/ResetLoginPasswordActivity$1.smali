.class Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;
.super Lcom/pengyouwan/sdk/g/x;
.source "ResetLoginPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;->a:Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;

    .line 177
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 180
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/x$a;

    .line 181
    .local v0, "response":Lcom/pengyouwan/sdk/g/x$a;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/x$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;->a:Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;

    invoke-static {v1}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;)V

    .line 184
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;->a:Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;I)V

    .line 185
    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity$1;->a:Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;->a(Lcom/pengyouwan/sdk/activity/ResetLoginPasswordActivity;I)V

    .line 188
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/x$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
