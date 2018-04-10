.class Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;
.super Ljava/lang/Object;
.source "OtherChannelLoginCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->onExecutionSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$0(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    .line 84
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;->this$0:Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;

    move-result-object v0

    .line 86
    const/16 v1, 0x15

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login failed,net error, volleyError message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method
