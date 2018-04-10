.class public Lcom/pyw/plugin/vivo/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASE64_ALPHABET:[B

.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final LOOKUP_BASE64_ALPHABET:[B

.field private static final PAD:B = 0x3dt

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final encodingTable:[B


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

    sput-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    .line 36
    new-array v2, v3, [B

    sput-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    .line 38
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

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
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    aput-byte v6, v2, v4

    .line 70
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

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
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    aput-byte v4, v2, v6

    .line 84
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    aput-byte v5, v2, v7

    .line 86
    return-void

    .line 56
    .end local v1    # "j":I
    :cond_0
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 58
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 62
    :cond_2
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 66
    :cond_3
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 73
    :cond_4
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    add-int/lit8 v3, v0, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    .restart local v1    # "j":I
    :cond_5
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    add-int/lit8 v3, v1, 0x61

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 81
    :cond_6
    sget-object v2, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

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

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static decode([B)[B
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
    sget-object v12, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    aget-byte v13, p0, v4

    aget-byte v0, v12, v13

    .line 353
    sget-object v12, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v13, p0, v13

    aget-byte v1, v12, v13

    .line 355
    const/16 v12, 0x3d

    if-eq v9, v12, :cond_6

    const/16 v12, 0x3d

    if-eq v10, v12, :cond_6

    .line 356
    sget-object v12, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    aget-byte v2, v12, v9

    .line 357
    sget-object v12, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

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
    sget-object v12, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

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

.method public static decodeBuffer(Ljava/lang/String;)[B
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
    invoke-static {v1}, Lcom/pyw/plugin/vivo/Base64;->decode([B)[B

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

.method public static encode([B)[B
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
    sget-object v16, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 291
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

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
    sget-object v16, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 275
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    .line 276
    shl-int/lit8 v18, v9, 0x4

    or-int v18, v18, v14

    aget-byte v17, v17, v18

    .line 275
    aput-byte v17, v5, v16

    .line 277
    add-int/lit8 v16, v6, 0x2

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    shl-int/lit8 v18, v10, 0x2

    .line 278
    or-int v18, v18, v15

    aget-byte v17, v17, v18

    .line 277
    aput-byte v17, v5, v16

    .line 279
    add-int/lit8 v16, v6, 0x3

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

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
    sget-object v16, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    aget-byte v16, v16, v13

    aput-byte v16, v5, v6

    .line 306
    add-int/lit8 v16, v6, 0x1

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

    .line 307
    shl-int/lit8 v18, v9, 0x4

    or-int v18, v18, v14

    aget-byte v17, v17, v18

    .line 306
    aput-byte v17, v5, v16

    .line 308
    add-int/lit8 v16, v6, 0x2

    sget-object v17, Lcom/pyw/plugin/vivo/Base64;->LOOKUP_BASE64_ALPHABET:[B

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

.method public static encodeBuffer([B)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # [B

    .prologue
    const/16 v5, 0x4c

    .line 382
    invoke-static {p0}, Lcom/pyw/plugin/vivo/Base64;->encode([B)[B

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

.method public static encodeBufferWithoutEnd([B)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # [B

    .prologue
    const/16 v5, 0x4c

    .line 425
    invoke-static {p0}, Lcom/pyw/plugin/vivo/Base64;->encode([B)[B

    move-result-object v0

    .line 426
    .local v0, "aim":[B
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_0
    array-length v6, v0

    if-lt v3, v6, :cond_0

    .line 438
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 429
    :cond_0
    array-length v6, v0

    sub-int/2addr v6, v3

    if-le v6, v5, :cond_2

    move v2, v5

    .line 431
    .local v2, "length":I
    :goto_1
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v3, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    if-ne v2, v5, :cond_1

    .line 433
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x4c

    goto :goto_0

    .line 429
    .end local v2    # "length":I
    :cond_2
    array-length v6, v0

    sub-int v2, v6, v3

    goto :goto_1

    .line 434
    .restart local v2    # "length":I
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private static encodeInner([B)[B
    .locals 18
    .param p0, "data"    # [B

    .prologue
    .line 114
    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    .line 115
    .local v13, "modulus":I
    if-nez v13, :cond_0

    .line 116
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    .line 121
    .local v7, "bytes":[B
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    .line 123
    .local v10, "dataLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-lt v11, v10, :cond_1

    .line 140
    packed-switch v13, :pswitch_data_0

    .line 168
    :goto_2
    :pswitch_0
    return-object v7

    .line 118
    .end local v7    # "bytes":[B
    .end local v10    # "dataLength":I
    .end local v11    # "i":I
    .end local v12    # "j":I
    :cond_0
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    .restart local v7    # "bytes":[B
    goto :goto_0

    .line 124
    .restart local v10    # "dataLength":I
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_1
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    .line 125
    .local v1, "a1":I
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    .line 126
    .local v2, "a2":I
    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    .line 128
    .local v3, "a3":I
    sget-object v14, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    .line 129
    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 130
    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 131
    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 123
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_1

    .line 144
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :pswitch_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 145
    .local v8, "d1":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 146
    .local v4, "b1":I
    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    .line 148
    .local v5, "b2":I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 149
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 150
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    .line 151
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 154
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v8    # "d1":I
    :pswitch_2
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 155
    .restart local v8    # "d1":I
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 157
    .local v9, "d2":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 158
    .restart local v4    # "b1":I
    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    .line 159
    .restart local v5    # "b2":I
    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    .line 161
    .local v6, "b3":I
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 162
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 163
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/pyw/plugin/vivo/Base64;->encodingTable:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    .line 164
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/vivo/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/pyw/plugin/vivo/Base64;->encodeInner([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayByteBase64([B)Z
    .locals 4
    .param p0, "arrayOctect"    # [B

    .prologue
    const/4 v2, 0x1

    .line 215
    array-length v1, p0

    .line 216
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 219
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 220
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/pyw/plugin/vivo/Base64;->isBase64(B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 221
    const/4 v2, 0x0

    goto :goto_0

    .line 219
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static isBase64(B)Z
    .locals 2
    .param p0, "octect"    # B

    .prologue
    .line 204
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/pyw/plugin/vivo/Base64;->BASE64_ALPHABET:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1
    .param p0, "isValidString"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/pyw/plugin/vivo/Base64;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/vivo/Base64;->isArrayByteBase64([B)Z

    move-result v0

    return v0
.end method
