.class public Lcom/pengyouwan/sdk/utils/f;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 315
    .restart local p0    # "filePath":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "filePosi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 509
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 502
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    move v2, v1

    .line 509
    .restart local v2    # "result":I
    goto :goto_0

    .line 506
    .end local v2    # "result":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "recreate"    # Z

    .prologue
    .line 377
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "folderName":Ljava/lang/String;
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/m;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, 0x0

    .line 391
    :goto_0
    return v2

    .line 382
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    if-eqz p1, :cond_1

    .line 385
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/f;->c(Ljava/lang/String;)Z

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0

    .line 388
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 447
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v2

    .line 451
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 459
    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-lt v3, v4, :cond_4

    .line 468
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 461
    :cond_4
    aget-object v0, v2, v3

    .line 462
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 461
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/f;->c(Ljava/lang/String;)Z

    goto :goto_2
.end method
