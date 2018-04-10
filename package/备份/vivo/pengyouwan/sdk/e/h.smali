.class public Lcom/pengyouwan/sdk/e/h;
.super Lcom/pengyouwan/framework/volley/toolbox/l;
.source "SuperInitRequest.java"


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
.method public constructor <init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/pengyouwan/framework/volley/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pengyouwan/framework/volley/p$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/pengyouwan/framework/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .locals 5
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
    .line 61
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/a;->a([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "\u0000"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "parsed":Ljava/lang/String;
    const-string v2, "response"

    invoke-static {v2, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    invoke-static {p1}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/framework/volley/p;->a(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v2

    return-object v2

    .line 64
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 65
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
    .line 43
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/h;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/e/h;->a:Ljava/util/HashMap;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/h;->a:Ljava/util/HashMap;

    return-object v0
.end method
