.class Lcom/pengyouwan/sdk/activity/H5Activity$a;
.super Ljava/lang/Object;
.source "H5Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/H5Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/H5Activity;


# direct methods
.method private constructor <init>(Lcom/pengyouwan/sdk/activity/H5Activity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/H5Activity$a;->a:Lcom/pengyouwan/sdk/activity/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pengyouwan/sdk/activity/H5Activity;Lcom/pengyouwan/sdk/activity/H5Activity$a;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/activity/H5Activity$a;-><init>(Lcom/pengyouwan/sdk/activity/H5Activity;)V

    return-void
.end method


# virtual methods
.method public doSdkExit()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity$a;->a:Lcom/pengyouwan/sdk/activity/H5Activity;

    const v1, 0xe004

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/activity/H5Activity;->setResult(I)V

    .line 163
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity$a;->a:Lcom/pengyouwan/sdk/activity/H5Activity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/activity/H5Activity;->finish()V

    .line 164
    return-void
.end method

.method public onChargeComplete()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 171
    return-void
.end method
