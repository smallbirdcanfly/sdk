.class Lcom/pyw/plugin/excutecallback/InitCallback$3;
.super Ljava/lang/Object;
.source "InitCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/InitCallback;->doNormalInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/excutecallback/InitCallback;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/InitCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 101
    const-string v0, "InitCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init failed,net error, volleyError message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;

    move-result-object v0

    const/16 v1, 0x15

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init failed,net error, volleyError message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pyw/b/b;->d:Z

    .line 107
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback$3;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->k()V

    .line 108
    return-void
.end method
