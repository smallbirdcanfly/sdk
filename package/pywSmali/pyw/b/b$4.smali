.class Lcom/pyw/b/b$4;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


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

.field private final synthetic b:Lcom/pyw/open/IGetRoleListener;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IGetRoleListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$4;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$4;->b:Lcom/pyw/open/IGetRoleListener;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 4
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/pyw/b/b$4;->b:Lcom/pyw/open/IGetRoleListener;

    const/16 v1, 0x15

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed,net error, volleyError message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-interface {v0, v1, v2}, Lcom/pyw/open/IGetRoleListener;->onFail(ILjava/lang/String;)V

    .line 617
    return-void
.end method
