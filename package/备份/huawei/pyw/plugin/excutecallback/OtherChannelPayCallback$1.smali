.class Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;
.super Ljava/lang/Object;
.source "OtherChannelPayCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->onExecutionSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelPayCallback;)Lcom/pyw/open/IPayListener;

    move-result-object v0

    const/16 v1, 0x15

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay failed,net error, volleyError message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
