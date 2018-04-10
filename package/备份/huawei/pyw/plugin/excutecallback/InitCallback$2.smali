.class Lcom/pyw/plugin/excutecallback/InitCallback$2;
.super Ljava/lang/Object;
.source "InitCallback.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/InitCallback;->doBeforeInit()V
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
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/InitCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 1
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback$2;->this$0:Lcom/pyw/plugin/excutecallback/InitCallback;

    invoke-static {v0}, Lcom/pyw/plugin/excutecallback/InitCallback;->access$0(Lcom/pyw/plugin/excutecallback/InitCallback;)V

    .line 82
    return-void
.end method
