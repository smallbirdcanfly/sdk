.class public Lcom/pengyouwan/sdk/d/d;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/d/d$a;
    }
.end annotation


# static fields
.field static a:Landroid/os/Handler;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/pengyouwan/sdk/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "http://pyw.cn/pay/wx_checkout"

    sput-object v0, Lcom/pengyouwan/sdk/d/d;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/pengyouwan/sdk/d/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/d/d$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/pengyouwan/sdk/d/d;->a:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/pengyouwan/sdk/entity/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/pengyouwan/sdk/d/d;->b:Ljava/lang/String;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/pengyouwan/sdk/entity/b;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "jobj"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    invoke-static {}, Lcom/pengyouwan/sdk/d/d;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1002

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x103

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/pengyouwan/sdk/d/d;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    sput-object p0, Lcom/pengyouwan/sdk/d/d;->b:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public static b(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "jobj"    # Lorg/json/JSONObject;

    .prologue
    .line 203
    invoke-static {}, Lcom/pengyouwan/sdk/d/d;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x104

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "resultStatus":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, "str":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 68
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "resultParams":[Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 55
    :goto_2
    const-string v4, "9000"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    sget-object v4, Lcom/pengyouwan/sdk/d/d;->c:Lcom/pengyouwan/sdk/d/d$a;

    invoke-interface {v4}, Lcom/pengyouwan/sdk/d/d$a;->a()V

    goto :goto_0

    .line 48
    :cond_1
    aget-object v0, v1, v4

    .line 49
    .local v0, "resultParam":Ljava/lang/String;
    const-string v6, "resultStatus"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 50
    const-string v4, "resultStatus"

    invoke-static {v0, v4}, Lcom/pengyouwan/sdk/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    goto :goto_2

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "resultParam":Ljava/lang/String;
    :cond_3
    const-string v4, "8000"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    sget-object v4, Lcom/pengyouwan/sdk/d/d;->c:Lcom/pengyouwan/sdk/d/d$a;

    invoke-interface {v4}, Lcom/pengyouwan/sdk/d/d$a;->c()V

    goto :goto_0

    .line 65
    :cond_4
    sget-object v4, Lcom/pengyouwan/sdk/d/d;->c:Lcom/pengyouwan/sdk/d/d$a;

    invoke-interface {v4}, Lcom/pengyouwan/sdk/d/d$a;->b()V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "jobj"    # Lorg/json/JSONObject;

    .prologue
    .line 214
    invoke-static {}, Lcom/pengyouwan/sdk/d/d;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1004

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/pengyouwan/sdk/activity/H5Activity;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x104

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method
