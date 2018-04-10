.class public abstract Lcom/pyw/plugin/PYWPlugin;
.super Ljava/lang/Object;
.source "PYWPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final execute(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)Ljava/lang/Object;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/HashMap;
    .param p4, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .prologue
    const/4 v6, 0x2

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 97
    const-class v5, Ljava/util/HashMap;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    aput-object v5, v3, v4

    .line 96
    invoke-virtual {v2, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    if-eqz p4, :cond_0

    .line 104
    const-string v2, "miss execute action!"

    .line 103
    invoke-interface {p4, v6, v2}, Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;->onExecutionFailure(ILjava/lang/String;)V

    .line 106
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getCategory(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getPluginParams(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "jsn":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 77
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 71
    .local v2, "temp":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    move-object v1, v2

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract getVersion(Landroid/content/Context;)I
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDestroy(Landroid/content/Context;)V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method public abstract onPause(Landroid/content/Context;)V
.end method

.method public abstract onRestart(Landroid/content/Context;)V
.end method

.method public abstract onResume(Landroid/content/Context;)V
.end method

.method public abstract onStart(Landroid/content/Context;)V
.end method

.method public abstract onStop(Landroid/content/Context;)V
.end method

.method final setCallback(Landroid/content/Context;Ljava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$Callback;)Ljava/lang/Object;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 124
    const-class v5, Lcom/pyw/plugin/PYWPluginExecutor$Callback;

    aput-object v5, v3, v4

    .line 123
    invoke-virtual {v2, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 125
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 130
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v2, 0x0

    goto :goto_0
.end method
