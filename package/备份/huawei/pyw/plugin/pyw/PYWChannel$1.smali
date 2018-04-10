.class Lcom/pyw/plugin/pyw/PYWChannel$1;
.super Ljava/lang/Object;
.source "PYWChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/pyw/PYWChannel;->login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/pyw/PYWChannel;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/pyw/PYWChannel;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/pyw/PYWChannel$1;->this$0:Lcom/pyw/plugin/pyw/PYWChannel;

    iput-object p2, p0, Lcom/pyw/plugin/pyw/PYWChannel$1;->val$context:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pyw/plugin/pyw/PYWChannel$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/open/PYWPlatform;->openLogin(Landroid/app/Activity;)V

    .line 71
    return-void
.end method
