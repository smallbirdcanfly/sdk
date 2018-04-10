.class public Lcom/pyw/plugin/excutecallback/InitCallback;
.super Ljava/lang/Object;
.source "InitCallback.java"

# interfaces
.implements Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;


# static fields
.field protected static final TAG:Ljava/lang/String; = "InitCallback"


# instance fields
.field private listener:Lcom/pyw/open/IDefListener;

.field private mManager:Lcom/pyw/b/b;


# direct methods
.method protected constructor <init>(Lcom/pyw/open/IDefListener;Lcom/pyw/b/b;)V
    .locals 0
    .param p1, "lis"    # Lcom/pyw/open/IDefListener;
    .param p2, "manager"    # Lcom/pyw/b/b;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    .line 47
    iput-object p2, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/excutecallback/InitCallback;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/InitCallback;->doNormalInit()V

    return-void
.end method

.method static synthetic access$1(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/open/IDefListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pyw/plugin/excutecallback/InitCallback;)Lcom/pyw/b/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pyw/plugin/excutecallback/InitCallback;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/InitCallback;->executeOtherPlugin()V

    return-void
.end method

.method private doBeforeInit()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v1}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/pengyouwan/sdk/e/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://g1.pyw.cn/gameurl/android/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/pyw/plugin/excutecallback/InitCallback$1;

    invoke-direct {v2, p0}, Lcom/pyw/plugin/excutecallback/InitCallback$1;-><init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V

    .line 76
    new-instance v3, Lcom/pyw/plugin/excutecallback/InitCallback$2;

    invoke-direct {v3, p0}, Lcom/pyw/plugin/excutecallback/InitCallback$2;-><init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V

    .line 58
    invoke-direct {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/e/h;-><init>(Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 84
    .local v0, "req":Lcom/pengyouwan/sdk/e/h;
    invoke-static {}, Lcom/pengyouwan/sdk/e/g;->a()Lcom/pengyouwan/sdk/e/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pengyouwan/sdk/e/g;->a(Lcom/pengyouwan/framework/volley/n;)V

    goto :goto_0
.end method

.method private doNormalInit()V
    .locals 6

    .prologue
    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "channel_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "channelId":Ljava/lang/String;
    const-string v3, "gamekey"

    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "channel_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v2

    sget-object v3, Lcom/pyw/a/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/InitCallback;->getNetworkListener()Lcom/pengyouwan/framework/volley/p$b;

    move-result-object v4

    new-instance v5, Lcom/pyw/plugin/excutecallback/InitCallback$3;

    invoke-direct {v5, p0}, Lcom/pyw/plugin/excutecallback/InitCallback$3;-><init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 111
    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v2}, Lcom/pyw/b/b;->l()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private executeOtherPlugin()V
    .locals 10

    .prologue
    .line 226
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v3, "channelJson":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v7}, Lcom/pyw/b/b;->o()Lorg/json/JSONArray;

    move-result-object v6

    .line 228
    .local v6, "sDataChannels":Lorg/json/JSONArray;
    if-eqz v6, :cond_0

    .line 229
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v5, v7, :cond_3

    .line 238
    .end local v5    # "i":I
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v2, "channelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    .line 241
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pyw/a/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    if-eqz v7, :cond_2

    .line 247
    iget-object v7, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    iget-object v8, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    invoke-virtual {v7, v2, v8}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IDefListener;)V

    .line 249
    :cond_2
    return-void

    .line 230
    .end local v2    # "channelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "i":I
    :cond_3
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 231
    .local v1, "channel":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 232
    const-string v7, "pyw"

    const-string v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    move-object v3, v1

    .line 229
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "channel":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .restart local v2    # "channelData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v4

    .line 243
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "InitCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "init error,get pywsdk.data fail.e: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNetworkListener()Lcom/pengyouwan/framework/volley/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/pyw/plugin/excutecallback/InitCallback$4;

    invoke-direct {v0, p0}, Lcom/pyw/plugin/excutecallback/InitCallback$4;-><init>(Lcom/pyw/plugin/excutecallback/InitCallback;)V

    return-object v0
.end method


# virtual methods
.method public onExecutionFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "failCode"    # I
    .param p2, "failMessage"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    invoke-virtual {v0}, Lcom/pyw/b/b;->k()V

    .line 256
    const-string v0, "InitCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExecutionFailure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->mManager:Lcom/pyw/b/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pyw/b/b;->d:Z

    .line 259
    iget-object v0, p0, Lcom/pyw/plugin/excutecallback/InitCallback;->listener:Lcom/pyw/open/IDefListener;

    invoke-interface {v0, p1, p2}, Lcom/pyw/open/IDefListener;->onFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onExecutionSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/pyw/plugin/excutecallback/InitCallback;->doBeforeInit()V

    .line 53
    return-void
.end method
