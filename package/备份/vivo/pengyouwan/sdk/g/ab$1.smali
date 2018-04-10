.class Lcom/pengyouwan/sdk/g/ab$1;
.super Ljava/lang/Object;
.source "VoucherListTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/ab;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/ab;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/ab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 13
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, "jobj":Lorg/json/JSONObject;
    const-string v10, "ack"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "ack":I
    const/16 v10, 0xc8

    if-ne v0, v10, :cond_7

    .line 71
    const-string v10, "data"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 72
    .local v2, "data":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "total_pages"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->a(I)V

    .line 73
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "page"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->b(I)V

    .line 74
    const-string v10, "num_not_use"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 75
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "num_not_use"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->c(I)V

    .line 77
    :cond_0
    const-string v10, "num_have_used"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 78
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "num_have_used"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->d(I)V

    .line 80
    :cond_1
    const-string v10, "num_expire"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 81
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "num_expire"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->e(I)V

    .line 84
    :cond_2
    const-string v10, "list"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 85
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v7, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 87
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v6, :cond_4

    .line 105
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/pengyouwan/sdk/g/ab$a;->a(Ljava/util/ArrayList;)V

    .line 106
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v11}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 117
    .end local v0    # "ack":I
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 88
    .restart local v0    # "ack":I
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    .restart local v6    # "length":I
    .restart local v7    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 89
    .local v8, "obj":Lorg/json/JSONObject;
    new-instance v9, Lcom/pengyouwan/sdk/entity/Voucher;

    invoke-direct {v9}, Lcom/pengyouwan/sdk/entity/Voucher;-><init>()V

    .line 90
    .local v9, "v":Lcom/pengyouwan/sdk/entity/Voucher;
    const-string v10, "status"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 91
    const-string v10, "status"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->a(I)V

    .line 95
    :goto_3
    const-string v10, "coupon_tips"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 96
    const-string v10, "coupon_tips"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->f(Ljava/lang/String;)V

    .line 98
    :cond_5
    const-string v10, "org_amount"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->e(Ljava/lang/String;)V

    .line 99
    const-string v10, "gamename"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->a(Ljava/lang/String;)V

    .line 100
    const-string v10, "amount"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->b(F)V

    .line 101
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->d(Ljava/lang/String;)V

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/entity/Voucher;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u4ee3\u91d1\u5238"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->b(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 93
    :cond_6
    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/pengyouwan/sdk/entity/Voucher;->a(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 111
    .end local v0    # "ack":I
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .end local v6    # "length":I
    .end local v7    # "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pengyouwan/sdk/entity/Voucher;>;"
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "v":Lcom/pengyouwan/sdk/entity/Voucher;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const-string v11, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->a(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v11}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto/16 :goto_2

    .line 107
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v0    # "ack":I
    .restart local v5    # "jobj":Lorg/json/JSONObject;
    :cond_7
    const/16 v10, 0x3f7

    if-ne v0, v10, :cond_3

    .line 108
    :try_start_3
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->b(Z)V

    .line 109
    iget-object v10, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v10}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/pengyouwan/sdk/g/ab$a;->a(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 114
    .end local v0    # "ack":I
    .end local v5    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v10

    .line 115
    iget-object v11, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    iget-object v12, p0, Lcom/pengyouwan/sdk/g/ab$1;->a:Lcom/pengyouwan/sdk/g/ab;

    invoke-static {v12}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/g/ab;)Lcom/pengyouwan/sdk/g/ab$a;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/pengyouwan/sdk/g/ab;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 116
    throw v10
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/ab$1;->a(Ljava/lang/String;)V

    return-void
.end method
