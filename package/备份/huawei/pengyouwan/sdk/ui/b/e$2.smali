.class Lcom/pengyouwan/sdk/ui/b/e$2;
.super Lcom/pengyouwan/sdk/g/d;
.source "BindPasscardPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/e;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/e;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/e$2;->a:Lcom/pengyouwan/sdk/ui/b/e;

    .line 153
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/d$a;

    .line 157
    .local v0, "bindPassportResponse":Lcom/pengyouwan/sdk/g/d$a;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/d$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e$2;->a:Lcom/pengyouwan/sdk/ui/b/e;

    const/16 v2, 0x2004

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/e;->b(Lcom/pengyouwan/sdk/ui/b/e;I)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e$2;->a:Lcom/pengyouwan/sdk/ui/b/e;

    const/16 v2, 0x2003

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/e;->b(Lcom/pengyouwan/sdk/ui/b/e;I)V

    .line 162
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/d$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/d$a;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u7ed1\u5b9a\u5931\u8d25"

    goto :goto_1
.end method
