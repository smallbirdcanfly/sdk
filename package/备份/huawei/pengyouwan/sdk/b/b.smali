.class public Lcom/pengyouwan/sdk/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PYWDBHelper.java"


# static fields
.field private static volatile a:Lcom/pengyouwan/sdk/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "pywDb.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    return-void
.end method

.method public static a()Lcom/pengyouwan/sdk/b/b;
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lcom/pengyouwan/sdk/b/b;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/pengyouwan/sdk/b/b;

    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pengyouwan/sdk/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/b/b;->a:Lcom/pengyouwan/sdk/b/b;

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS info (id INTEGER PRIMARY KEY,extra0 TEXT,extra1 TEXT,extra2 INTEGER,extra3 TEXT,extra4 TEXT,extra5 TEXT,extra6 TEXT,extra7 INTEGER,extra8 INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const-string v0, "CREATE TABLE IF NOT EXISTS statics (id INTEGER PRIMARY KEY,extra1 TEXT,extra3 TEXT,extra2 TEXT,extra4 TEXT,extra5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS behavioral (id INTEGER PRIMARY KEY,extra1 INTEGER,extra3 TEXT,extra2 TEXT,extra4 TEXT,extra5 TEXT,extra7 TEXT,extra8 TEXT,extra6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "CREATE TABLE IF NOT EXISTS statics (id INTEGER PRIMARY KEY,extra1 TEXT,extra3 TEXT,extra2 TEXT,extra4 TEXT,extra5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS behavioral (id INTEGER PRIMARY KEY,extra1 INTEGER,extra3 TEXT,extra2 TEXT,extra4 TEXT,extra5 TEXT,extra7 TEXT,extra8 TEXT,extra6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string v0, "CREATE TABLE IF NOT EXISTS behavioral (id INTEGER PRIMARY KEY,extra1 INTEGER,extra3 TEXT,extra2 TEXT,extra4 TEXT,extra5 TEXT,extra7 TEXT,extra8 TEXT,extra6 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
