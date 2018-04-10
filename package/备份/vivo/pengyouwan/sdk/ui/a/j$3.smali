.class Lcom/pengyouwan/sdk/ui/a/j$3;
.super Lcom/pengyouwan/sdk/g/q;
.source "LoginingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/j;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/j;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/j$3;->a:Lcom/pengyouwan/sdk/ui/a/j;

    .line 306
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 310
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/q$a;

    .line 311
    .local v0, "response":Lcom/pengyouwan/sdk/g/q$a;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j$3;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/j;->g(Lcom/pengyouwan/sdk/ui/a/j;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0xa003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 316
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/j$3;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/j;->h(Lcom/pengyouwan/sdk/ui/a/j;)V

    .line 319
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/j$3;->a:Lcom/pengyouwan/sdk/ui/a/j;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_2
    invoke-static {v2, v1}, Lcom/pengyouwan/sdk/ui/a/j;->a(Lcom/pengyouwan/sdk/ui/a/j;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_1

    .line 320
    :cond_3
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_2
.end method
