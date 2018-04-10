.class public Lcom/pengyouwan/sdk/b/d;
.super Ljava/lang/Object;
.source "UserOperator.java"


# static fields
.field private static volatile a:Lcom/pengyouwan/sdk/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/d;->a:Lcom/pengyouwan/sdk/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 7
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "psw"    # Ljava/lang/String;
    .param p3, "isUpdate"    # Z

    .prologue
    .line 88
    move-object v2, p2

    .line 90
    .local v2, "p":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "p":Ljava/lang/String;
    const-string v5, "ISO-8859-1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/a;->c([B)[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .restart local v2    # "p":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "extra0"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "account":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "extra5"

    if-nez v2, :cond_1

    const-string v2, ""

    .end local v2    # "p":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 99
    .local v3, "time":J
    if-eqz p3, :cond_2

    .line 100
    const-string v5, "extra7"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    :cond_2
    const-string v5, "extra8"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    return-object v0

    .line 91
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "time":J
    .restart local p1    # "account":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, p2

    .restart local v2    # "p":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a()Lcom/pengyouwan/sdk/b/d;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/pengyouwan/sdk/b/d;->a:Lcom/pengyouwan/sdk/b/d;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/pengyouwan/sdk/b/d;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/b/d;->a:Lcom/pengyouwan/sdk/b/d;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/pengyouwan/sdk/b/d;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/b/d;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/b/d;->a:Lcom/pengyouwan/sdk/b/d;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/b/d;->a:Lcom/pengyouwan/sdk/b/d;

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

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "psw"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pengyouwan/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/entity/c;)J
    .locals 4
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pengyouwan/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 80
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "passport"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-wide/16 v3, -0x1

    .line 210
    :goto_0
    return-wide v3

    .line 205
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "extra0"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "extra3"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 209
    .local v1, "time":J
    const-string v3, "extra8"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "info"

    const-string v5, "extra0=?"

    .line 211
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 212
    aput-object p1, v6, v7

    .line 210
    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    goto :goto_0
.end method

.method public a(Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 128
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-wide v3

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-wide v3, v5

    .line 140
    goto :goto_0

    .line 132
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/sdk/entity/c;

    .line 133
    .local v2, "sdkUser":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/b/d;->d(Lcom/pengyouwan/sdk/entity/c;)J

    move-result-wide v0

    .line 134
    .local v0, "l":J
    cmp-long v8, v0, v3

    if-eqz v8, :cond_4

    cmp-long v8, v0, v5

    if-nez v8, :cond_1

    .line 136
    :cond_4
    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/b/d;->a(Lcom/pengyouwan/sdk/entity/c;)J

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_1

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    const/4 v3, 0x0

    .line 279
    .local v3, "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .end local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .local v4, "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 290
    .end local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .restart local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 293
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .end local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :goto_2
    return-object v2

    .line 280
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .restart local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    :try_start_2
    new-instance v3, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v3}, Lcom/pengyouwan/sdk/entity/c;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    .end local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .restart local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :try_start_3
    const-string v5, "extra0"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 282
    const-string v5, "extra5"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "esc":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 284
    .end local v0    # "esc":Ljava/lang/String;
    .local v1, "esc":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 285
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v3

    .end local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .restart local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    goto :goto_0

    .line 293
    .end local v1    # "esc":Ljava/lang/String;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .end local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 287
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    .restart local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .restart local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    .restart local v3    # "userInfo":Lcom/pengyouwan/sdk/entity/c;
    goto :goto_1
.end method

.method public b(Lcom/pengyouwan/sdk/entity/c;)J
    .locals 4
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/b/d;->d(Lcom/pengyouwan/sdk/entity/c;)J

    move-result-wide v0

    .line 114
    .local v0, "l":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/b/d;->a(Lcom/pengyouwan/sdk/entity/c;)J

    move-result-wide v0

    .line 118
    :cond_1
    return-wide v0
.end method

.method protected b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/pengyouwan/sdk/entity/c;)J
    .locals 6
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "info"

    const-string v3, "extra0=?"

    .line 166
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 167
    aput-object v0, v4, v5

    .line 165
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 171
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method protected c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/pengyouwan/sdk/b/b;->a()Lcom/pengyouwan/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/pengyouwan/sdk/entity/c;)J
    .locals 7
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x1

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 191
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v5}, Lcom/pengyouwan/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 192
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "info"

    const-string v4, "extra0=?"

    .line 193
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 194
    aput-object v1, v5, v6

    .line 192
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "info"

    .line 218
    const-string v7, "extra8 desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 217
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 219
    .local v9, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 220
    .local v8, "account":Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "extra3"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 223
    :cond_0
    if-nez v8, :cond_1

    .line 224
    const-string v8, ""

    .line 226
    .end local v8    # "account":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method public e()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "info"

    .line 251
    const-string v7, "extra8 desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 250
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 252
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/pengyouwan/sdk/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/pengyouwan/sdk/entity/c;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/b/d;->e()Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 263
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pengyouwan/sdk/entity/c;

    .line 265
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
