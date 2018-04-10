.class Lcom/pengyouwan/sdk/ui/b/l$4;
.super Lcom/pengyouwan/sdk/g/y;
.source "ResetAccountPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/l;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/l;

.field private final synthetic b:Lcom/pengyouwan/sdk/entity/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/l;Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 357
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 360
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/y$a;

    .line 361
    .local v0, "response":Lcom/pengyouwan/sdk/g/y$a;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/y$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/l;->f(Lcom/pengyouwan/sdk/ui/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->b(I)V

    .line 366
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->e(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->f(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->b:Lcom/pengyouwan/sdk/entity/c;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/l;->k(Lcom/pengyouwan/sdk/ui/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/l;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const v2, 0xd007

    invoke-virtual {v1, v2}, Lcom/pengyouwan/framework/v4/FragmentActivity;->setResult(I)V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    const v2, 0xd004

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->b(Lcom/pengyouwan/sdk/ui/b/l;I)V

    .line 372
    const-string v1, "\u89e3\u7ed1\u6210\u529f"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/l$4;->a:Lcom/pengyouwan/sdk/ui/b/l;

    const v2, 0xd003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/l;->b(Lcom/pengyouwan/sdk/ui/b/l;I)V

    .line 375
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/y$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
