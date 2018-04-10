.class Lcom/pengyouwan/sdk/ui/b/k$2;
.super Lcom/pengyouwan/sdk/g/t;
.source "RegisterPwdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/k;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/k;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/k;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/k$2;->a:Lcom/pengyouwan/sdk/ui/b/k;

    .line 220
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 223
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/t$a;

    .line 224
    .local v0, "response":Lcom/pengyouwan/sdk/g/t$a;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/t$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k$2;->a:Lcom/pengyouwan/sdk/ui/b/k;

    const/16 v2, 0x1112

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/k;->b(Lcom/pengyouwan/sdk/ui/b/k;I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/k$2;->a:Lcom/pengyouwan/sdk/ui/b/k;

    const/16 v2, 0x1113

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/k;->b(Lcom/pengyouwan/sdk/ui/b/k;I)V

    .line 230
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/t$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/t$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 230
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    goto :goto_1
.end method
