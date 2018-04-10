.class Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/toolbox/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->b:Z

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/volley/toolbox/i$c;Z)V
    .locals 2
    .param p1, "response"    # Lcom/pengyouwan/framework/volley/toolbox/i$c;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 176
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->b:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;Lcom/pengyouwan/framework/volley/toolbox/i$c;)V

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->b(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->b(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 2
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;->a:Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 168
    :cond_0
    return-void
.end method
