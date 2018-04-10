.class Lcom/pyw/plugin/oppo/OPPOPlugin$4;
.super Ljava/lang/Object;
.source "OPPOPlugin.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOPlugin;->gameExit(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/oppo/OPPOPlugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$4;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    iput-object p2, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$4;->val$context:Landroid/content/Context;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGame()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$4;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitGameProcess(Landroid/app/Activity;)V

    .line 172
    return-void
.end method
