.class Lcom/pengyouwan/sdk/ui/b/l$3;
.super Lcom/pengyouwan/sdk/g/u;
.source "ResetAccountPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/l;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/l;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/l$3;->a:Lcom/pengyouwan/sdk/ui/b/l;

    .line 325
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 329
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/u$a;

    .line 330
    .local v0, "response":Lcom/pengyouwan/sdk/g/u$a;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/u$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$3;->a:Lcom/pengyouwan/sdk/ui/b/l;

    const v2, 0xd004

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->b(Lcom/pengyouwan/sdk/ui/b/l;I)V

    .line 333
    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$3;->a:Lcom/pengyouwan/sdk/ui/b/l;

    const v2, 0xd003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->b(Lcom/pengyouwan/sdk/ui/b/l;I)V

    .line 336
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/u$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
