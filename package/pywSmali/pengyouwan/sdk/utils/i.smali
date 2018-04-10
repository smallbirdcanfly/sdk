.class public Lcom/pengyouwan/sdk/utils/i;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "c:/RSAKey.txt"

    sput-object v0, Lcom/pengyouwan/sdk/utils/i;->a:Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/utils/i;->b:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pengyouwan/sdk/utils/i;->c:[C

    .line 65
    return-void

    .line 64
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 479
    .local v0, "encodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 480
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 481
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 482
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method public static a(Ljava/security/PublicKey;[B)[B
    .locals 8
    .param p0, "pk"    # Ljava/security/PublicKey;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    const-string v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 227
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v2, v6, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 230
    array-length v0, p1

    .line 231
    .local v0, "blockSize":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x40

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 232
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 234
    .local v4, "j":I
    :goto_0
    array-length v6, p1

    mul-int v7, v4, v0

    sub-int/2addr v6, v7

    if-gtz v6, :cond_1

    .line 238
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 239
    .local v5, "results":[B
    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 241
    :cond_0
    return-object v5

    .line 235
    .end local v5    # "results":[B
    :cond_1
    mul-int v6, v4, v0

    invoke-virtual {v2, p1, v6, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "blockSize":I
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "j":I
    :catch_0
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method
