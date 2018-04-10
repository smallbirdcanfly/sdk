.class Lcom/pyw/b/b$3;
.super Ljava/lang/Object;
.source "PYWSDKManager.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/b/b;->a(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/volley/p$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pyw/b/b;

.field private final synthetic b:Lcom/pyw/open/IGetRoleListener;


# direct methods
.method constructor <init>(Lcom/pyw/b/b;Lcom/pyw/open/IGetRoleListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/b/b$3;->a:Lcom/pyw/b/b;

    iput-object p2, p0, Lcom/pyw/b/b$3;->b:Lcom/pyw/open/IGetRoleListener;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 597
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 598
    .local v2, "jobj":Lorg/json/JSONObject;
    const-string v3, "ack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, "ack":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/pyw/b/b$3;->b:Lcom/pyw/open/IGetRoleListener;

    invoke-interface {v3}, Lcom/pyw/open/IGetRoleListener;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v0    # "ack":I
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 605
    iget-object v3, p0, Lcom/pyw/b/b$3;->b:Lcom/pyw/open/IGetRoleListener;

    const/16 v4, 0x15

    .line 606
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-interface {v3, v4, v5}, Lcom/pyw/open/IGetRoleListener;->onFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/b/b$3;->a(Ljava/lang/String;)V

    return-void
.end method
