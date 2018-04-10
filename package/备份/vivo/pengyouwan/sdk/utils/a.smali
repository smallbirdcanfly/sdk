.class public Lcom/pengyouwan/sdk/utils/a;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 340
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 319
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 307
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 309
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 311
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    .line 312
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 316
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 317
    .local v2, "ex":Ljava/net/SocketException;
    const-string v5, "WifiPreference IpAddress"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "tid"    # Ljava/lang/String;
    .param p1, "apiSecret"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    const-string v4, ""

    .line 107
    :goto_0
    return-object v4

    .line 99
    :cond_0
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 100
    .local v0, "c32":Ljava/util/zip/CRC32;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 101
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 102
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 103
    const/4 v1, 0x1

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "str1":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "str2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 615
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/m;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/m;-><init>(Landroid/app/Activity;)V

    .line 616
    .local v0, "dialog":Lcom/pengyouwan/sdk/ui/a/m;
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/m;->show()V

    .line 617
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 181
    const-string v4, "pyw_service_phone_num"

    .line 180
    invoke-static {p0, v4}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 179
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "number":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd\u4e3a\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 191
    const-string v5, "pyw_service_phone_num"

    .line 190
    invoke-static {p0, v5}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 189
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;Landroid/widget/ImageView;ZLandroid/content/Context;)Z
    .locals 3
    .param p0, "edit"    # Landroid/widget/EditText;
    .param p1, "imageview"    # Landroid/widget/ImageView;
    .param p2, "curStatus"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    if-eqz p2, :cond_1

    .line 571
    const/4 p2, 0x0

    .line 573
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    .line 572
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 575
    const-string v2, "pyw_img_visible_disabled"

    .line 574
    invoke-static {p3, v2}, Lcom/pengyouwan/sdk/utils/j;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 585
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 586
    check-cast v0, Landroid/text/Spannable;

    .line 587
    .local v0, "spanText":Landroid/text/Spannable;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 589
    .end local v0    # "spanText":Landroid/text/Spannable;
    :cond_0
    return p2

    .line 577
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 p2, 0x1

    .line 579
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    .line 578
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 581
    const-string v2, "pyw_img_visible_normal"

    .line 580
    invoke-static {p3, v2}, Lcom/pengyouwan/sdk/utils/j;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mobiles"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v2, "^((13[0-9])|(15[^4,\\D])|(17[0-9])|(14[0-9])|(18[0-9]))\\d{8}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 143
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 144
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static a([B)[B
    .locals 9
    .param p0, "content"    # [B

    .prologue
    .line 158
    :try_start_0
    const-string v4, "45678iue2541455x"

    .line 159
    .local v4, "key":Ljava/lang/String;
    const-string v2, "45678iue2541455x"

    .line 160
    .local v2, "iv":Ljava/lang/String;
    const-string v7, "AES/CBC/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 161
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 162
    .local v5, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 164
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 166
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 171
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "iv":Ljava/lang/String;
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v6

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    sget-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    sget-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    .line 273
    :goto_0
    return-object v4

    .line 260
    :cond_0
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 259
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 261
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, "imei":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 264
    const-string v5, "android_id"

    .line 263
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "androidId":Ljava/lang/String;
    sget-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-nez v0, :cond_2

    const-string v4, ""

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    .line 269
    sget-object v4, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/pengyouwan/sdk/utils/a;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 266
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 270
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v2    # "imei":Ljava/lang/StringBuilder;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    const-string v4, "||"

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v2, -0x1

    .line 204
    .local v2, "c":I
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 205
    .local v1, "buf":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 206
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/SecretUtil;->doB([B)[B

    move-result-object v4

    .line 208
    .local v4, "tmpBuf":[B
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 209
    .local v3, "inf":Ljava/util/zip/Inflater;
    invoke-virtual {v3, v4}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 210
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 215
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    .line 217
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 211
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 212
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 350
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 351
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 353
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 437
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "uuid":Ljava/lang/String;
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 440
    return-object v0
.end method

.method public static c([B)[B
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 229
    .local v1, "buf":[B
    const/4 v2, -0x1

    .line 230
    .local v2, "c":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/Deflater;

    const/16 v6, 0x9

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 232
    .local v3, "def":Ljava/util/zip/Deflater;
    invoke-virtual {v3, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 233
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    .line 235
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->end()V

    .line 242
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 243
    .local v5, "tmpBuf":[B
    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/SecretUtil;->doA([B)[B

    move-result-object v4

    .line 245
    .local v4, "result":[B
    return-object v4

    .line 236
    .end local v4    # "result":[B
    .end local v5    # "tmpBuf":[B
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 389
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 391
    :goto_0
    return-object v2

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 24

    .prologue
    .line 449
    :try_start_0
    const-string v20, "android.app.ActivityThread"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 450
    .local v7, "localClass":Ljava/lang/Class;
    const-string v20, "currentActivityThread"

    .line 451
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    .line 450
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 452
    .local v15, "localMethod":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 453
    .local v16, "localObject1":Ljava/lang/Object;
    const-string v20, "mActivities"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 454
    .local v9, "localField1":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 455
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 456
    .local v13, "localHashMap":Ljava/util/Map;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 457
    .local v14, "localIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1

    .line 493
    .end local v9    # "localField1":Ljava/lang/reflect/Field;
    .end local v13    # "localHashMap":Ljava/util/Map;
    .end local v14    # "localIterator":Ljava/util/Iterator;
    .end local v15    # "localMethod":Ljava/lang/reflect/Method;
    .end local v16    # "localObject1":Ljava/lang/Object;
    :goto_1
    return-void

    .line 458
    .restart local v9    # "localField1":Ljava/lang/reflect/Field;
    .restart local v13    # "localHashMap":Ljava/util/Map;
    .restart local v14    # "localIterator":Ljava/util/Iterator;
    .restart local v15    # "localMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "localObject1":Ljava/lang/Object;
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 459
    .local v8, "localEntry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 460
    .local v17, "localObject2":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 461
    .local v18, "localObject3":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 462
    .local v2, "arrayOfClass":[Ljava/lang/Class;
    array-length v0, v2

    move/from16 v22, v0

    const/16 v20, 0x0

    move/from16 v21, v20

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 471
    .end local v18    # "localObject3":Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 472
    const-string v21, "paused"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 473
    .local v12, "localField4":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 475
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 474
    check-cast v20, Ljava/lang/Boolean;

    .line 475
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 476
    .local v3, "bool1":Z
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 477
    const-string v21, "stopped"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 478
    .local v10, "localField2":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 479
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    .line 480
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 481
    .local v4, "bool2":Z
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 482
    :cond_2
    check-cast v18, Ljava/lang/Class;

    .line 483
    const-string v20, "activity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 484
    .local v11, "localField3":Ljava/lang/reflect/Field;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 486
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 485
    check-cast v6, Landroid/app/Activity;

    .line 487
    .local v6, "localActivity":Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 490
    .end local v2    # "arrayOfClass":[Ljava/lang/Class;
    .end local v3    # "bool1":Z
    .end local v4    # "bool2":Z
    .end local v6    # "localActivity":Landroid/app/Activity;
    .end local v8    # "localEntry":Ljava/util/Map$Entry;
    .end local v9    # "localField1":Ljava/lang/reflect/Field;
    .end local v10    # "localField2":Ljava/lang/reflect/Field;
    .end local v11    # "localField3":Ljava/lang/reflect/Field;
    .end local v12    # "localField4":Ljava/lang/reflect/Field;
    .end local v13    # "localHashMap":Ljava/util/Map;
    .end local v14    # "localIterator":Ljava/util/Iterator;
    .end local v15    # "localMethod":Ljava/lang/reflect/Method;
    .end local v16    # "localObject1":Ljava/lang/Object;
    .end local v17    # "localObject2":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 491
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 462
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "arrayOfClass":[Ljava/lang/Class;
    .restart local v8    # "localEntry":Ljava/util/Map$Entry;
    .restart local v9    # "localField1":Ljava/lang/reflect/Field;
    .restart local v13    # "localHashMap":Ljava/util/Map;
    .restart local v14    # "localIterator":Ljava/util/Iterator;
    .restart local v15    # "localMethod":Ljava/lang/reflect/Method;
    .restart local v16    # "localObject1":Ljava/lang/Object;
    .restart local v17    # "localObject2":Ljava/lang/Object;
    .restart local v18    # "localObject3":Ljava/lang/Object;
    :cond_3
    :try_start_1
    aget-object v19, v2, v21

    .line 463
    .local v19, "localObject5":Ljava/lang/Class;
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    .line 464
    const-string v23, "ActivityRecord"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 465
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    .line 466
    const-string v23, "ActivityClientRecord"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-eqz v20, :cond_5

    .line 467
    :cond_4
    move-object/from16 v18, v19

    .line 468
    .local v18, "localObject3":Ljava/lang/Class;
    goto/16 :goto_3

    .line 462
    .local v18, "localObject3":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v20, v21, 0x1

    move/from16 v21, v20

    goto/16 :goto_2
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/pengyouwan/sdk/utils/a;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 402
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 405
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 503
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 504
    .local v7, "sourceDir":Ljava/lang/String;
    const-string v6, ""

    .line 505
    .local v6, "ret":Ljava/lang/String;
    const/4 v9, 0x0

    .line 507
    .local v9, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v9    # "zipfile":Ljava/util/zip/ZipFile;
    .local v10, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 509
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_2

    .line 520
    :goto_0
    if-eqz v10, :cond_4

    .line 522
    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v9, v10

    .line 529
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 530
    const/4 v11, 0x0

    .line 534
    :goto_2
    return-object v11

    .line 510
    .end local v9    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 511
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "entryName":Ljava/lang/String;
    const-string v11, "META-INF/pyw_promo"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    .line 513
    move-object v6, v4

    .line 514
    goto :goto_0

    .line 517
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 520
    if-eqz v9, :cond_1

    .line 522
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 523
    :catch_1
    move-exception v1

    .line 524
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 519
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 520
    :goto_4
    if-eqz v9, :cond_3

    .line 522
    :try_start_6
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 527
    :cond_3
    :goto_5
    throw v11

    .line 523
    :catch_2
    move-exception v1

    .line 524
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 523
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v1

    .line 524
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    move-object v9, v10

    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 532
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_5
    const-string v11, "."

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 533
    .local v5, "index":I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 534
    .local v8, "str":Ljava/lang/String;
    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 519
    .end local v5    # "index":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 517
    .end local v9    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v10    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 545
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 546
    .local v1, "ori":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 553
    :goto_0
    return v2

    .line 549
    :cond_0
    if-ne v1, v2, :cond_1

    move v2, v3

    .line 551
    goto :goto_0

    :cond_1
    move v2, v3

    .line 553
    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 599
    sget-object v1, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 601
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 603
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    .line 605
    sget-object v1, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 606
    const-string v1, ""

    sput-object v1, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    .line 608
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    sget-object v1, Lcom/pengyouwan/sdk/utils/a;->a:Ljava/lang/String;

    return-object v1
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    .line 286
    :try_start_0
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 285
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 287
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 288
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "wifiMac":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 295
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v3    # "wifiMac":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method
