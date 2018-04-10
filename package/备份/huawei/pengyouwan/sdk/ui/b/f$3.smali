.class Lcom/pengyouwan/sdk/ui/b/f$3;
.super Lcom/pengyouwan/sdk/g/h;
.source "CommonCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/f;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/f;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/f$3;->a:Lcom/pengyouwan/sdk/ui/b/f;

    .line 344
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 348
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/h$a;

    .line 349
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/h$a;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$3;->a:Lcom/pengyouwan/sdk/ui/b/f;

    const/16 v2, 0x1115

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->b(Lcom/pengyouwan/sdk/ui/b/f;I)V

    .line 352
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$3;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->a(Lcom/pengyouwan/sdk/ui/b/f;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$3;->a:Lcom/pengyouwan/sdk/ui/b/f;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->c()I

    move-result v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->c(Lcom/pengyouwan/sdk/ui/b/f;I)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$3;->a:Lcom/pengyouwan/sdk/ui/b/f;

    const/16 v2, 0x1116

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->b(Lcom/pengyouwan/sdk/ui/b/f;I)V

    .line 357
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    const-string v1, "\u68c0\u67e5\u9a8c\u8bc1\u7801\u5931\u8d25"

    goto :goto_1
.end method
