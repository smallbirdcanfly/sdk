.class Lcom/pengyouwan/sdk/ui/a/h$3;
.super Lcom/pengyouwan/sdk/g/r;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$3;->a:Lcom/pengyouwan/sdk/ui/a/h;

    .line 272
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 2
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 275
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/r$a;

    .line 276
    .local v0, "response":Lcom/pengyouwan/sdk/g/r$a;
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$3;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->o(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 278
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/r$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$3;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->p(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 286
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$3;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->o(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 287
    return-void

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/r$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/r$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 282
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    const-string v1, "\u767b\u5f55\u5931\u8d25"

    goto :goto_1
.end method
