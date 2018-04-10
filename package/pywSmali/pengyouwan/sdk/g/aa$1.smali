.class Lcom/pengyouwan/sdk/g/aa$1;
.super Ljava/lang/Object;
.source "UserCenterTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pengyouwan/framework/volley/p$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/aa;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/aa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 63
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "jobj":Lorg/json/JSONObject;
    const-string v6, "ack"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "ack":I
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_3

    .line 66
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 67
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v5, Lcom/pengyouwan/sdk/entity/d;

    invoke-direct {v5}, Lcom/pengyouwan/sdk/entity/d;-><init>()V

    .line 68
    .local v5, "userCenter":Lcom/pengyouwan/sdk/entity/d;
    const-string v6, "credit"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    const-string v6, "credit"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 69
    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->a(F)V

    .line 71
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/d;->a()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(F)V

    .line 73
    :cond_0
    const-string v6, "type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->a(I)V

    .line 74
    const-string v6, "coupon_count"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->b(I)V

    .line 75
    const-string v6, "passport"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->g(Ljava/lang/String;)V

    .line 76
    const-string v6, "account"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->f(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    .line 78
    const-string v7, "passport"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/entity/c;->e(Ljava/lang/String;)V

    .line 79
    const-string v6, "nickname"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    const-string v6, "nickname"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->e(Ljava/lang/String;)V

    .line 82
    :cond_1
    const-string v6, "have_pay_pwd"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 83
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V

    .line 84
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->a(Z)V

    .line 90
    :goto_0
    const-string v6, "wap_set_paypwd_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->a(Ljava/lang/String;)V

    .line 92
    const-string v6, "wap_modify_paypwd_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->b(Ljava/lang/String;)V

    .line 94
    const-string v6, "wap_forget_paypwd_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->c(Ljava/lang/String;)V

    .line 95
    const-string v6, "wap_credit_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->d(Ljava/lang/String;)V

    .line 96
    const-string v6, "id_info"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    .local v3, "idObj":Lorg/json/JSONObject;
    const-string v6, "is_verify"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->b(Z)V

    .line 98
    const-string v6, "real_name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->h(Ljava/lang/String;)V

    .line 99
    const-string v6, "card_sn"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->i(Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pengyouwan/sdk/g/aa$a;->a(Lcom/pengyouwan/sdk/entity/d;)V

    .line 102
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "idObj":Lorg/json/JSONObject;
    .end local v5    # "userCenter":Lcom/pengyouwan/sdk/entity/d;
    :goto_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 117
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 86
    .restart local v0    # "ack":I
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    .restart local v5    # "userCenter":Lcom/pengyouwan/sdk/entity/d;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/entity/c;->a(Z)V

    .line 87
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/d;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "ack":I
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "jobj":Lorg/json/JSONObject;
    .end local v5    # "userCenter":Lcom/pengyouwan/sdk/entity/d;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const-string v7, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    iget-object v7, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v7}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_2

    .line 103
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_3
    const/16 v6, 0x3f7

    if-ne v0, v6, :cond_4

    .line 104
    :try_start_3
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->b(Z)V

    .line 105
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 113
    .end local v0    # "ack":I
    .end local v4    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v6

    .line 114
    iget-object v7, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    iget-object v8, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v8}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 115
    throw v6

    .line 107
    .restart local v0    # "ack":I
    .restart local v4    # "jobj":Lorg/json/JSONObject;
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/pengyouwan/sdk/g/aa$1;->a:Lcom/pengyouwan/sdk/g/aa;

    invoke-static {v6}, Lcom/pengyouwan/sdk/g/aa;->a(Lcom/pengyouwan/sdk/g/aa;)Lcom/pengyouwan/sdk/g/aa$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/g/aa$a;->a(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/aa$1;->a(Ljava/lang/String;)V

    return-void
.end method
