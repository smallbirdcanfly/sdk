.class public Lcom/pengyouwan/sdk/utils/b;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v3, 0x40

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 33
    const/16 v2, 0xff

    new-array v2, v2, [B

    sput-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    .line 36
    new-array v2, v3, [B

    sput-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    .line 38
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/pengyouwan/sdk/utils/b;->c:[B

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    .line 58
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v0, v2, :cond_1

    .line 61
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v0, v2, :cond_2

    .line 65
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v0, v2, :cond_3

    .line 69
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aput-byte v6, v2, v4

    .line 70
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aput-byte v7, v2, v5

    .line 72
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-le v0, v2, :cond_4

    .line 76
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-le v0, v2, :cond_5

    .line 80
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-le v0, v2, :cond_6

    .line 83
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    aput-byte v4, v2, v6

    .line 84
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    aput-byte v5, v2, v7

    .line 86
    return-void

    .line 56
    .end local v1    # "j":I
    :cond_0
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 62
    :cond_2
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 66
    :cond_3
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->a:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 73
    :cond_4
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    .restart local v1    # "j":I
    :cond_5
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 81
    :cond_6
    sget-object v2, Lcom/pengyouwan/sdk/utils/b;->b:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 38
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 405
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 406
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, "data":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 413
    :goto_0
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/b;->b([B)[B

    move-result-object v0

    .line 414
    .local v0, "aim":[B
    return-object v0

    .line 410
    .end local v0    # "aim":[B
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 19
    .param p0, "binaryData"    # [B

    .prologue
    .line 236
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    mul-int/lit8 v11, v16, 0x8

    .line 237
    .local v11, "lengthDataBits":I
    rem-int/lit8 v7, v11, 0x18

    .line 238
    .local v7, "fewerThan24bits":I
    div-int/lit8 v12, v11, 0x18

    .line 239
    .local v12, "numberTriplets":I
    const/4 v5, 0x0

    .line 241
    .local v5, "encodedData":[B
    if-eqz v7, :cond_1

    .line 242
    add-int/lit8 v16, v12, 0x1

    mul-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    new-array v5, v0, [B

    .line 247
    :goto_0
    const/4 v9, 0x0

    .line 248
    .local v9, "k":B
    const/4 v10, 0x0

    .line 249
    .local v10, "l":B
    const/4 v1, 0x0

    .line 250
    .local v1, "b1":B
    const/4 v2, 0x0

    .line 251
    .local v2, "b2":B
    const/4 v3, 0x0

    .line 252
    .local v3, "b3":B
    const/4 v6, 0x0

    .line 253
    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    .line 254
    .local v4, "dataIndex":I
    const/4 v8, 0x0

    .line 255
    .local v8, "i":I
    const/4 v8, 0x0

    :goto_1
    if-lt v8, v12, :cond_2

    .line 283
    mul-int/lit8 v4, v8, 0x3

    .line 284
    mul-int/lit8 v6, v8, 0x4

    .line 285
    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 286
    aget-byte v1, p0, v4

    .line 287
    and-int/lit8 v16, v1, 0x3

    move/from16 v0, v16

    int-to-byte v9, v0

    .line 288
    and-int/lit8 v16, v1, -0x80

    if-nez v16, :cond_6

    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    int-to-byte v13, v0

    .line 290
    .local v13, "val1":B
    :goto_2
    sget-object v16, Lcom/pengyouwan/sdk/utils/b;->b:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 291
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    shl-int/lit8 v18, v9, 0x4

    aget-byte v17, v17, v18

    aput-byte v17, v5, v16

    .line 292
    add-int/lit8 v16, v6, 0x2

    const/16 v17, 0x3d

    aput-byte v17, v5, v16

    .line 293
    add-int/lit8 v16, v6, 0x3

    const/16 v17, 0x3d

    aput-byte v17, v5, v16

    .line 311
    .end local v13    # "val1":B
    :cond_0
    :goto_3
    return-object v5

    .line 244
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "dataIndex":I
    .end local v6    # "encodedIndex":I
    .end local v8    # "i":I
    .end local v9    # "k":B
    .end local v10    # "l":B
    :cond_1
    mul-int/lit8 v16, v12, 0x4

    move/from16 v0, v16

    new-array v5, v0, [B

    goto :goto_0

    .line 257
    .restart local v1    # "b1":B
    .restart local v2    # "b2":B
    .restart local v3    # "b3":B
    .restart local v4    # "dataIndex":I
    .restart local v6    # "encodedIndex":I
    .restart local v8    # "i":I
    .restart local v9    # "k":B
    .restart local v10    # "l":B
    :cond_2
    mul-int/lit8 v4, v8, 0x3

    .line 258
    aget-byte v1, p0, v4

    .line 259
    add-int/lit8 v16, v4, 0x1

    aget-byte v2, p0, v16

    .line 260
    add-int/lit8 v16, v4, 0x2

    aget-byte v3, p0, v16

    .line 262
    and-int/lit8 v16, v2, 0xf

    move/from16 v0, v16

    int-to-byte v10, v0

    .line 263
    and-int/lit8 v16, v1, 0x3

    move/from16 v0, v16

    int-to-byte v9, v0

    .line 265
    mul-int/lit8 v6, v8, 0x4

    .line 266
    and-int/lit8 v16, v1, -0x80

    if-nez v16, :cond_3

    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    int-to-byte v13, v0

    .line 269
    .restart local v13    # "val1":B
    :goto_4
    and-int/lit8 v16, v2, -0x80

    if-nez v16, :cond_4

    shr-int/lit8 v16, v2, 0x4

    move/from16 v0, v16

    int-to-byte v14, v0

    .line 271
    .local v14, "val2":B
    :goto_5
    and-int/lit8 v16, v3, -0x80

    if-nez v16, :cond_5

    shr-int/lit8 v16, v3, 0x6

    move/from16 v0, v16

    int-to-byte v15, v0

    .line 274
    .local v15, "val3":B
    :goto_6
    sget-object v16, Lcom/pengyouwan/sdk/utils/b;->b:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 275
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    .line 276
    shl-int/lit8 v18, v9, 0x4

    or-int v18, v18, v14

    aget-byte v17, v17, v18

    .line 275
    aput-byte v17, v5, v16

    .line 277
    add-int/lit8 v16, v6, 0x2

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    shl-int/lit8 v18, v10, 0x2

    .line 278
    or-int v18, v18, v15

    aget-byte v17, v17, v18

    .line 277
    aput-byte v17, v5, v16

    .line 279
    add-int/lit8 v16, v6, 0x3

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    and-int/lit8 v18, v3, 0x3f

    aget-byte v17, v17, v18

    aput-byte v17, v5, v16

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 267
    .end local v13    # "val1":B
    .end local v14    # "val2":B
    .end local v15    # "val3":B
    :cond_3
    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v13, v0

    goto :goto_4

    .line 270
    .restart local v13    # "val1":B
    :cond_4
    shr-int/lit8 v16, v2, 0x4

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v14, v0

    goto :goto_5

    .line 272
    .restart local v14    # "val2":B
    :cond_5
    shr-int/lit8 v16, v3, 0x6

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v15, v0

    goto :goto_6

    .line 289
    .end local v13    # "val1":B
    .end local v14    # "val2":B
    :cond_6
    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v13, v0

    goto/16 :goto_2

    .line 294
    :cond_7
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v7, v0, :cond_0

    .line 295
    aget-byte v1, p0, v4

    .line 296
    add-int/lit8 v16, v4, 0x1

    aget-byte v2, p0, v16

    .line 297
    and-int/lit8 v16, v2, 0xf

    move/from16 v0, v16

    int-to-byte v10, v0

    .line 298
    and-int/lit8 v16, v1, 0x3

    move/from16 v0, v16

    int-to-byte v9, v0

    .line 300
    and-int/lit8 v16, v1, -0x80

    if-nez v16, :cond_8

    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    int-to-byte v13, v0

    .line 302
    .restart local v13    # "val1":B
    :goto_7
    and-int/lit8 v16, v2, -0x80

    if-nez v16, :cond_9

    shr-int/lit8 v16, v2, 0x4

    move/from16 v0, v16

    int-to-byte v14, v0

    .line 305
    .restart local v14    # "val2":B
    :goto_8
    sget-object v16, Lcom/pengyouwan/sdk/utils/b;->b:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 306
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    .line 307
    shl-int/lit8 v18, v9, 0x4

    or-int v18, v18, v14

    aget-byte v17, v17, v18

    .line 306
    aput-byte v17, v5, v16

    .line 308
    add-int/lit8 v16, v6, 0x2

    sget-object v17, Lcom/pengyouwan/sdk/utils/b;->b:[B

    shl-int/lit8 v18, v10, 0x2

    aget-byte v17, v17, v18

    aput-byte v17, v5, v16

    .line 309
    add-int/lit8 v16, v6, 0x3

    const/16 v17, 0x3d

    aput-byte v17, v5, v16

    goto/16 :goto_3

    .line 301
    .end local v13    # "val1":B
    .end local v14    # "val2":B
    :cond_8
    shr-int/lit8 v16, v1, 0x2

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v13, v0

    goto :goto_7

    .line 303
    .restart local v13    # "val1":B
    :cond_9
    shr-int/lit8 v16, v2, 0x4

    move/from16 v0, v16

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v14, v0

    goto :goto_8
.end method

.method public static b([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    .prologue
    .line 325
    if-eqz p0, :cond_0

    array-length v12, p0

    if-nez v12, :cond_2

    .line 326
    :cond_0
    const/4 v12, 0x0

    new-array v5, v12, [B

    .line 371
    :cond_1
    :goto_0
    return-object v5

    .line 329
    :cond_2
    array-length v12, p0

    div-int/lit8 v11, v12, 0x4

    .line 330
    .local v11, "numberQuadruple":I
    const/4 v5, 0x0

    .line 331
    .local v5, "decodedData":[B
    const/4 v0, 0x0

    .local v0, "b1":B
    const/4 v1, 0x0

    .local v1, "b2":B
    const/4 v2, 0x0

    .local v2, "b3":B
    const/4 v3, 0x0

    .local v3, "b4":B
    const/4 v9, 0x0

    .local v9, "marker0":B
    const/4 v10, 0x0

    .line 333
    .local v10, "marker1":B
    const/4 v6, 0x0

    .line 334
    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    .line 337
    .local v4, "dataIndex":I
    array-length v8, p0

    .line 339
    .local v8, "lastData":I
    :cond_3
    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p0, v12

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    .line 344
    sub-int v12, v8, v11

    new-array v5, v12, [B

    .line 347
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_1

    .line 348
    mul-int/lit8 v4, v7, 0x4

    .line 349
    add-int/lit8 v12, v4, 0x2

    aget-byte v9, p0, v12

    .line 350
    add-int/lit8 v12, v4, 0x3

    aget-byte v10, p0, v12

    .line 352
    sget-object v12, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 353
    sget-object v12, Lcom/pengyouwan/sdk/utils/b;->a:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 355
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_6

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_6

    .line 356
    sget-object v12, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aget-byte v2, v12, v9

    .line 357
    sget-object v12, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aget-byte v3, v12, v10

    .line 359
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 360
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 361
    add-int/lit8 v12, v6, 0x2

    shl-int/lit8 v13, v2, 0x6

    or-int/2addr v13, v3

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 369
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 340
    .end local v7    # "i":I
    :cond_5
    add-int/lit8 v8, v8, -0x1

    if-nez v8, :cond_3

    .line 341
    const/4 v12, 0x0

    new-array v5, v12, [B

    goto :goto_0

    .line 362
    .restart local v7    # "i":I
    :cond_6
    const/16 v12, 0x3d

    if-ne v9, v12, :cond_7

    .line 363
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    goto :goto_2

    .line 364
    :cond_7
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_4

    .line 365
    sget-object v12, Lcom/pengyouwan/sdk/utils/b;->a:[B

    aget-byte v2, v12, v9

    .line 366
    shl-int/lit8 v12, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v6

    .line 367
    add-int/lit8 v12, v6, 0x1

    and-int/lit8 v13, v1, 0xf

    shl-int/lit8 v13, v13, 0x4

    shr-int/lit8 v14, v2, 0x2

    and-int/lit8 v14, v14, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    goto :goto_2
.end method

.method public static c([B)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # [B

    .prologue
    const/16 v5, 0x4c

    .line 382
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/b;->a([B)[B

    move-result-object v0

    .line 383
    .local v0, "aim":[B
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_0

    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 386
    :cond_0
    array-length v6, v0

    sub-int/2addr v6, v3

    if-le v6, v5, :cond_1

    move v2, v5

    .line 388
    .local v2, "length":I
    :goto_1
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v3, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_2
    add-int/lit8 v3, v3, 0x4c

    goto :goto_0

    .line 386
    .end local v2    # "length":I
    :cond_1
    array-length v6, v0

    sub-int v2, v6, v3

    goto :goto_1

    .line 389
    .restart local v2    # "length":I
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method
