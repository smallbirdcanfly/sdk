.class Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;
.super Ljava/lang/Object;
.source "OPPOSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOSplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/oppo/OPPOSplashActivity;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/oppo/OPPOSplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;->this$0:Lcom/pyw/plugin/oppo/OPPOSplashActivity;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;->this$0:Lcom/pyw/plugin/oppo/OPPOSplashActivity;

    const-class v2, Lcom/pengyouwan/sdk/activity/LauncherActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;->this$0:Lcom/pyw/plugin/oppo/OPPOSplashActivity;

    invoke-virtual {v1, v0}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    iget-object v1, p0, Lcom/pyw/plugin/oppo/OPPOSplashActivity$1;->this$0:Lcom/pyw/plugin/oppo/OPPOSplashActivity;

    invoke-virtual {v1}, Lcom/pyw/plugin/oppo/OPPOSplashActivity;->finish()V

    .line 32
    return-void
.end method
