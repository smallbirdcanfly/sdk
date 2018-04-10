.class Lcom/pyw/b/b$6;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Lcom/pyw/open/ILogoutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pyw/b/b;

.field private final synthetic b:Lcom/pyw/open/ILogoutCallback;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/ILogoutCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$6;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$6;->b:Lcom/pyw/open/ILogoutCallback;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/pyw/b/b$6;->b:Lcom/pyw/open/ILogoutCallback;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/pyw/b/b$6;->b:Lcom/pyw/open/ILogoutCallback;

    invoke-interface {v0}, Lcom/pyw/open/ILogoutCallback;->onLogout()V

    .line 646
    :cond_0
    return-void
.end method
