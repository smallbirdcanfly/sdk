.class public Lcom/pyw/open/PayParams;
.super Ljava/lang/Object;
.source "PayParams.java"


# instance fields
.field private chargeType:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private orderID:Ljava/lang/String;

.field private price:I

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverAreaName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pyw/open/PayParams;->chargeType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pyw/open/PayParams;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pyw/open/PayParams;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/pyw/open/PayParams;->price:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pyw/open/PayParams;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pyw/open/PayParams;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pyw/open/PayParams;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pyw/open/PayParams;->serverAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "chargeType"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pyw/open/PayParams;->chargeType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/pyw/open/PayParams;->extension:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setOrderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderID"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/pyw/open/PayParams;->orderID:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "price"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/pyw/open/PayParams;->price:I

    .line 111
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pyw/open/PayParams;->productId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/pyw/open/PayParams;->productName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/pyw/open/PayParams;->roleName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/pyw/open/PayParams;->serverAreaName:Ljava/lang/String;

    .line 32
    return-void
.end method
