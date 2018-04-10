.class public Lcom/pengyouwan/framework/volley/toolbox/l;
.super Lcom/pengyouwan/framework/volley/n;
.source "StringRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pengyouwan/framework/volley/n",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/pengyouwan/framework/volley/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 44
    .local p3, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/pengyouwan/framework/volley/n;-><init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 45
    iput-object p3, p0, Lcom/pengyouwan/framework/volley/toolbox/l;->a:Lcom/pengyouwan/framework/volley/p$b;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V
    .locals 1
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
    .line 56
    .local p2, "listener":Lcom/pengyouwan/framework/volley/p$b;, "Lcom/pengyouwan/framework/volley/p$b<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/pengyouwan/framework/volley/toolbox/l;-><init>(ILjava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/p;
    .locals 4
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
    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    iget-object v3, p1, Lcom/pengyouwan/framework/volley/j;->c:Ljava/util/Map;

    invoke-static {v3}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/pengyouwan/framework/volley/toolbox/f;->a(Lcom/pengyouwan/framework/volley/j;)Lcom/pengyouwan/framework/volley/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/framework/volley/p;->a(Ljava/lang/Object;Lcom/pengyouwan/framework/volley/b$a;)Lcom/pengyouwan/framework/volley/p;

    move-result-object v2

    return-object v2

    .line 77
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/pengyouwan/framework/volley/j;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/pengyouwan/framework/volley/n;->c()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/l;->a:Lcom/pengyouwan/framework/volley/p$b;

    .line 63
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/l;->a:Lcom/pengyouwan/framework/volley/p$b;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/l;->a:Lcom/pengyouwan/framework/volley/p$b;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/volley/p$b;->onResponse(Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void
.end method
