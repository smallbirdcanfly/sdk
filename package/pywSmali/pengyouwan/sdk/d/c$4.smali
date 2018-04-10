.class Lcom/pengyouwan/sdk/d/c$4;
.super Lcom/pengyouwan/sdk/g/q;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/d/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/d/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/c$4;->a:Lcom/pengyouwan/sdk/d/c;

    .line 326
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 329
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/q$a;

    .line 330
    .local v0, "response":Lcom/pengyouwan/sdk/g/q$a;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c$4;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/c;->e(Lcom/pengyouwan/sdk/d/c;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c$4;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {v1}, Lcom/pengyouwan/sdk/d/c;->c(Lcom/pengyouwan/sdk/d/c;)V

    .line 336
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 336
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c$4;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 339
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/q$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 338
    :goto_2
    invoke-static {v2, v1}, Lcom/pengyouwan/sdk/d/c;->b(Lcom/pengyouwan/sdk/d/c;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_1

    .line 339
    :cond_3
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_2
.end method
