.class public Lcom/pengyouwan/framework/volley/l;
.super Lcom/pengyouwan/framework/volley/u;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pengyouwan/framework/volley/u;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/j;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/pengyouwan/framework/volley/j;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/u;-><init>(Lcom/pengyouwan/framework/volley/j;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/u;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
