.class public Lcom/pengyouwan/framework/volley/toolbox/m;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/pengyouwan/framework/volley/o;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/m;->a(Landroid/content/Context;Lcom/pengyouwan/framework/volley/toolbox/g;)Lcom/pengyouwan/framework/volley/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/pengyouwan/framework/volley/toolbox/g;)Lcom/pengyouwan/framework/volley/o;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/pengyouwan/framework/volley/toolbox/g;

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/pengyouwan/framework/volley/toolbox/m;->a(Landroid/content/Context;Lcom/pengyouwan/framework/volley/toolbox/g;I)Lcom/pengyouwan/framework/volley/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/pengyouwan/framework/volley/toolbox/g;I)Lcom/pengyouwan/framework/volley/o;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/pengyouwan/framework/volley/toolbox/g;
    .param p2, "maxDiskCacheBytes"    # I

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v0, "cacheDir":Ljava/io/File;
    const-string v5, "volley/0"

    .line 51
    .local v5, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 57
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_0

    .line 58
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    .line 59
    new-instance p1, Lcom/pengyouwan/framework/volley/toolbox/h;

    .end local p1    # "stack":Lcom/pengyouwan/framework/volley/toolbox/g;
    invoke-direct {p1}, Lcom/pengyouwan/framework/volley/toolbox/h;-><init>()V

    .line 67
    .restart local p1    # "stack":Lcom/pengyouwan/framework/volley/toolbox/g;
    :cond_0
    :goto_1
    new-instance v2, Lcom/pengyouwan/framework/volley/toolbox/a;

    invoke-direct {v2, p1}, Lcom/pengyouwan/framework/volley/toolbox/a;-><init>(Lcom/pengyouwan/framework/volley/toolbox/g;)V

    .line 70
    .local v2, "network":Lcom/pengyouwan/framework/volley/g;
    const/4 v6, -0x1

    if-gt p2, v6, :cond_2

    .line 73
    new-instance v4, Lcom/pengyouwan/framework/volley/o;

    new-instance v6, Lcom/pengyouwan/framework/volley/toolbox/c;

    invoke-direct {v6, v0}, Lcom/pengyouwan/framework/volley/toolbox/c;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/pengyouwan/framework/volley/o;-><init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;)V

    .line 81
    .local v4, "queue":Lcom/pengyouwan/framework/volley/o;
    :goto_2
    invoke-virtual {v4}, Lcom/pengyouwan/framework/volley/o;->a()V

    .line 83
    return-object v4

    .line 63
    .end local v2    # "network":Lcom/pengyouwan/framework/volley/g;
    .end local v4    # "queue":Lcom/pengyouwan/framework/volley/o;
    :cond_1
    new-instance p1, Lcom/pengyouwan/framework/volley/toolbox/e;

    .end local p1    # "stack":Lcom/pengyouwan/framework/volley/toolbox/g;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/pengyouwan/framework/volley/toolbox/e;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p1    # "stack":Lcom/pengyouwan/framework/volley/toolbox/g;
    goto :goto_1

    .line 78
    .restart local v2    # "network":Lcom/pengyouwan/framework/volley/g;
    :cond_2
    new-instance v4, Lcom/pengyouwan/framework/volley/o;

    new-instance v6, Lcom/pengyouwan/framework/volley/toolbox/c;

    invoke-direct {v6, v0, p2}, Lcom/pengyouwan/framework/volley/toolbox/c;-><init>(Ljava/io/File;I)V

    invoke-direct {v4, v6, v2}, Lcom/pengyouwan/framework/volley/o;-><init>(Lcom/pengyouwan/framework/volley/b;Lcom/pengyouwan/framework/volley/g;)V

    .restart local v4    # "queue":Lcom/pengyouwan/framework/volley/o;
    goto :goto_2

    .line 54
    .end local v2    # "network":Lcom/pengyouwan/framework/volley/g;
    .end local v4    # "queue":Lcom/pengyouwan/framework/volley/o;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
