.class public Lcom/pengyouwan/sdk/open/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# instance fields
.field private channel:Ljava/lang/String;

.field private channel_code:Ljava/lang/String;

.field private departmentCode:Ljava/lang/String;

.field private gameKey:Ljava/lang/String;

.field private payment:Ljava/lang/String;

.field private promo:Ljava/lang/String;

.field private wxAppID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->channel_code:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartmentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->departmentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGameKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->gameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->payment:Ljava/lang/String;

    return-object v0
.end method

.method public getPromo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->promo:Ljava/lang/String;

    return-object v0
.end method

.method public getWxAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->wxAppID:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->channel:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setChannel_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel_code"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->channel_code:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDepartmentCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->departmentCode:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setGameKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameKey"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->gameKey:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPayment(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->payment:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPromo(Ljava/lang/String;)V
    .locals 0
    .param p1, "promo"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->promo:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setWxAppID(Ljava/lang/String;)V
    .locals 0
    .param p1, "wxAppID"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/pengyouwan/sdk/open/SDKConfig;->wxAppID:Ljava/lang/String;

    .line 103
    return-void
.end method
