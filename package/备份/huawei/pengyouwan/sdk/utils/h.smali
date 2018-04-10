.class public Lcom/pengyouwan/sdk/utils/h;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "unknown"

    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 51
    .line 52
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 55
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    if-nez v1, :cond_0

    .line 59
    const-string v4, "unknown"

    .line 94
    :goto_1
    return-object v4

    .line 61
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 62
    const-string v4, "wifi"

    goto :goto_1

    .line 65
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 66
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 87
    .local v2, "netType":I
    if-eq v2, v5, :cond_2

    .line 88
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 89
    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 90
    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_3

    .line 91
    :cond_2
    const-string v4, "2G"

    goto :goto_1

    .line 94
    :cond_3
    const-string v4, "3G"

    goto :goto_1

    .line 56
    .end local v2    # "netType":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
