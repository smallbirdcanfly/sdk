.class Lcom/pengyouwan/sdk/d/f$2;
.super Lcom/pengyouwan/sdk/g/i;
.source "SDKControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/d/f;->a(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/i;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 4
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 315
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->m()V

    move-object v0, p1

    .line 316
    check-cast v0, Lcom/pengyouwan/sdk/g/i$a;

    .line 317
    .local v0, "response":Lcom/pengyouwan/sdk/g/i$a;
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/i$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/16 v1, 0x8

    .line 319
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 331
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {v3, v2}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {v3, v2}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
