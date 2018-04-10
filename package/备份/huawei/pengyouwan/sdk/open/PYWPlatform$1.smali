.class Lcom/pengyouwan/sdk/open/PYWPlatform$1;
.super Ljava/lang/Object;
.source "PYWPlatform.java"

# interfaces
.implements Lcom/pengyouwan/sdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/open/PYWPlatform;->initSDK(Landroid/app/Application;Landroid/content/Context;Lcom/pengyouwan/sdk/open/SDKConfig;Lcom/pengyouwan/sdk/open/OnSDKEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->f()V

    .line 46
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/c;->b()V

    .line 47
    return-void
.end method

.method public onBecameForeground()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->g()V

    .line 40
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/c;->c()V

    .line 41
    return-void
.end method
