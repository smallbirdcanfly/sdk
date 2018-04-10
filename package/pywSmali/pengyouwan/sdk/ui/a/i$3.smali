.class Lcom/pengyouwan/sdk/ui/a/i$3;
.super Lcom/pengyouwan/sdk/g/q;
.source "LoginFromPassnoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/i;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/i;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i$3;->a:Lcom/pengyouwan/sdk/ui/a/i;

    .line 409
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 412
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/q$a;

    .line 413
    .local v0, "response":Lcom/pengyouwan/sdk/g/q$a;
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$3;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$3;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_1
.end method
