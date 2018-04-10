.class Lcom/pyw/b/b$5;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pyw/b/b;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$5;->a:Lcom/pyw/b/b;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 632
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 626
    return-void
.end method
