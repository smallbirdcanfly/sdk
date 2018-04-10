.class public Lcom/pengyouwan/framework/b/c;
.super Ljava/lang/Object;
.source "RSA.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnHws3kjOS+FumpUWtCcl9Hi2A\rMNcnXXES3uUloR83D6UnsTlyLATarYgFdmFXK67iB9MPtTYzYzQKRkPigBmmotCx\rJDheWVCnsnFEDTe+SSNnpa+zxNecT5vBR4PNcm8LfnFOcwjEYHGmjVMFWZxd+58U\rdsWdbH4GMM2lD8Ay7QIDAQAB\r"

    invoke-static {v4}, Lcom/pengyouwan/sdk/utils/i;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 33
    .local v3, "puk":Ljava/security/PublicKey;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pengyouwan/sdk/utils/i;->a(Ljava/security/PublicKey;[B)[B

    move-result-object v0

    .line 34
    .local v0, "cipher":[B
    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/b;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    .end local v0    # "cipher":[B
    .end local v3    # "puk":Ljava/security/PublicKey;
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const-string v1, "-1"

    goto :goto_0
.end method
