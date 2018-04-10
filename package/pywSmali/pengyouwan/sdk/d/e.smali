.class public Lcom/pengyouwan/sdk/d/e;
.super Ljava/lang/Object;
.source "PromoCodeChannelResolverManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "com.yunyou.pengyouwan.provider.DataProvider"

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/e;->a:Ljava/lang/String;

    .line 21
    const-string v0, "content://com.yunyou.pengyouwan.provider.DataProvider/promo_code_channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/e;->b:Landroid/net/Uri;

    .line 25
    const-string v0, "promo_code"

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/e;->d:Ljava/lang/String;

    .line 27
    const-string v0, "channel"

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/e;->e:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/e;->c:Landroid/content/ContentResolver;

    .line 31
    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 34
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/e;->c:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    move-object v0, v14

    .line 72
    :goto_0
    return-object v0

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/e;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pengyouwan/sdk/d/e;->b:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 39
    iget-object v4, p0, Lcom/pengyouwan/sdk/d/e;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pengyouwan/sdk/d/e;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 40
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 38
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 42
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/e;->d:Ljava/lang/String;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "promoCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/e;->e:Ljava/lang/String;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "channel":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 46
    const-string v0, "ISO-8859-1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B

    move-result-object v9

    .line 47
    .local v9, "decodePromoCode":[B
    new-instance v13, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {v13, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    .local v13, "resultPromoCode":Ljava/lang/String;
    invoke-static {v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50
    const-string v0, "ISO-8859-1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B

    move-result-object v8

    .line 51
    .local v8, "decodeChannel":[B
    new-instance v12, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {v12, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 52
    .local v12, "resultChannel":Ljava/lang/String;
    invoke-static {v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 55
    if-eqz v13, :cond_1

    const-string v0, "\u6211\u662f"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_1
    const-string v13, ""

    .line 58
    :cond_2
    if-eqz v12, :cond_3

    const-string v0, "\u6211\u662f"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    const-string v12, ""

    .line 61
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 67
    .end local v6    # "channel":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "decodeChannel":[B
    .end local v9    # "decodePromoCode":[B
    .end local v11    # "promoCode":Ljava/lang/String;
    .end local v12    # "resultChannel":Ljava/lang/String;
    .end local v13    # "resultPromoCode":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 68
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    :goto_1
    move-object v0, v14

    .line 72
    goto/16 :goto_0

    .line 65
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 69
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v10

    .line 70
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
