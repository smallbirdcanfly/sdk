.class Lcom/pengyouwan/framework/volley/n$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/volley/n;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/n;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/volley/n;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/n$1;->a:Lcom/pengyouwan/framework/volley/n;

    iput-object p2, p0, Lcom/pengyouwan/framework/volley/n$1;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/pengyouwan/framework/volley/n$1;->c:J

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n$1;->a:Lcom/pengyouwan/framework/volley/n;

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/n;->b(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/v$a;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/n$1;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/pengyouwan/framework/volley/n$1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/framework/volley/v$a;->a(Ljava/lang/String;J)V

    .line 285
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/n$1;->a:Lcom/pengyouwan/framework/volley/n;

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/n;->b(Lcom/pengyouwan/framework/volley/n;)Lcom/pengyouwan/framework/volley/v$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/v$a;->a(Ljava/lang/String;)V

    .line 286
    return-void
.end method
