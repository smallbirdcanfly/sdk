.class Lcom/pengyouwan/sdk/ui/b/i$2;
.super Lcom/pengyouwan/sdk/g/v;
.source "ForgetLoginPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/i;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/i;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/i$2;->a:Lcom/pengyouwan/sdk/ui/b/i;

    .line 245
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 249
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/v$a;

    .line 250
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/v$a;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i$2;->a:Lcom/pengyouwan/sdk/ui/b/i;

    const/16 v2, 0x1002

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/i;->b(Lcom/pengyouwan/sdk/ui/b/i;I)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/i$2;->a:Lcom/pengyouwan/sdk/ui/b/i;

    const/16 v2, 0x1003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/i;->b(Lcom/pengyouwan/sdk/ui/b/i;I)V

    .line 255
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/v$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/v$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_2
    const-string v1, "\u91cd\u8bbe\u5931\u8d25"

    goto :goto_1
.end method
