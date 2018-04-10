.class public Lcom/pengyouwan/sdk/b/c;
.super Ljava/lang/Object;
.source "StaticsOperator.java"


# static fields
.field private static a:Lcom/pengyouwan/sdk/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/b/c;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/pengyouwan/sdk/b/c;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/pengyouwan/sdk/b/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/b/c;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "endTime"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "account"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "startTime"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "extra3"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "extra1"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "extra2"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "statics"

    .line 101
    const-string v4, "extra1=? and extra3 =?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    .line 100
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "line":I
    if-ge v1, v7, :cond_0

    .line 103
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "statics"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "statics"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 55
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 56
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 70
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-object v11

    .line 59
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    const-string v0, "extra3"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "account":Ljava/lang/String;
    const-string v0, "extra1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "sTime":Ljava/lang/String;
    const-string v0, "extra2"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "eTime":Ljava/lang/String;
    invoke-direct {p0, v10, v8, v12}, Lcom/pengyouwan/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v8    # "account":Ljava/lang/String;
    .end local v10    # "eTime":Ljava/lang/String;
    .end local v12    # "sTime":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v11, v2

    .line 70
    goto :goto_2
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "statics"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->close()V

    .line 110
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->b()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/c;->a:Lcom/pengyouwan/sdk/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
