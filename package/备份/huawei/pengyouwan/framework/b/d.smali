.class public Lcom/pengyouwan/framework/b/d;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 298
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 10
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v2, -0x1

    .line 121
    .local v2, "c":I
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 122
    .local v1, "buf":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    array-length v9, p0

    new-array v8, v9, [B

    .line 125
    .local v8, "tmpBuf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v9, v8

    add-int/lit8 v5, v9, -0x1

    .local v5, "j":I
    const/4 v6, 0x0

    .local v6, "k":I
    move v7, v6

    .line 126
    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ne v3, v5, :cond_1

    .line 127
    aget-byte v9, p0, v3

    aput-byte v9, v8, v7

    .line 137
    :cond_0
    new-instance v4, Ljava/util/zip/Inflater;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 138
    .local v4, "inf":Ljava/util/zip/Inflater;
    invoke-virtual {v4, v8}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 139
    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    if-nez v2, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 144
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 146
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    .line 129
    .end local v4    # "inf":Ljava/util/zip/Inflater;
    :cond_1
    if-gt v3, v5, :cond_0

    .line 133
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    aget-byte v9, p0, v3

    aput-byte v9, v8, v7

    .line 134
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    aget-byte v9, p0, v5

    aput-byte v9, v8, v6

    .line 125
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 140
    .restart local v4    # "inf":Ljava/util/zip/Inflater;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_1
.end method

.method public static b([B)[B
    .locals 14
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 158
    .local v1, "buf":[B
    const/4 v2, -0x1

    .line 159
    .local v2, "c":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/Deflater;

    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-direct {v3, v12, v13}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 161
    .local v3, "def":Ljava/util/zip/Deflater;
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 162
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 164
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 169
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 172
    .local v11, "tmpBuf":[B
    array-length v12, v11

    new-array v10, v12, [B

    .line 173
    .local v10, "result":[B
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    array-length v12, v11

    add-int/lit8 v8, v12, -0x1

    .local v8, "k":I
    :goto_1
    array-length v12, v11

    if-lt v4, v12, :cond_1

    .line 180
    :goto_2
    return-object v10

    .line 165
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v8    # "k":I
    .end local v10    # "result":[B
    .end local v11    # "tmpBuf":[B
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v0, v1, v12, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 174
    .restart local v4    # "i":I
    .restart local v6    # "j":I
    .restart local v8    # "k":I
    .restart local v10    # "result":[B
    .restart local v11    # "tmpBuf":[B
    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-byte v12, v11, v4

    aput-byte v12, v10, v6

    .line 175
    array-length v12, v11

    if-ne v5, v12, :cond_2

    move v6, v7

    .end local v7    # "j":I
    .restart local v6    # "j":I
    move v4, v5

    .line 176
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 177
    .end local v4    # "i":I
    .end local v6    # "j":I
    .restart local v5    # "i":I
    .restart local v7    # "j":I
    :cond_2
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "k":I
    .local v9, "k":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    aget-byte v12, v11, v5

    aput-byte v12, v10, v8

    move v8, v9

    .end local v9    # "k":I
    .restart local v8    # "k":I
    move v6, v7

    .end local v7    # "j":I
    .restart local v6    # "j":I
    goto :goto_1
.end method
