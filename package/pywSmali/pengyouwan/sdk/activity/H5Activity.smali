.class public Lcom/pengyouwan/sdk/activity/H5Activity;
.super Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;
.source "H5Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/activity/H5Activity$a;
    }
.end annotation


# instance fields
.field private n:Landroid/content/Context;

.field private o:Landroid/webkit/WebView;

.field private q:I

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->r:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pengyouwan/sdk/activity/H5Activity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, ""

    .line 219
    .local v1, "title":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 235
    :goto_0
    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v2, "tag"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v2, "data"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    return-object v0

    .line 221
    :pswitch_0
    const-string v1, "\u4ea4\u6613\u5bc6\u7801"

    .line 222
    goto :goto_0

    .line 224
    :pswitch_1
    const-string v1, "\u5fae\u4fe1\u652f\u4ed8"

    .line 225
    goto :goto_0

    .line 227
    :pswitch_2
    const-string v1, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    .line 228
    goto :goto_0

    .line 230
    :pswitch_3
    const-string v1, "\u94f6\u8054\u652f\u4ed8"

    .line 231
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g()V
    .locals 10

    .prologue
    const/16 v9, 0x1001

    .line 73
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/pengyouwan/sdk/activity/H5Activity;->b(Ljava/lang/String;)V

    .line 75
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->n:Landroid/content/Context;

    const-string v8, "pyw_view_mybalance"

    invoke-static {v7, v8}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/pengyouwan/sdk/activity/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->o:Landroid/webkit/WebView;

    .line 76
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->r:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "tag"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    .line 79
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->o:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 81
    .local v5, "settings":Landroid/webkit/WebSettings;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 83
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 85
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->o:Landroid/webkit/WebView;

    new-instance v8, Lcom/pengyouwan/sdk/activity/H5Activity$1;

    invoke-direct {v8, p0}, Lcom/pengyouwan/sdk/activity/H5Activity$1;-><init>(Lcom/pengyouwan/sdk/activity/H5Activity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    if-ne v7, v9, :cond_1

    .line 125
    const-string v7, "param"

    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->i()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->o:Landroid/webkit/WebView;

    new-instance v8, Lcom/pengyouwan/sdk/activity/H5Activity$a;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/pengyouwan/sdk/activity/H5Activity$a;-><init>(Lcom/pengyouwan/sdk/activity/H5Activity;Lcom/pengyouwan/sdk/activity/H5Activity$a;)V

    const-string v9, "sdkObj"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->o:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->r:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    return-void

    .line 126
    :cond_1
    iget v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v8, 0x1002

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v8, 0x1004

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v8, 0x1003

    if-ne v7, v8, :cond_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, "jobj":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "?out_trade_no="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "out_trade_no"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&total_fee="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 134
    const-string v8, "total_fee"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&userid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "userid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 135
    const-string v8, "&token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "token"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&device_info="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 136
    const-string v8, "device_info"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->r:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v7, "\u53c2\u6570\u8f6c\u6362\u51fa\u9519"

    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->finish()V

    goto/16 :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    const-string v7, "\u8ba2\u5355\u4fe1\u606f\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u5355"

    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v5

    .line 190
    .local v5, "user":Lcom/pengyouwan/sdk/entity/c;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/a;->c([B)[B

    move-result-object v1

    .line 195
    .local v1, "bytes":[B
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 196
    array-length v7, v1

    :goto_0
    if-lt v6, v7, :cond_0

    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    .end local v1    # "bytes":[B
    :goto_1
    return-object v4

    .line 196
    .restart local v1    # "bytes":[B
    :cond_0
    aget-byte v0, v1, v6

    .line 197
    .local v0, "b":B
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/H5Activity;->setRequestedOrientation(I)V

    .line 67
    iput-object p0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->n:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->n:Landroid/content/Context;

    const-string v1, "pyw_activity_h5"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/H5Activity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/H5Activity;->g()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/16 v2, 0x104

    .line 176
    invoke-super {p0}, Lcom/pengyouwan/sdk/base/BaseCommonTitleFragmentActivity;->onDestroy()V

    .line 178
    iget v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    .line 179
    const/16 v0, 0x103

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/H5Activity;->setResult(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_2

    .line 181
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/H5Activity;->setResult(I)V

    goto :goto_0

    .line 183
    :cond_2
    iget v0, p0, Lcom/pengyouwan/sdk/activity/H5Activity;->q:I

    const/16 v1, 0x1004

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/H5Activity;->setResult(I)V

    goto :goto_0
.end method
