.class public Lcom/pengyouwan/sdk/e/d;
.super Lcom/pengyouwan/framework/volley/toolbox/l;
.source "PYWStringRequest.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/pengyouwan/framework/volley/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pengyouwan/framework/volley/p$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/pengyouwan/framework/volley/toolbox/l;-><init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 29
    invoke-super {p0}, Lcom/pengyouwan/framework/volley/toolbox/l;->v()Lcom/pengyouwan/framework/volley/r;

    move-result-object v0

    .line 31
    .local v0, "policy":Lcom/pengyouwan/framework/volley/r;
    iput-object p3, p0, Lcom/pengyouwan/sdk/e/d;->a:Ljava/util/HashMap;

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .locals 3
    .param p1, "response"    # Lcom/pengyouwan/framework/volley/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/volley/j;",
            ")",
            "Lcom/pengyouwan/framework/volley/p",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    invoke-static {v2}, Lcom/pengyouwan/framework/b/d;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v1, "parsed":Ljava/lang/String;
    const-string v2, "response"

    invoke-static {v2, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    invoke-static {p1}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/framework/volley/p;->a(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v2

    return-object v2

    .line 63
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "\u89e3\u5bc6\u51fa\u9519"

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method

.method protected o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/a;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/d;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/e/d;->a:Ljava/util/HashMap;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/d;->a:Ljava/util/HashMap;

    return-object v0
.end method
