.class public Lcom/pyw/entity/PluginPayResult;
.super Ljava/lang/Object;
.source "PluginPayResult.java"


# static fields
.field public static final MODE_NOMAL:S = 0x0s

.field public static final MODE_RESPONSE:S = 0x1s

.field public static final MODE_RESPONSE_NOMAL:S = 0x2s


# instance fields
.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private payResult:Lcom/pyw/open/PayResult;

.field private resultMode:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pyw/entity/PluginPayResult;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPayResult()Lcom/pyw/open/PayResult;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pyw/entity/PluginPayResult;->payResult:Lcom/pyw/open/PayResult;

    return-object v0
.end method

.method public getResultMode()S
    .locals 1

    .prologue
    .line 31
    iget-short v0, p0, Lcom/pyw/entity/PluginPayResult;->resultMode:S

    return v0
.end method

.method public setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/pyw/entity/PluginPayResult;->params:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public setPayResult(Lcom/pyw/open/PayResult;)V
    .locals 0
    .param p1, "payResult"    # Lcom/pyw/open/PayResult;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pyw/entity/PluginPayResult;->payResult:Lcom/pyw/open/PayResult;

    .line 47
    return-void
.end method

.method public setResultMode(S)V
    .locals 0
    .param p1, "resultMode"    # S

    .prologue
    .line 34
    iput-short p1, p0, Lcom/pyw/entity/PluginPayResult;->resultMode:S

    .line 35
    return-void
.end method
