.class public Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;
.super Ljava/lang/Object;
.source "OtherChannelLoginCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# instance fields
.field private callback:Lcom/pyw/open/IUserListener;

.field private mManager:Lcom/pyw/b/b;

.field private sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

.field private sPayParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/pyw/b/b;Lcom/pyw/plugin/PYWPlugin;Lcom/pyw/open/IUserListener;)V
    .locals 0
    .param p1, "m"    # Lcom/pyw/b/b;
    .param p2, "p"    # Lcom/pyw/plugin/PYWPlugin;
    .param p3, "callback"    # Lcom/pyw/open/IUserListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    .line 44
    iput-object p2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    .line 45
    iput-object p3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->logout()V

    return-void
.end method

.method static synthetic access$1(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)Lcom/pyw/open/IUserListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;Lcom/pyw/entity/UserParams;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->onNetworksuccessInternal(Lcom/pyw/entity/UserParams;Lorg/json/JSONObject;)V

    return-void
.end method

.method private getNetworkSuccessListener(Lcom/pyw/entity/UserParams;)Lcom/pengyouwan/framework/volley/p$b;
    .locals 1
    .param p1, "userData"    # Lcom/pyw/entity/UserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pyw/entity/UserParams;",
            ")",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$2;-><init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;Lcom/pyw/entity/UserParams;)V

    return-object v0
.end method

.method private logout()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$3;

    invoke-direct {v2, p0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$3;-><init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/ILogoutListener;)V

    .line 175
    :cond_0
    return-void
.end method

.method private onNetworksuccessInternal(Lcom/pyw/entity/UserParams;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "userData"    # Lcom/pyw/entity/UserParams;
    .param p2, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    const-string v5, "cp_uid"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "cpUID":Ljava/lang/String;
    const-string v5, "account"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "account":Ljava/lang/String;
    const-string v5, "token"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "token":Ljava/lang/String;
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 192
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v6, "cp_uid"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v6, "account"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v6, "token"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getSdkUserID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "channel_uid_is_null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    const-string v5, "channel_uid"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/pyw/b/b;->c:Ljava/lang/String;

    .line 199
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v6, "channel_uid"

    const-string v7, "channel_uid"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    new-instance v4, Lcom/pyw/open/PYWUser;

    invoke-direct {v4}, Lcom/pyw/open/PYWUser;-><init>()V

    .line 205
    .local v4, "user":Lcom/pyw/open/PYWUser;
    invoke-virtual {v4, v1}, Lcom/pyw/open/PYWUser;->setUserId(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v4, v3}, Lcom/pyw/open/PYWUser;->setToken(Ljava/lang/String;)V

    .line 207
    sput-object v4, Lcom/pyw/b/b;->b:Lcom/pyw/open/PYWUser;

    .line 210
    new-instance v2, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v2}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 211
    .local v2, "pywSdkUser":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v2, v1}, Lcom/pengyouwan/sdk/entity/c;->a(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v0}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v3}, Lcom/pengyouwan/sdk/entity/c;->d(Ljava/lang/String;)V

    .line 214
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/pengyouwan/sdk/entity/c;->b(I)V

    .line 215
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;)V

    .line 217
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    if-eqz v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    invoke-interface {v5, v4}, Lcom/pyw/open/IUserListener;->onLoginSuccess(Lcom/pyw/open/PYWUser;)V

    .line 220
    :cond_1
    return-void

    .line 201
    .end local v2    # "pywSdkUser":Lcom/pengyouwan/sdk/entity/c;
    .end local v4    # "user":Lcom/pyw/open/PYWUser;
    :cond_2
    iget-object v5, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v6, "channel_uid"

    invoke-virtual {p1}, Lcom/pyw/entity/UserParams;->getSdkUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 1
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->logout()V

    .line 158
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-eqz p1, :cond_4

    instance-of v2, p1, Lcom/pyw/entity/UserParams;

    if-eqz v2, :cond_4

    .line 53
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v2, v3}, Lcom/pyw/b/b;->a(Lcom/pyw/plugin/PYWPlugin;)V

    move-object v1, p1

    .line 54
    check-cast v1, Lcom/pyw/entity/UserParams;

    .line 56
    .local v1, "userData":Lcom/pyw/entity/UserParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "pywLoginParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "gameid"

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v3}, Lcom/pyw/b/b;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "gamekey"

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v3}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "channel_id"

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v3}, Lcom/pyw/b/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "channel_uid"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getSdkUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "channel_token"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getAgentgame()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    const-string v2, "agentgame"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getAgentgame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->n()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    .line 67
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    .line 69
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->mManager:Lcom/pyw/b/b;

    iget-object v3, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;)V

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v3, "pf"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getPf()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v3, "pfkey"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getPfkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v3, "pay_token"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getPay_token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->sPayParams:Ljava/util/HashMap;

    const-string v3, "channel_token"

    invoke-virtual {v1}, Lcom/pyw/entity/UserParams;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v2

    .line 77
    sget-object v3, Lcom/pyw/a/a;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->getNetworkSuccessListener(Lcom/pyw/entity/UserParams;)Lcom/pengyouwan/framework/volley/p$b;

    move-result-object v4

    .line 78
    new-instance v5, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;

    invoke-direct {v5, p0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback$1;-><init>(Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;)V

    .line 76
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    goto/16 :goto_0

    .line 94
    .end local v0    # "pywLoginParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "userData":Lcom/pyw/entity/UserParams;
    :cond_4
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->logout()V

    .line 95
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/OtherChannelLoginCallback;->callback:Lcom/pyw/open/IUserListener;

    const/16 v3, 0x14

    .line 97
    const-string v4, "login callback params error!"

    .line 96
    invoke-interface {v2, v3, v4}, Lcom/pyw/open/IUserListener;->onLoginFail(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
