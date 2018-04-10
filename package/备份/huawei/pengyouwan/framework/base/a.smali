.class public Lcom/pengyouwan/framework/base/a;
.super Ljava/lang/Exception;
.source "AppException.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x4075526c07fc7e11L


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/framework/base/a;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pengyouwan/framework/base/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/pywSDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/framework/base/a;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IILjava/lang/Exception;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 58
    iput p1, p0, Lcom/pengyouwan/framework/base/a;->c:I

    .line 59
    iput p2, p0, Lcom/pengyouwan/framework/base/a;->d:I

    .line 60
    invoke-static {p3}, Lcom/pengyouwan/framework/base/a;->a(Ljava/lang/Exception;)V

    .line 61
    return-void
.end method

.method public static a(I)Lcom/pengyouwan/framework/base/a;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/pengyouwan/framework/base/a;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error http responsecode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-direct {v0, v1, p0, v2}, Lcom/pengyouwan/framework/base/a;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;I)Lcom/pengyouwan/framework/base/a;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "code"    # I

    .prologue
    .line 154
    new-instance v0, Lcom/pengyouwan/framework/base/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p0}, Lcom/pengyouwan/framework/base/a;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 13
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const-string v1, "error.log"

    .line 82
    .local v1, "errorlog":Ljava/lang/String;
    sget-object v9, Lcom/pengyouwan/framework/base/a;->b:Ljava/lang/String;

    .line 83
    .local v9, "savePath":Ljava/lang/String;
    const-string v6, ""

    .line 84
    .local v6, "logFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, "fw":Ljava/io/FileWriter;
    const/4 v7, 0x0

    .line 88
    .local v7, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "storageState":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    const-string v11, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v11, :cond_5

    .line 114
    if-eqz v7, :cond_4

    .line 115
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 117
    :cond_4
    if-eqz v3, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v11

    goto :goto_0

    .line 100
    :cond_5
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v5, "logFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_6

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 104
    :cond_6
    new-instance v4, Ljava/io/FileWriter;

    const/4 v11, 0x1

    invoke-direct {v4, v5, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_3
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .local v8, "pw":Ljava/io/PrintWriter;
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "--------------------"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 107
    const-string v12, "---------------------"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-virtual {v8, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v8}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 109
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 110
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    if-eqz v8, :cond_7

    .line 115
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 117
    :cond_7
    if-eqz v4, :cond_b

    .line 119
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .line 120
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 111
    .end local v5    # "logFile":Ljava/io/File;
    .end local v10    # "storageState":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    if-eqz v7, :cond_8

    .line 115
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 117
    :cond_8
    if-eqz v3, :cond_0

    .line 119
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 120
    :catch_2
    move-exception v11

    goto/16 :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 114
    :goto_2
    if-eqz v7, :cond_9

    .line 115
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 117
    :cond_9
    if-eqz v3, :cond_a

    .line 119
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 123
    :cond_a
    :goto_3
    throw v11

    .line 120
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "logFile":Ljava/io/File;
    .restart local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "storageState":Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_0

    .end local v5    # "logFile":Ljava/io/File;
    .end local v10    # "storageState":Ljava/lang/String;
    :catch_4
    move-exception v12

    goto :goto_3

    .line 113
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "logFile":Ljava/io/File;
    .restart local v10    # "storageState":Ljava/lang/String;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 111
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "pw":Ljava/io/PrintWriter;
    :catch_6
    move-exception v0

    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "pw":Ljava/io/PrintWriter;
    :cond_b
    move-object v7, v8

    .end local v8    # "pw":Ljava/io/PrintWriter;
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 164
    new-instance v0, Lcom/pengyouwan/framework/base/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/pengyouwan/framework/base/a;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Exception;I)Lcom/pengyouwan/framework/base/a;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "code"    # I

    .prologue
    .line 209
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/base/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/pengyouwan/framework/base/a;-><init>(IILjava/lang/Exception;)V

    .line 214
    :goto_0
    return-object v0

    .line 211
    :cond_1
    instance-of v0, p0, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    .line 212
    invoke-static {p0}, Lcom/pengyouwan/framework/base/a;->b(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {p0, p1}, Lcom/pengyouwan/framework/base/a;->a(Ljava/lang/Exception;I)Lcom/pengyouwan/framework/base/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pengyouwan/framework/base/a;->b(Ljava/lang/Exception;I)Lcom/pengyouwan/framework/base/a;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lcom/pengyouwan/framework/base/a;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 224
    new-instance v0, Lcom/pengyouwan/framework/base/a;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/pengyouwan/framework/base/a;-><init>(IILjava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/pengyouwan/framework/base/a;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/pengyouwan/framework/base/a;->d:I

    return v0
.end method
