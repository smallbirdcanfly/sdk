.class Lcom/pengyouwan/sdk/ui/a/i$4;
.super Lcom/pengyouwan/sdk/g/b;
.source "LoginFromPassnoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/i;->g()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i$4;->a:Lcom/pengyouwan/sdk/ui/a/i;

    .line 437
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 441
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/b$a;

    .line 442
    .local v0, "response":Lcom/pengyouwan/sdk/g/b$a;
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$4;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/b$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/b$a;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i$4;->a:Lcom/pengyouwan/sdk/ui/a/i;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/i;->i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1007

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 446
    :cond_2
    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    goto :goto_1
.end method
