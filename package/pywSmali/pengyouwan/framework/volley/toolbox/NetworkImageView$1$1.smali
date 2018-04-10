.class Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;

.field private final synthetic b:Lcom/pengyouwan/framework/volley/toolbox/i$c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;Lcom/pengyouwan/framework/volley/toolbox/i$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;->b:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;->b:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V

    .line 181
    return-void
.end method
