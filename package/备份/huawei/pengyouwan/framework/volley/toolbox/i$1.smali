.class Lcom/pengyouwan/framework/volley/toolbox/i$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/pengyouwan/framework/volley/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/volley/p$b",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/volley/toolbox/i;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/volley/toolbox/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$1;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    iput-object p2, p0, Lcom/pengyouwan/framework/volley/toolbox/i$1;->b:Ljava/lang/String;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/i$1;->a:Lcom/pengyouwan/framework/volley/toolbox/i;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/i$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    return-void
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/i$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
