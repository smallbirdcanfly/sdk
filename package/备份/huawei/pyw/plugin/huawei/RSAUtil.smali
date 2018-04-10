.class public Lcom/pyw/plugin/huawei/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final PRIVATE_KEY:Ljava/lang/String; = "RSAPrivateKey"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "RSAPublicKey"

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1WithRSA"

.field public static final SIGNATURE_ALGORITHM_SHA256:Ljava/lang/String; = "SHA256WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    :goto_0
    return v4

    .line 56
    :cond_0
    :try_start_0
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 57
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-static {p2}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, "encodedKey":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 60
    .local v2, "pubKey":Ljava/security/PublicKey;
    const-string v5, "SHA256WithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 62
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 63
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    .line 65
    invoke-static {p1}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 66
    .end local v0    # "encodedKey":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "pubKey":Ljava/security/PublicKey;
    .end local v3    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static sha256WithRsa([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 32
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 33
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 34
    .local v3, "privateK":Ljava/security/PrivateKey;
    const-string v5, "SHA256WithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 35
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 36
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 37
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    invoke-static {v5}, Lcom/pyw/plugin/huawei/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 72
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v6

    .line 75
    :cond_1
    const-string v0, "utf-8"

    .line 77
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 78
    .local v3, "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 79
    .local v1, "keyf":Ljava/security/KeyFactory;
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 81
    .local v2, "priKey":Ljava/security/PrivateKey;
    const-string v7, "SHA256WithRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 83
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/Signature;->update([B)V

    .line 86
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    .line 88
    .local v5, "signed":[B
    invoke-static {v5}, Lcom/pyw/plugin/huawei/Base64Util;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 89
    .end local v1    # "keyf":Ljava/security/KeyFactory;
    .end local v2    # "priKey":Ljava/security/PrivateKey;
    .end local v3    # "priPKCS8":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v4    # "signature":Ljava/security/Signature;
    .end local v5    # "signed":[B
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static toBase64String(Ljava/security/Key;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 26
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pyw/plugin/huawei/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verify([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 43
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 44
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 45
    .local v3, "publicK":Ljava/security/PublicKey;
    const-string v5, "SHA256WithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 46
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 47
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 48
    invoke-static {p2}, Lcom/pyw/plugin/huawei/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5
.end method
