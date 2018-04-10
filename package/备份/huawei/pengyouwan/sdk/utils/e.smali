.class public Lcom/pengyouwan/sdk/utils/e;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/utils/e$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pengyouwan/sdk/e/f;)Lorg/apache/http/client/HttpClient;
    .locals 12
    .param p0, "requestPackage"    # Lcom/pengyouwan/sdk/e/f;

    .prologue
    .line 126
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->c()Ljava/util/Hashtable;

    move-result-object v3

    .line 129
    .local v3, "param":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 130
    .local v7, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 131
    new-instance v6, Lcom/pengyouwan/framework/a/b;

    invoke-direct {v6, v7}, Lcom/pengyouwan/framework/a/b;-><init>(Ljava/security/KeyStore;)V

    .line 132
    .local v6, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 134
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 136
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 138
    const-string v8, "ISO-8859-1"

    .line 137
    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 139
    const/4 v8, 0x1

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 142
    const-wide/16 v8, 0x2710

    invoke-static {v4, v8, v9}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 143
    const-string v8, "conn-timeout"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    const-string v8, "conn-timeout"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 145
    invoke-static {v4, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 148
    :cond_0
    const-string v8, "socket-timeout"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 151
    const-string v8, "socket-timeout"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 150
    invoke-static {v4, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 155
    :cond_1
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 156
    .local v5, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    .line 157
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 156
    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 158
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 160
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 163
    .local v0, "conManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "conManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    .end local v5    # "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public static a(Lcom/pengyouwan/sdk/e/f;Lcom/pengyouwan/sdk/utils/e$a;)V
    .locals 16
    .param p0, "requestPackage"    # Lcom/pengyouwan/sdk/e/f;
    .param p1, "downloadListener"    # Lcom/pengyouwan/sdk/utils/e$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v8, 0x0

    .line 55
    .local v8, "httpClient":Lorg/apache/http/client/HttpClient;
    const/4 v13, 0x0

    .line 57
    .local v13, "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v4, 0x0

    .line 59
    .local v4, "fileSize":J
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/pengyouwan/sdk/utils/e;->a(Lcom/pengyouwan/sdk/e/f;)Lorg/apache/http/client/HttpClient;

    move-result-object v8

    .line 60
    invoke-static/range {p0 .. p0}, Lcom/pengyouwan/sdk/utils/e;->b(Lcom/pengyouwan/sdk/e/f;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v13

    .line 61
    invoke-interface {v8, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 62
    .local v9, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 63
    .local v12, "statusCode":I
    const/16 v14, 0xc8

    if-eq v12, v14, :cond_1

    .line 64
    const/16 v14, 0xc9

    if-eq v12, v14, :cond_1

    .line 65
    const/16 v14, 0xcc

    if-eq v12, v14, :cond_1

    .line 66
    const/16 v14, 0xce

    if-eq v12, v14, :cond_1

    .line 67
    invoke-static {v12}, Lcom/pengyouwan/framework/base/a;->a(I)Lcom/pengyouwan/framework/base/a;

    move-result-object v14

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusCode":I
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v3}, Lcom/pengyouwan/framework/base/a;->c(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;

    move-result-object v14

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 93
    if-eqz v8, :cond_0

    .line 95
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    :cond_0
    const/4 v8, 0x0

    .line 98
    throw v14

    .line 70
    .restart local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v12    # "statusCode":I
    :cond_1
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 71
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 72
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 71
    invoke-direct {v1, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/16 v14, 0x2000

    new-array v2, v14, [B

    .line 74
    .local v2, "data":[B
    const-wide/16 v6, 0x0

    .line 75
    .local v6, "haveRead":J
    const/4 v11, 0x0

    .line 76
    .local v11, "read":I
    const/4 v10, 0x0

    .line 77
    .local v10, "progress":I
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_3

    .line 93
    if-eqz v8, :cond_2

    .line 95
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    :cond_2
    const/4 v8, 0x0

    .line 99
    return-void

    .line 78
    :cond_3
    int-to-long v14, v11

    add-long/2addr v6, v14

    .line 79
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_4

    .line 80
    long-to-float v14, v6

    long-to-float v15, v4

    div-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v10, v14

    .line 82
    :cond_4
    const/4 v14, 0x0

    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v14, v11, v10}, Lcom/pengyouwan/sdk/utils/e$a;->a([BIII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "data":[B
    .end local v6    # "haveRead":J
    .end local v9    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "progress":I
    .end local v11    # "read":I
    .end local v12    # "statusCode":I
    :catch_1
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v3}, Lcom/pengyouwan/framework/base/a;->d(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;

    move-result-object v14

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static b(Lcom/pengyouwan/sdk/e/f;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .param p0, "requestPackage"    # Lcom/pengyouwan/sdk/e/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->e()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "prevUrl":Ljava/lang/String;
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "params":Ljava/lang/String;
    const/4 v5, 0x0

    .line 179
    .local v5, "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->f()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 180
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .end local v5    # "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v5    # "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->c()Ljava/util/Hashtable;

    move-result-object v4

    .line 188
    .local v4, "settings":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 189
    const-string v6, "socket-timeout"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 191
    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 192
    const-string v6, "socket-timeout"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 191
    invoke-static {v7, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 196
    :cond_0
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->b()Ljava/util/Hashtable;

    move-result-object v0

    .line 197
    .local v0, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 198
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 205
    :cond_2
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-interface {v5, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-object v5

    .line 182
    .end local v0    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "settings":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    .end local v5    # "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v5, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v5    # "uriReq":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v6, v5

    .line 184
    check-cast v6, Lorg/apache/http/client/methods/HttpPost;

    .line 185
    invoke-interface {p0}, Lcom/pengyouwan/sdk/e/f;->d()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 198
    .restart local v0    # "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "settings":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "key":Ljava/lang/String;
    const-string v6, "Connection"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
