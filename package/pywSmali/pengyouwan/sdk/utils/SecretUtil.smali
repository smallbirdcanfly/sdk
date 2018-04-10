.class public Lcom/pengyouwan/sdk/utils/SecretUtil;
.super Ljava/lang/Object;
.source "SecretUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "PywSec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static native doA([B)[B
.end method

.method public static native doB([B)[B
.end method
