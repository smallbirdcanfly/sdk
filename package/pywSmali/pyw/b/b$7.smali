.class Lcom/pyw/b/b$7;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IDefListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pyw/b/b;

.field private final synthetic b:Lcom/pyw/open/IDefListener;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IDefListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$7;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$7;->b:Lcom/pyw/open/IDefListener;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/pyw/b/b$7;->b:Lcom/pyw/open/IDefListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    .line 773
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 764
    invoke-static {}, Lcom/pyw/b/b;->v()Lcom/pyw/plugin/PYWPlugin;

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/b/b;->b(Lcom/pyw/plugin/PYWPlugin;)V

    .line 765
    iget-object v0, p0, Lcom/pyw/b/b$7;->b:Lcom/pyw/open/IDefListener;

    invoke-interface {v0}, Lcom/pyw/open/IDefListener;->onSuccess()V

    .line 766
    return-void
.end method
