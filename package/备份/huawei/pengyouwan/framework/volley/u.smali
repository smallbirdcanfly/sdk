.class public Lcom/pengyouwan/framework/volley/u;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final a:Lcom/pengyouwan/framework/volley/j;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/u;->a:Lcom/pengyouwan/framework/volley/j;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/volley/j;)V
    .locals 0
    .param p1, "response"    # Lcom/pengyouwan/framework/volley/j;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/u;->a:Lcom/pengyouwan/framework/volley/j;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/u;->a:Lcom/pengyouwan/framework/volley/j;

    .line 48
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0
    .param p1, "networkTimeMs"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/pengyouwan/framework/volley/u;->b:J

    .line 52
    return-void
.end method
