.class Lcom/pengyouwan/sdk/d/c$2;
.super Lcom/pengyouwan/sdk/g/p;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/d/c;->b()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/c$2;->a:Lcom/pengyouwan/sdk/d/c;

    .line 104
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 106
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/p$a;

    .line 107
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/p$a;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/p$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c$2;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {v2}, Lcom/pengyouwan/sdk/d/c;->b(Lcom/pengyouwan/sdk/d/c;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c$2;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {v2}, Lcom/pengyouwan/sdk/d/c;->c(Lcom/pengyouwan/sdk/d/c;)V

    .line 121
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/p$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    :goto_1
    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c$2;->a:Lcom/pengyouwan/sdk/d/c;

    if-nez v1, :cond_2

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v1}, Lcom/pengyouwan/sdk/d/c;->a(Lcom/pengyouwan/sdk/d/c;Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "msg":Ljava/lang/String;
    :cond_3
    move-object v2, v1

    .line 122
    goto :goto_1
.end method
