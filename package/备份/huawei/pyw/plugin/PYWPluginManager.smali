.class public Lcom/pyw/plugin/PYWPluginManager;
.super Ljava/lang/Object;
.source "PYWPluginManager.java"


# static fields
.field private static final PLUGIN_PACKAGE_PREFIX:Ljava/lang/String; = "com.pyw.plugin."

.field private static final TAG:Ljava/lang/String; = "PYWPluginManager"

.field private static sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

.field private static sIsLoaded:Z

.field private static sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pyw/plugin/PYWPluginManager;->sIsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final destroyAll(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onDestroy(Landroid/content/Context;)V

    .line 213
    :cond_0
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_1

    .line 214
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onDestroy(Landroid/content/Context;)V

    .line 216
    :cond_1
    return-void
.end method

.method public static final getChannelPlugin(Landroid/content/Context;)Lcom/pyw/plugin/PYWPlugin;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getPYWChannelPlugin(Landroid/content/Context;)Lcom/pyw/plugin/PYWPlugin;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final declared-synchronized isReady()Z
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/pyw/plugin/PYWPluginManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/pyw/plugin/PYWPluginManager;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized load(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v7, Lcom/pyw/plugin/PYWPluginManager;

    monitor-enter v7

    :try_start_0
    sget-boolean v6, Lcom/pyw/plugin/PYWPluginManager;->sIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 72
    :cond_0
    monitor-exit v7

    return-void

    .line 47
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/pyw/plugin/PYWPluginManager;->sIsLoaded:Z

    .line 49
    invoke-static {p0}, Lcom/pyw/plugin/PYWPluginManager;->scanPlugins(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 50
    .local v5, "pulginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .local v1, "cls":Ljava/lang/Class;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pyw/plugin/PYWPlugin;

    .line 54
    .local v4, "plugin":Lcom/pyw/plugin/PYWPlugin;
    invoke-virtual {v4, p0}, Lcom/pyw/plugin/PYWPlugin;->onCreate(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v4, p0}, Lcom/pyw/plugin/PYWPlugin;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/pyw/plugin/PYWPlugin;->getCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "category":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 59
    const-string v8, "pyw_channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    sput-object v4, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    .line 61
    const-string v8, "PYWPluginManager"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "plugin":Lcom/pyw/plugin/PYWPlugin;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "PYWPluginManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "load plugin error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "pulginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 62
    .restart local v0    # "category":Ljava/lang/String;
    .restart local v1    # "cls":Ljava/lang/Class;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "plugin":Lcom/pyw/plugin/PYWPlugin;
    .restart local v5    # "pulginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    :cond_3
    :try_start_4
    const-string v8, "channel"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    sput-object v4, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    .line 64
    const-string v8, "PYWPluginManager"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pengyouwan/framework/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static final pluginsActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0, p1, p2}, Lcom/pyw/plugin/PYWPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0, p1, p2}, Lcom/pyw/plugin/PYWPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static final pluginsConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 195
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    :cond_0
    return-void
.end method

.method public static final pluginsNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 180
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 183
    :cond_0
    return-void
.end method

.method public static final pluginsPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onPause(Landroid/content/Context;)V

    .line 140
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onPause(Landroid/content/Context;)V

    .line 143
    :cond_0
    return-void
.end method

.method public static final pluginsRestart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onRestart(Landroid/content/Context;)V

    .line 156
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onRestart(Landroid/content/Context;)V

    .line 159
    :cond_0
    return-void
.end method

.method public static final pluginsResume(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onResume(Landroid/content/Context;)V

    .line 148
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onResume(Landroid/content/Context;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static final pluginsStart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onStart(Landroid/content/Context;)V

    .line 172
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onStart(Landroid/content/Context;)V

    .line 175
    :cond_0
    return-void
.end method

.method public static final pluginsStop(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {}, Lcom/pyw/plugin/PYWPluginManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sPYWChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onStop(Landroid/content/Context;)V

    .line 164
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/pyw/plugin/PYWPluginManager;->sChannelPlugin:Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v0, p0}, Lcom/pyw/plugin/PYWPlugin;->onStop(Landroid/content/Context;)V

    .line 167
    :cond_0
    return-void
.end method

.method private static scanPlugins(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<",
            "Lcom/pyw/plugin/PYWPlugin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v8, "pluginsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 105
    .local v1, "df":Ldalvik/system/DexFile;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 107
    .local v6, "packagePath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/DexFile;

    invoke-direct {v2, v6}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "df":Ldalvik/system/DexFile;
    .local v2, "df":Ldalvik/system/DexFile;
    invoke-virtual {v2}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 114
    .local v4, "n":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_2

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v7, "pluginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    move-object v1, v2

    .line 134
    .end local v2    # "df":Ldalvik/system/DexFile;
    .end local v4    # "n":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "packagePath":Ljava/lang/String;
    .end local v7    # "pluginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    .restart local v1    # "df":Ldalvik/system/DexFile;
    :goto_2
    return-object v7

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "PYWPluginManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pengyouwan/framework/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v7, 0x0

    goto :goto_2

    .line 115
    .end local v1    # "df":Ldalvik/system/DexFile;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "df":Ldalvik/system/DexFile;
    .restart local v4    # "n":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6    # "packagePath":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, "p":Ljava/lang/String;
    const-string v10, "com.pyw.plugin."

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "$"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 117
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v5    # "p":Ljava/lang/String;
    .restart local v7    # "pluginClasses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<Lcom/pyw/plugin/PYWPlugin;>;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 122
    .local v9, "s":Ljava/lang/String;
    const/16 v11, 0x2f

    const/16 v12, 0x2e

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 124
    :try_start_1
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "cls":Ljava/lang/Class;
    const-class v11, Lcom/pyw/plugin/PYWPlugin;

    if-eq v0, v11, :cond_1

    .line 126
    const-class v11, Lcom/pyw/plugin/PYWPlugin;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 127
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 129
    .end local v0    # "cls":Ljava/lang/Class;
    :catch_1
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
