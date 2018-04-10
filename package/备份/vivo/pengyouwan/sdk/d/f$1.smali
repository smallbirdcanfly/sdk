.class Lcom/pengyouwan/sdk/d/f$1;
.super Lcom/pengyouwan/sdk/g/w;
.source "SDKControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/d/f;->a(Landroid/app/Activity;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/util/Map;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/f$1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/pengyouwan/sdk/d/f$1;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/pengyouwan/sdk/d/f$1;->c:I

    .line 271
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 4
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 274
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->m()V

    .line 275
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/f$1;->a:Ljava/util/Map;

    const-string v2, "product_extra"

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/f$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pengyouwan/sdk/d/f$1;->a:Ljava/util/Map;

    iget v3, p0, Lcom/pengyouwan/sdk/d/f$1;->c:I

    .line 276
    invoke-static {v1, v2, v3}, Lcom/pengyouwan/sdk/activity/ChargeCenterActivity;->a(Landroid/content/Context;Ljava/util/Map;I)Landroid/content/Intent;

    move-result-object v0

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/f$1;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
