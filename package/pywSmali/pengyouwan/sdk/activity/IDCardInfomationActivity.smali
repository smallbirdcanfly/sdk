.class public Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;
.super Landroid/app/Activity;
.source "IDCardInfomationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->d:Z

    .line 47
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b()V

    .line 70
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->a:Landroid/content/Context;

    .line 71
    const-string v3, "pyw_view_idcard_information"

    .line 70
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "param"

    iget-object v3, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 75
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 77
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 78
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 79
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 81
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 82
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 83
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 85
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$1;

    invoke-direct {v3, p0}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$1;-><init>(Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    new-instance v3, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$a;-><init>(Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity$a;)V

    const-string v4, "sdkObj"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    sget-object v3, Lcom/pengyouwan/sdk/e/i;->B:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method private b()V
    .locals 13

    .prologue
    .line 165
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v9

    .line 167
    .local v9, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v10, "gameid"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 169
    const-string v10, "username"

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v10, "token"

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_0
    const-string v10, "imie"

    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v3, "jobj":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 179
    .local v2, "jarry":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 184
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 185
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "reqParm":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    .line 187
    const-string v10, "ISO-8859-1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 186
    invoke-static {v10}, Lcom/pengyouwan/framework/b/d;->b([B)[B

    move-result-object v10

    .line 187
    const-string v11, "ISO-8859-1"

    .line 186
    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 188
    .local v7, "str":Ljava/lang/String;
    const-string v10, "ISO-8859-1"

    invoke-static {v7, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "reqStr":Ljava/lang/String;
    iput-object v6, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v5    # "reqParm":Ljava/lang/String;
    .end local v6    # "reqStr":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :goto_2
    return-void

    .line 172
    .end local v2    # "jarry":Lorg/json/JSONArray;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :cond_0
    const-string v10, "username"

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v10, "token"

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .restart local v2    # "jarry":Lorg/json/JSONArray;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-static {v10, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 180
    invoke-virtual {v3, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 190
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 191
    .local v8, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Encoding not supported: UTF-8"

    invoke-direct {v10, v11, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 193
    .end local v8    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iput-object p0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->a:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->a:Landroid/content/Context;

    .line 62
    const-string v1, "pyw_activity_idcard"

    .line 61
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->a()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 151
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 153
    iput-object v1, p0, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;->b:Landroid/webkit/WebView;

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method
