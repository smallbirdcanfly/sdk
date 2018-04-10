.class public Lcom/pengyouwan/framework/a/a;
.super Ljava/lang/Object;
.source "PYWHttpURLConnection.java"


# static fields
.field static final a:Ljavax/net/ssl/HostnameVerifier;

.field private static b:Lcom/pengyouwan/framework/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/framework/a/a;->b:Lcom/pengyouwan/framework/a/a;

    .line 194
    new-instance v0, Lcom/pengyouwan/framework/a/a$1;

    invoke-direct {v0}, Lcom/pengyouwan/framework/a/a$1;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/a/a;->a:Ljavax/net/ssl/HostnameVerifier;

    .line 199
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a()Lcom/pengyouwan/framework/a/a;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/pengyouwan/framework/a/a;->b:Lcom/pengyouwan/framework/a/a;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/pengyouwan/framework/a/a;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/pengyouwan/framework/a/a;->b:Lcom/pengyouwan/framework/a/a;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/pengyouwan/framework/a/a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/a/a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/a/a;->b:Lcom/pengyouwan/framework/a/a;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/pengyouwan/framework/a/a;->b:Lcom/pengyouwan/framework/a/a;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p0, "urlstr"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x2710

    const/4 v3, 0x1

    .line 152
    invoke-static {}, Lcom/pengyouwan/framework/a/a;->b()V

    .line 153
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 155
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 158
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 160
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 163
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 168
    const-string v2, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 185
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 186
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 190
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 191
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 187
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static b()V
    .locals 5

    .prologue
    .line 206
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/pengyouwan/framework/a/a$2;

    invoke-direct {v4}, Lcom/pengyouwan/framework/a/a$2;-><init>()V

    aput-object v4, v2, v3

    .line 239
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 240
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 242
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 12
    .param p1, "urlstr"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "colData"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v9, "PYWHttpURLConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "upload data: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 67
    .local v2, "entity":[B
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "https"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 73
    const-string v9, "POST"

    .line 72
    invoke-static {p1, v9}, Lcom/pengyouwan/framework/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 74
    .local v4, "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v9, Lcom/pengyouwan/framework/a/a;->a:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 75
    const-string v9, "Content-Length"

    .line 76
    array-length v10, v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 75
    invoke-virtual {v4, v9, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 79
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 81
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 82
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 83
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 84
    invoke-static {}, Lcom/pengyouwan/sdk/b/a;->a()Lcom/pengyouwan/sdk/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/b/a;->c()V

    .line 85
    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 86
    .local v5, "inStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/pengyouwan/framework/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 88
    .local v7, "number":[B
    :try_start_0
    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 92
    :goto_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 94
    .local v6, "json":Ljava/lang/String;
    const-string v9, "PYWHttpURLConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "json: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "number":[B
    :goto_1
    return-object v6

    .line 89
    .restart local v4    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "number":[B
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "httpsConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v7    # "number":[B
    :cond_0
    const-string v9, "POST"

    invoke-static {p1, v9}, Lcom/pengyouwan/framework/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 99
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v9, "Content-Length"

    .line 100
    array-length v10, v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    invoke-virtual {v3, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 105
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 106
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 107
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 108
    invoke-static {}, Lcom/pengyouwan/sdk/b/a;->a()Lcom/pengyouwan/sdk/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/b/a;->c()V

    .line 109
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 110
    .restart local v5    # "inStream":Ljava/io/InputStream;
    invoke-static {v5}, Lcom/pengyouwan/framework/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 112
    .restart local v7    # "number":[B
    :try_start_1
    invoke-static {v7}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 116
    :goto_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 118
    .restart local v6    # "json":Ljava/lang/String;
    const-string v9, "PYWHttpURLConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "json: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    .end local v6    # "json":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 114
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v7    # "number":[B
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p1, "urlstr"    # Ljava/lang/String;
    .param p2, "colData"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0, p2}, Lcom/pengyouwan/framework/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
