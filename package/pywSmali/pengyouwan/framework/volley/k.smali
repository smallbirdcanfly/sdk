.class public Lcom/pengyouwan/framework/volley/k;
.super Lcom/pengyouwan/framework/volley/i;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pengyouwan/framework/volley/i;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/pengyouwan/framework/volley/i;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
