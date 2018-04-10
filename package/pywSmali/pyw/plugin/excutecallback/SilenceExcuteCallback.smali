.class public Lcom/pyw/plugin/excutecallback/SilenceExcuteCallback;
.super Ljava/lang/Object;
.source "SilenceExcuteCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    return-void
.end method
