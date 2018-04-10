.class Lcom/pyw/plugin/oppo/OPPOPlugin$5;
.super Ljava/lang/Object;
.source "OPPOPlugin.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/oppo/OPPOPlugin;->getTokenAndSsoid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/oppo/OPPOPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$5;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    const-string v5, "px"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u53d6tokenAndSsoid\u6210\u529f\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "json":Lorg/json/JSONObject;
    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "token":Ljava/lang/String;
    const-string v5, "ssoid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "ssoid":Ljava/lang/String;
    new-instance v4, Lcom/pyw/entity/UserParams;

    invoke-direct {v4}, Lcom/pyw/entity/UserParams;-><init>()V

    .line 187
    .local v4, "userParams":Lcom/pyw/entity/UserParams;
    invoke-virtual {v4, v3}, Lcom/pyw/entity/UserParams;->setToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4, v2}, Lcom/pyw/entity/UserParams;->setSdkUserID(Ljava/lang/String;)V

    .line 189
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pyw/entity/UserParams;->setSuc(Z)V

    .line 190
    iget-object v5, p0, Lcom/pyw/plugin/oppo/OPPOPlugin$5;->this$0:Lcom/pyw/plugin/oppo/OPPOPlugin;

    invoke-static {v5}, Lcom/pyw/plugin/oppo/OPPOPlugin;->access$0(Lcom/pyw/plugin/oppo/OPPOPlugin;)Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "ssoid":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "userParams":Lcom/pyw/entity/UserParams;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
