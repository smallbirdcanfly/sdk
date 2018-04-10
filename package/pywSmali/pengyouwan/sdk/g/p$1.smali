.class Lcom/pengyouwan/sdk/g/p$1;
.super Ljava/lang/Object;
.source "InitTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/p;
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
.field final synthetic a:Lcom/pengyouwan/sdk/g/p;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/p;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 20
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v10, "jobj":Lorg/json/JSONObject;
    const-string v17, "ack"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 68
    .local v3, "ack":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v3, v0, :cond_e

    .line 69
    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 70
    .local v6, "data":Lorg/json/JSONObject;
    if-eqz v6, :cond_d

    .line 72
    const-string v17, "collect_open"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v9, 0x1

    .line 73
    .local v9, "isOpen":Z
    :goto_0
    const-string v17, "collect_to_where"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "url":Ljava/lang/String;
    const-string v17, "collect_interval"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 75
    .local v13, "period":I
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1, v13}, Lcom/pengyouwan/sdk/utils/l;->a(ZLjava/lang/String;I)V

    .line 77
    const-string v17, "payment"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 78
    .local v11, "obj":Lorg/json/JSONObject;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v17, "unipay"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "7"

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v17, "alipay"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "3"

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v17, "wechatpay"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 82
    const-string v17, "wechatpay"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "2"

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    const-string v17, "dialog_time"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/utils/d;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    const-string v18, "apisecret"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->b(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    const-string v18, "gameid"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v18

    .line 92
    const-string v17, "clickable_exit_dialog_url"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    .line 91
    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/d/b;->a(Z)V

    .line 94
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v18

    .line 95
    const-string v17, "del_button"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    .line 94
    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/d/b;->c(Z)V

    .line 97
    const-string v17, "fast_reg"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 98
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    const-string v18, "fast_reg"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->a(I)V

    .line 101
    :cond_1
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    const-string v18, "exit_dialog_url"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->c(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    .line 105
    const-string v18, "exit_dialog_click_url"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 104
    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->d(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/d/b;->b(Z)V

    .line 108
    const-string v17, "setup_file"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 109
    const-string v17, "setup_file"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/d/f;->c(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/open/SDKConfig;->setPayment(Ljava/lang/String;)V

    .line 113
    const-string v17, "game_account"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 114
    .local v4, "array":Lorg/json/JSONArray;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v15, "sdkUsersLists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    if-eqz v4, :cond_5

    .line 116
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 117
    .local v5, "arraySize":I
    add-int/lit8 v8, v5, -0x1

    .local v8, "i":I
    :goto_6
    if-gez v8, :cond_c

    .line 123
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pengyouwan/sdk/b/d;->e()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 124
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/pengyouwan/sdk/b/d;->e()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_4

    .line 126
    :cond_3
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/pengyouwan/sdk/b/d;->a(Ljava/util/List;)J

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "arraySize":I
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v9    # "isOpen":Z
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v13    # "period":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "sdkUsersLists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .end local v16    # "url":Ljava/lang/String;
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 145
    .end local v3    # "ack":I
    .end local v10    # "jobj":Lorg/json/JSONObject;
    :goto_8
    return-void

    .line 72
    .restart local v3    # "ack":I
    .restart local v6    # "data":Lorg/json/JSONObject;
    .restart local v10    # "jobj":Lorg/json/JSONObject;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 79
    .restart local v9    # "isOpen":Z
    .restart local v11    # "obj":Lorg/json/JSONObject;
    .restart local v13    # "period":I
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "url":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v17, ""

    goto/16 :goto_1

    .line 80
    :cond_8
    const-string v17, ""

    goto/16 :goto_2

    .line 82
    :cond_9
    const-string v17, ""

    goto/16 :goto_3

    .line 92
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 95
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 118
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "arraySize":I
    .restart local v8    # "i":I
    .restart local v15    # "sdkUsersLists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    :cond_c
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 119
    .local v12, "obj2":Lorg/json/JSONObject;
    new-instance v2, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v2}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 120
    .local v2, "account":Lcom/pengyouwan/sdk/entity/c;
    const-string v17, "username"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 121
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 133
    .end local v2    # "account":Lcom/pengyouwan/sdk/entity/c;
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "arraySize":I
    .end local v8    # "i":I
    .end local v9    # "isOpen":Z
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v12    # "obj2":Lorg/json/JSONObject;
    .end local v13    # "period":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "sdkUsersLists":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .end local v16    # "url":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v17

    const-string v18, "msg"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 139
    .end local v3    # "ack":I
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v10    # "jobj":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v17

    const-string v18, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p$a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/e/c;)V

    goto :goto_8

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "ack":I
    .restart local v10    # "jobj":Lorg/json/JSONObject;
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v17

    const-string v18, "msg"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/pengyouwan/sdk/g/p$a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    .line 142
    .end local v3    # "ack":I
    .end local v10    # "jobj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v17

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pengyouwan/sdk/g/p$1;->a:Lcom/pengyouwan/sdk/g/p;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/pengyouwan/sdk/g/p;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 144
    throw v17
.end method

.method public synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/g/p$1;->a(Ljava/lang/String;)V

    return-void
.end method
