.class public Lcom/pengyouwan/sdk/b/a;
.super Ljava/lang/Object;
.source "BehavioralOperator.java"


# static fields
.field private static a:J

.field private static b:Lcom/pengyouwan/sdk/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/a;->b:Lcom/pengyouwan/sdk/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/b/a;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/pengyouwan/sdk/b/a;->b:Lcom/pengyouwan/sdk/b/a;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/pengyouwan/sdk/b/c;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/b/a;->b:Lcom/pengyouwan/sdk/b/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/pengyouwan/sdk/b/a;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/b/a;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/b/a;->b:Lcom/pengyouwan/sdk/b/a;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/b/a;->b:Lcom/pengyouwan/sdk/b/a;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "creatTime"    # J
    .param p3, "device"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "gameId"    # Ljava/lang/String;
    .param p6, "pageName"    # Ljava/lang/String;
    .param p7, "behavioralName"    # Ljava/lang/String;
    .param p8, "ip"    # Ljava/lang/String;
    .param p9, "account"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v4, "jobj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/open/SDKConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->j()Lcom/pengyouwan/sdk/open/SDKConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pengyouwan/sdk/open/SDKConfig;->getPromo()Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "promo":Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 135
    const-string v7, "yyyy-MM-dd HH:mm:ss"

    .line 134
    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 137
    .local v2, "date":Ljava/util/Date;
    const-string v7, "creatTime"

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "creatTime: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    invoke-static {v7, v8}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v7, "action_time"

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v7, "imei"

    invoke-virtual {v4, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v7, "type_sn"

    invoke-virtual {v4, v7, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v7, "game_id"

    invoke-virtual {v4, v7, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v7, "page_sn"

    move-object/from16 v0, p6

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v7, "action_sn"

    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v7, "os"

    const-string v8, "ANDROID"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v7, "channel_id"

    const-string v8, "17"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v7, "promo_code"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v5, ""

    .end local v5    # "promo":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v7, "promo_channel"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v1, "pyw"

    .end local v1    # "channel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v7, "ip"

    move-object/from16 v0, p8

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v7, "account"

    move-object/from16 v0, p9

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "date":Ljava/util/Date;
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v4

    .line 152
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "behavioralName"    # Ljava/lang/String;
    .param p3, "type_sn"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 54
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "extra1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v2, "extra2"

    .line 57
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "extra3"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "extra4"

    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "extra5"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "extra6"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "extra7"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v1, :cond_1

    .line 64
    const-string v3, "extra8"

    .line 65
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 65
    if-eqz v2, :cond_0

    const-string v2, ""

    .line 64
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 71
    const-string v3, "behavioral"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    return-void

    .line 65
    :cond_0
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 67
    :cond_1
    const-string v2, "extra8"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 16

    .prologue
    .line 81
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    const-string v1, "behavioral"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    const-string v7, "extra1"

    const-string v8, "150"

    .line 83
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 85
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 86
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 88
    .local v13, "ja":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 118
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 119
    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v13    # "ja":Lorg/json/JSONArray;
    :goto_2
    return-object v0

    .line 90
    .restart local v13    # "ja":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v0, "extra1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 89
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 92
    .local v1, "creatTime":J
    const-string v0, "extra2"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 91
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "device":Ljava/lang/String;
    const-string v0, "extra3"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 93
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "accountType":Ljava/lang/String;
    const-string v0, "extra4"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 95
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "gameId":Ljava/lang/String;
    const-string v0, "extra5"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 97
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "pageName":Ljava/lang/String;
    const-string v0, "extra7"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "ip":Ljava/lang/String;
    const-string v0, "extra6"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 102
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "behavioralName":Ljava/lang/String;
    const-string v0, "extra8"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "account":Ljava/lang/String;
    move-object/from16 v0, p0

    .line 106
    invoke-direct/range {v0 .. v9}, Lcom/pengyouwan/sdk/b/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "data":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    .line 110
    const-string v14, "ISO-8859-1"

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 109
    invoke-static {v14}, Lcom/pengyouwan/sdk/utils/a;->c([B)[B

    move-result-object v14

    invoke-static {v14}, Lcom/pengyouwan/sdk/utils/b;->a([B)[B

    move-result-object v14

    .line 110
    const-string v15, "ISO-8859-1"

    invoke-direct {v0, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 109
    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    sget-wide v14, Lcom/pengyouwan/sdk/b/a;->a:J

    cmp-long v0, v14, v1

    if-gez v0, :cond_1

    .line 112
    sput-wide v1, Lcom/pengyouwan/sdk/b/a;->a:J

    .line 88
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 114
    .end local v1    # "creatTime":J
    .end local v3    # "device":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "gameId":Ljava/lang/String;
    .end local v6    # "pageName":Ljava/lang/String;
    .end local v7    # "behavioralName":Ljava/lang/String;
    .end local v8    # "ip":Ljava/lang/String;
    .end local v9    # "account":Ljava/lang/String;
    .end local v11    # "data":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 115
    .local v12, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "error  "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v0, ""

    goto/16 :goto_2

    .line 124
    .end local v13    # "ja":Lorg/json/JSONArray;
    :cond_3
    const-string v0, ""

    goto/16 :goto_2
.end method

.method public c()V
    .locals 8

    .prologue
    .line 165
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 167
    const-string v1, "behavioral"

    .line 168
    const-string v2, "extra1 <= ?"

    .line 169
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/pengyouwan/sdk/b/a;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    return-void
.end method
