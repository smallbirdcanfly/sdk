.class Lcom/pyw/b/b$2;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pyw/b/b;

.field private final synthetic b:Lcom/pyw/open/IPayListener;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IPayListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$2;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$2;->b:Lcom/pyw/open/IPayListener;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/pyw/b/b$2;->b:Lcom/pyw/open/IPayListener;

    const/16 v1, 0x15

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay failed,net error, volleyError message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IPayListener;->onPayFail(ILjava/lang/String;)V

    .line 452
    return-void
.end method
