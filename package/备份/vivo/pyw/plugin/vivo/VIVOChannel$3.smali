.class Lcom/pyw/plugin/vivo/VIVOChannel$3;
.super Ljava/lang/Object;
.source "VIVOChannel.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/vivo/VIVOChannel;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

.field private final synthetic val$price:Ljava/lang/String;

.field private final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/vivo/VIVOChannel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    iput-object p2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->val$productName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->val$price:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pyw/plugin/vivo/VIVOChannel$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v9, 0x0

    .line 270
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .local v10, "jsonObject":Lorg/json/JSONObject;
    move-object v9, v10

    .line 274
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v0, "respCode"

    invoke-static {v9, v0}, Lcom/pyw/plugin/vivo/JsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v11, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    new-instance v0, Lcom/vivo/unionsdk/open/VivoPayInfo;

    iget-object v1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->val$productName:Ljava/lang/String;

    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->val$productName:Ljava/lang/String;

    iget-object v3, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->val$price:Ljava/lang/String;

    .line 277
    const-string v4, "accessKey"

    invoke-static {v9, v4}, Lcom/pyw/plugin/vivo/JsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v5}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$4(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;

    move-result-object v5

    .line 278
    const-string v6, "orderNumber"

    invoke-static {v9, v6}, Lcom/pyw/plugin/vivo/JsonParser;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v7}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$5(Lcom/pyw/plugin/vivo/VIVOChannel;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/vivo/unionsdk/open/VivoPayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {v11, v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$6(Lcom/pyw/plugin/vivo/VIVOChannel;Lcom/vivo/unionsdk/open/VivoPayInfo;)V

    .line 279
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$1(Lcom/pyw/plugin/vivo/VIVOChannel;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v1}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$7(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/vivo/unionsdk/open/VivoPayInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v2}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$8(Lcom/pyw/plugin/vivo/VIVOChannel;)Lcom/vivo/unionsdk/open/VivoPayCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/unionsdk/open/VivoUnionSDK;->pay(Landroid/app/Activity;Lcom/vivo/unionsdk/open/VivoPayInfo;Lcom/vivo/unionsdk/open/VivoPayCallback;)V

    .line 284
    :goto_1
    return-void

    .line 271
    :catch_0
    move-exception v8

    .line 272
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$3;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$1(Lcom/pyw/plugin/vivo/VIVOChannel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
