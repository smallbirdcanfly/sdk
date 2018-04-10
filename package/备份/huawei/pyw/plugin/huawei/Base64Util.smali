.class public Lcom/pyw/plugin/huawei/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static alphabet:[C

.field private static codes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 95
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/pyw/plugin/huawei/Base64Util;->alphabet:[C

    .line 97
    new-array v1, v3, [B

    sput-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 102
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 104
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 106
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 108
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 109
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 110
    return-void

    .line 101
    :cond_0
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    add-int/lit8 v2, v0, 0x1a

    add-int/lit8 v2, v2, -0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 107
    :cond_3
    sget-object v1, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    add-int/lit8 v2, v0, 0x34

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xff

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 48
    .local v7, "tempLen":I
    const/4 v3, 0x0

    .local v3, "ix":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 55
    div-int/lit8 v9, v7, 0x4

    mul-int/lit8 v4, v9, 0x3

    .line 56
    .local v4, "len":I
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 57
    add-int/lit8 v4, v4, 0x2

    .line 58
    :cond_0
    rem-int/lit8 v9, v7, 0x4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 59
    add-int/lit8 v4, v4, 0x1

    .line 61
    :cond_1
    new-array v5, v4, [B

    .line 63
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 64
    .local v6, "shift":I
    const/4 v0, 0x0

    .line 65
    .local v0, "accum":I
    const/4 v1, 0x0

    .line 68
    .local v1, "index":I
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_6

    .line 87
    array-length v9, v5

    if-eq v1, v9, :cond_2

    .line 89
    const/4 v9, 0x0

    new-array v5, v9, [B

    .line 92
    .end local v5    # "out":[B
    :cond_2
    return-object v5

    .line 50
    .end local v0    # "accum":I
    .end local v1    # "index":I
    .end local v4    # "len":I
    .end local v6    # "shift":I
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v11, :cond_4

    sget-object v9, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget-byte v9, v9, v10

    if-gez v9, :cond_5

    .line 51
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 48
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .restart local v0    # "accum":I
    .restart local v1    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "out":[B
    .restart local v6    # "shift":I
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-le v9, v11, :cond_8

    const/4 v8, -0x1

    .line 72
    .local v8, "value":I
    :goto_2
    if-ltz v8, :cond_7

    .line 74
    shl-int/lit8 v0, v0, 0x6

    .line 75
    add-int/lit8 v6, v6, 0x6

    .line 76
    or-int/2addr v0, v8

    .line 77
    const/16 v9, 0x8

    if-lt v6, v9, :cond_7

    .line 79
    add-int/lit8 v6, v6, -0x8

    .line 80
    add-int/lit8 v2, v1, 0x1

    .line 81
    .end local v1    # "index":I
    .local v2, "index":I
    shr-int v9, v0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 80
    aput-byte v9, v5, v1

    move v1, v2

    .line 68
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    .end local v8    # "value":I
    :cond_8
    sget-object v9, Lcom/pyw/plugin/huawei/Base64Util;->codes:[B

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget-byte v8, v9, v10

    goto :goto_2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 7
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/pyw/plugin/huawei/Base64Util;->encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    const/16 v7, 0x40

    .line 12
    add-int/lit8 v6, p1, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    new-array v2, v6, [C

    .line 14
    .local v2, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 41
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    .local v3, "quad":Z
    const/4 v4, 0x0

    .line 19
    .local v4, "trip":Z
    aget-byte v6, p0, v0

    and-int/lit16 v5, v6, 0xff

    .line 20
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x8

    .line 21
    add-int/lit8 v6, v0, 0x1

    if-ge v6, p1, :cond_1

    .line 23
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 24
    const/4 v4, 0x1

    .line 26
    :cond_1
    shl-int/lit8 v5, v5, 0x8

    .line 27
    add-int/lit8 v6, v0, 0x2

    if-ge v6, p1, :cond_2

    .line 29
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 30
    const/4 v3, 0x1

    .line 32
    :cond_2
    add-int/lit8 v8, v1, 0x3

    sget-object v9, Lcom/pyw/plugin/huawei/Base64Util;->alphabet:[C

    if-eqz v3, :cond_3

    and-int/lit8 v6, v5, 0x3f

    :goto_1
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 33
    shr-int/lit8 v5, v5, 0x6

    .line 34
    add-int/lit8 v8, v1, 0x2

    sget-object v9, Lcom/pyw/plugin/huawei/Base64Util;->alphabet:[C

    if-eqz v4, :cond_4

    and-int/lit8 v6, v5, 0x3f

    :goto_2
    aget-char v6, v9, v6

    aput-char v6, v2, v8

    .line 35
    shr-int/lit8 v5, v5, 0x6

    .line 36
    add-int/lit8 v6, v1, 0x1

    sget-object v8, Lcom/pyw/plugin/huawei/Base64Util;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 37
    shr-int/lit8 v5, v5, 0x6

    .line 38
    add-int/lit8 v6, v1, 0x0

    sget-object v8, Lcom/pyw/plugin/huawei/Base64Util;->alphabet:[C

    and-int/lit8 v9, v5, 0x3f

    aget-char v8, v8, v9

    aput-char v8, v2, v6

    .line 14
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    move v6, v7

    .line 32
    goto :goto_1

    :cond_4
    move v6, v7

    .line 34
    goto :goto_2
.end method
