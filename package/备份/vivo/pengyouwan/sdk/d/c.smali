.class public Lcom/pengyouwan/sdk/d/c;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/d/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/pengyouwan/sdk/ui/a/d;

.field private e:Lcom/a/a/a/a;

.field private f:Z

.field private g:Z

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->g:Z

    .line 70
    new-instance v0, Lcom/pengyouwan/sdk/d/c$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/d/c$1;-><init>(Lcom/pengyouwan/sdk/d/c;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/c;->h:Landroid/content/ServiceConnection;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 233
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 236
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 237
    :cond_0
    const/4 v2, 0x0

    .line 248
    :goto_0
    return-object v2

    .line 240
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 241
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 242
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 243
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 247
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a()Lcom/pengyouwan/sdk/d/c;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/pengyouwan/sdk/d/c$a;->a()Lcom/pengyouwan/sdk/d/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->k()V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/d/c;Lcom/a/a/a/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/c;->e:Lcom/a/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/d/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->g()V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 464
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 469
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    .line 470
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->n()V

    .line 102
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 103
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/b;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    new-instance v1, Lcom/pengyouwan/sdk/d/c$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/d/c$2;-><init>(Lcom/pengyouwan/sdk/d/c;)V

    .line 128
    .local v1, "mTask":Lcom/pengyouwan/sdk/g/p;
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/p;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 139
    .end local v1    # "mTask":Lcom/pengyouwan/sdk/g/p;
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->c()V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 135
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/d/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->c()V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/d/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->g()V

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 479
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_extra_erro"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method private c()V
    .locals 13

    .prologue
    .line 145
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pengyouwan/sdk/d/h;->d()I

    move-result v10

    const v11, 0xa003

    if-ne v10, v11, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->j()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->e()Z

    move-result v10

    if-nez v10, :cond_3

    .line 149
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pengyouwan/sdk/d/h;->e()Z

    move-result v10

    if-nez v10, :cond_3

    .line 151
    iget-object v10, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v10}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->h()V

    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pengyouwan/sdk/d/h;->e()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 159
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto :goto_0

    .line 162
    :cond_4
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v4, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 165
    .local v8, "time":J
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, "tid":Ljava/lang/String;
    iget-object v10, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    invoke-static {v10}, Lcom/pengyouwan/sdk/utils/a;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 167
    .local v6, "packageName":Ljava/lang/String;
    const-string v10, "pyw!@$"

    invoke-static {v7, v10}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "apiSec2":Ljava/lang/String;
    const-string v10, "key1"

    invoke-virtual {v1, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    const-string v10, "key2"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v10, "key3"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v10, "key4"

    .line 172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 171
    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v10, "com.yunyou.pengyouwan.IDataService"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    iget-object v10, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    .line 175
    invoke-static {v10, v4}, Lcom/pengyouwan/sdk/d/c;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 177
    .local v5, "intentex":Landroid/content/Intent;
    if-eqz v5, :cond_5

    .line 178
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 179
    .local v3, "eintent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    .line 180
    iget-object v11, p0, Lcom/pengyouwan/sdk/d/c;->h:Landroid/content/ServiceConnection;

    .line 181
    const/4 v12, 0x1

    .line 179
    invoke-virtual {v10, v3, v11, v12}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/pengyouwan/sdk/d/c;->g:Z

    .line 182
    iget-boolean v10, p0, Lcom/pengyouwan/sdk/d/c;->g:Z

    if-nez v10, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    .end local v0    # "apiSec2":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "eintent":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentex":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "tid":Ljava/lang/String;
    .end local v8    # "time":J
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto/16 :goto_0

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "apiSec2":Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intentex":Landroid/content/Intent;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "tid":Ljava/lang/String;
    .restart local v8    # "time":J
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    .line 202
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->g()Lorg/json/JSONArray;

    move-result-object v3

    .line 203
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->a()I

    move-result v5

    if-lez v5, :cond_2

    .line 219
    new-instance v5, Lcom/pengyouwan/sdk/ui/a/l;

    iget-object v6, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    iget-object v7, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    invoke-direct {v5, v6, v7}, Lcom/pengyouwan/sdk/ui/a/l;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/ui/a/l;->show()V

    .line 220
    iput-boolean v8, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 227
    :goto_1
    return-void

    .line 205
    :cond_0
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 206
    .local v2, "jobj":Lorg/json/JSONObject;
    new-instance v4, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 207
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v5, "account"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 208
    const-string v5, "last_buy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->a(I)V

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 222
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->i()V

    goto :goto_1

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->l()V

    return-void
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->m()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/d;->f()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 258
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->g()V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 267
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 268
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h;

    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    .line 269
    return-void
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->i()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v1, p0, Lcom/pengyouwan/sdk/d/c;->g:Z

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->n()V

    .line 289
    new-instance v1, Lcom/pengyouwan/sdk/d/c$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/d/c$3;-><init>(Lcom/pengyouwan/sdk/d/c;)V

    .line 308
    .local v1, "loginTask":Lcom/pengyouwan/sdk/g/r;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 317
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    :try_start_1
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/d/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    goto :goto_0

    .line 313
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    :catchall_0
    move-exception v2

    .line 314
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 315
    throw v2
.end method

.method private i()V
    .locals 6

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->n()V

    .line 324
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 326
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/d/c$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/d/c$4;-><init>(Lcom/pengyouwan/sdk/d/c;)V

    .line 344
    .local v1, "task":Lcom/pengyouwan/sdk/g/q;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->d()I

    move-result v3

    const v4, 0xa003

    if-ne v3, v4, :cond_0

    .line 345
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lcom/pengyouwan/sdk/b/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-virtual {v1, v3, v4, v5}, Lcom/pengyouwan/sdk/g/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 358
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/q;
    :goto_1
    return-void

    .line 348
    .restart local v1    # "task":Lcom/pengyouwan/sdk/g/q;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v5

    .line 348
    invoke-virtual {v1, v4, v3, v5}, Lcom/pengyouwan/sdk/g/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/q;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    :try_start_2
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pengyouwan/sdk/d/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    goto :goto_1

    .line 355
    .end local v0    # "e":Lcom/pengyouwan/framework/base/a;
    :catchall_0
    move-exception v3

    .line 356
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 357
    throw v3
.end method

.method private j()V
    .locals 4

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->n()V

    .line 365
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/b/d;->f()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 366
    new-instance v1, Lcom/pengyouwan/sdk/d/c$5;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/d/c$5;-><init>(Lcom/pengyouwan/sdk/d/c;)V

    .line 385
    .local v1, "loginTask":Lcom/pengyouwan/sdk/g/r;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 388
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/d/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 7

    .prologue
    .line 399
    :try_start_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->e:Lcom/a/a/a/a;

    invoke-interface {v5}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 401
    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/pengyouwan/sdk/utils/a;->b([B)[B

    move-result-object v1

    .line 402
    .local v1, "decode":[B
    new-instance v3, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 403
    .local v3, "result":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "userStr":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 405
    new-instance v5, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v5}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    iput-object v5, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 406
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 407
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "decode":[B
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "userStr":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->e()Z

    move-result v5

    if-nez v5, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->h()V

    .line 419
    :goto_1
    return-void

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto :goto_0

    .line 417
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->f()V

    goto :goto_1
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 425
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->g()V

    .line 426
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 427
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 428
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v0

    .line 429
    .local v0, "accountType":I
    if-ne v0, v6, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->d()V

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v2, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v3, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    const/4 v4, 0x0

    .line 433
    const v5, 0xa004

    .line 432
    invoke-direct {v2, v3, v1, v4, v5}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 433
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    .line 434
    iput-boolean v6, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const v4, 0xa005

    const/4 v3, 0x0

    .line 442
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->g()V

    .line 443
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->o()V

    .line 445
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->d()I

    move-result v0

    const v1, 0xa003

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/b/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 449
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    .line 454
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    .line 455
    return-void

    .line 451
    :cond_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/j;

    iget-object v2, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/pengyouwan/sdk/ui/a/j;-><init>(Landroid/app/Activity;Lcom/pengyouwan/sdk/entity/c;ZI)V

    .line 452
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/j;->show()V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    .line 493
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c;->d:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/c;->a:Landroid/app/Activity;

    .line 91
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/d/c;->f:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/pengyouwan/sdk/d/c;->b()V

    .line 94
    :cond_0
    return-void
.end method
