.class public Lcom/pengyouwan/sdk/utils/d;
.super Ljava/lang/Object;
.source "BindPhoneTipsDialogUtil.java"


# static fields
.field public static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pengyouwan/sdk/utils/d;->a:J

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    sput-wide v1, Lcom/pengyouwan/sdk/utils/d;->a:J

    .line 46
    invoke-static {}, Lcom/pengyouwan/sdk/utils/d;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/pengyouwan/sdk/utils/d;->c()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/pengyouwan/sdk/f/a;->a(Landroid/content/Context;J)V

    .line 84
    return-void
.end method

.method private static c()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/pengyouwan/sdk/f/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 60
    .local v2, "dialogTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "currentTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_1

    .line 72
    .end local v0    # "currentTime":J
    :cond_0
    :goto_0
    return v5

    .line 65
    .restart local v0    # "currentTime":J
    :cond_1
    sub-long v7, v0, v2

    sget-wide v9, Lcom/pengyouwan/sdk/utils/d;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    move v5, v6

    .line 69
    goto :goto_0

    .line 70
    .end local v0    # "currentTime":J
    :catch_0
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v6

    .line 72
    goto :goto_0
.end method
