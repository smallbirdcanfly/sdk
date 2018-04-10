.class public Lcom/pyw/entity/UserParams;
.super Ljava/lang/Object;
.source "UserParams.java"


# instance fields
.field private agentgame:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private pay_token:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfkey:Ljava/lang/String;

.field private roleCreateTime:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private roleid:Ljava/lang/String;

.field private sdkUserID:Ljava/lang/String;

.field private sdkUsername:Ljava/lang/String;

.field private serverArea:Ljava/lang/String;

.field private serverAreaName:Ljava/lang/String;

.field private suc:Z

.field private token:Ljava/lang/String;

.field private userID:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pyw/entity/UserParams;->suc:Z

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userID"    # I
    .param p2, "sdkUserID"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "sdkUsername"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "extension"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/pyw/entity/UserParams;->userID:I

    .line 112
    iput-object p2, p0, Lcom/pyw/entity/UserParams;->sdkUserID:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/pyw/entity/UserParams;->username:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/pyw/entity/UserParams;->sdkUsername:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/pyw/entity/UserParams;->token:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/pyw/entity/UserParams;->extension:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pyw/entity/UserParams;->suc:Z

    .line 118
    return-void
.end method


# virtual methods
.method public getAgentgame()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->agentgame:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->pay_token:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->pfkey:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->roleCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->roleid:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->sdkUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->sdkUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getServerArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->serverArea:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAreaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->serverAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/pyw/entity/UserParams;->userID:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pyw/entity/UserParams;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isSuc()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/pyw/entity/UserParams;->suc:Z

    return v0
.end method

.method public setAgentgame(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentgame"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->agentgame:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->extension:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPay_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "pay_token"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->pay_token:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0
    .param p1, "pf"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->pf:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPfkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "pfkey"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->pfkey:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setRoleCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleCreateTime"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->roleCreateTime:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->roleLevel:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->roleName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRoleid(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleid"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->roleid:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSdkUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkUserID"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->sdkUserID:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSdkUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkUsername"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->sdkUsername:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setServerArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverArea"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->serverArea:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setServerAreaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverAreaName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->serverAreaName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSuc(Z)V
    .locals 0
    .param p1, "suc"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/pyw/entity/UserParams;->suc:Z

    .line 145
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->token:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setUserID(I)V
    .locals 0
    .param p1, "userID"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/pyw/entity/UserParams;->userID:I

    .line 125
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/pyw/entity/UserParams;->username:Ljava/lang/String;

    .line 161
    return-void
.end method
