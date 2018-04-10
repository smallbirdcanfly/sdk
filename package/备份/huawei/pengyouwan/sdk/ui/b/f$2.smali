.class Lcom/pengyouwan/sdk/ui/b/f$2;
.super Lcom/pengyouwan/sdk/g/o;
.source "CommonCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/f;->x()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/f$2;->a:Lcom/pengyouwan/sdk/ui/b/f;

    .line 255
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 259
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/o$a;

    .line 260
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/o$a;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/f$2;->a:Lcom/pengyouwan/sdk/ui/b/f;

    const/16 v2, 0x1112

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/f;->b(Lcom/pengyouwan/sdk/ui/b/f;I)V

    .line 264
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 264
    :goto_0
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 268
    :cond_0
    return-void

    .line 265
    :cond_1
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25"

    goto :goto_0
.end method
