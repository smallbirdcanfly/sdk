.class public Lcom/pyw/open/PYWUser;
.super Ljava/lang/Object;
.source "PYWUser.java"


# instance fields
.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pyw/open/PYWUser;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pyw/open/PYWUser;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pyw/open/PYWUser;->token:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/pyw/open/PYWUser;->userId:Ljava/lang/String;

    .line 20
    return-void
.end method
