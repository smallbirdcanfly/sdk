.class Lcom/pyw/plugin/oppo/OPPOPlugin$1;
.super Ljava/lang/Object;
.source "OPPOPlugin.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOPlugin;->getRoleMessage(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$1;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 72
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767bdoReportUserGameInfoDatashibai\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767bdoReportUserGameInfoData\u6210\u529f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
