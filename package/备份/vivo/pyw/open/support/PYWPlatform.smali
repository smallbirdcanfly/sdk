.class public Lcom/pyw/open/support/PYWPlatform;
.super Ljava/lang/Object;
.source "PYWPlatform.java"


# static fields
.field private static mUser:Lcom/pyw/open/support/User;

.field private static onSDKEventListener:Lcom/pyw/open/support/OnSDKEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/pyw/open/support/PYWPlatform;->sendMsg(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/pyw/open/support/PYWPlatform;->setCallback()V

    return-void
.end method

.method static synthetic access$2(Lcom/pyw/open/support/User;)V
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/pyw/open/support/PYWPlatform;->mUser:Lcom/pyw/open/support/User;

    return-void
.end method

.method public static configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 309
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pyw/b/b;->a(Landroid/content/res/Configuration;)V

    .line 310
    return-void
.end method

.method public static exit(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/pyw/open/support/PYWPlatform$7;

    invoke-direct {v2}, Lcom/pyw/open/support/PYWPlatform$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IGameExitListener;)V

    .line 235
    return-void
.end method

.method public static exitGame(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/pyw/open/support/PYWPlatform$6;

    invoke-direct {v2}, Lcom/pyw/open/support/PYWPlatform$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IGameExitListener;)V

    .line 210
    return-void
.end method

.method public static getCurrentUser()Lcom/pyw/open/support/User;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/pyw/open/support/PYWPlatform;->mUser:Lcom/pyw/open/support/User;

    return-object v0
.end method

.method public static getRoleMessage(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/pyw/entity/UserParams;

    invoke-direct {v0}, Lcom/pyw/entity/UserParams;-><init>()V

    .line 242
    .local v0, "bean":Lcom/pyw/entity/UserParams;
    const-string v2, "roleid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "roleID":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/pyw/entity/UserParams;->setRoleid(Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/entity/UserParams;->setRoleName(Ljava/lang/String;)V

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleLevel"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/entity/UserParams;->setRoleLevel(Ljava/lang/String;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverArea"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/entity/UserParams;->setServerArea(Ljava/lang/String;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverAreaName"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/entity/UserParams;->setServerAreaName(Ljava/lang/String;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleCreateTime"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pyw/entity/UserParams;->setRoleCreateTime(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v2

    .line 255
    new-instance v3, Lcom/pyw/open/support/PYWPlatform$8;

    invoke-direct {v3}, Lcom/pyw/open/support/PYWPlatform$8;-><init>()V

    .line 254
    invoke-virtual {v2, v0, v3}, Lcom/pyw/b/b;->a(Lcom/pyw/entity/UserParams;Lcom/pyw/open/IGetRoleListener;)V

    .line 267
    return-void

    .line 245
    .end local v1    # "roleID":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "roleID":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static hideFloatView()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->d()V

    .line 120
    return-void
.end method

.method public static initSDK(Landroid/app/Application;Landroid/content/Context;Lcom/pyw/open/support/OnSDKEventListener;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pyw/open/support/OnSDKEventListener;

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 47
    :cond_0
    sput-object p2, Lcom/pyw/open/support/PYWPlatform;->onSDKEventListener:Lcom/pyw/open/support/OnSDKEventListener;

    .line 48
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    new-instance v1, Lcom/pyw/open/support/PYWPlatform$1;

    invoke-direct {v1}, Lcom/pyw/open/support/PYWPlatform$1;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/pyw/b/b;->a(Landroid/content/Context;Lcom/pyw/open/IDefListener;)V

    goto :goto_0
.end method

.method public static logout()V
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/pyw/open/support/PYWPlatform$5;

    invoke-direct {v2}, Lcom/pyw/open/support/PYWPlatform$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/ILogoutListener;)V

    .line 185
    return-void
.end method

.method public static newIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pyw/b/b;->a(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 314
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/pyw/b/b;->a(IILandroid/content/Intent;)V

    .line 316
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->g()V

    .line 290
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->e()V

    .line 282
    return-void
.end method

.method public static onRestart()V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->i()V

    .line 294
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->f()V

    .line 286
    return-void
.end method

.method public static onStart()V
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->j()V

    .line 302
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->h()V

    .line 298
    return-void
.end method

.method public static openChargeCenter(Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "isAnyAmount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_id"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "productId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pay_money"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "price":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "order_id"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "mOrderID":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_name"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "productName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "product_extra"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "extension":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v1, "2"

    .line 134
    .local v1, "charge_type":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "role_name"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "roleName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service_area"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "service_area":Ljava/lang/String;
    new-instance v0, Lcom/pyw/open/PayParams;

    invoke-direct {v0}, Lcom/pyw/open/PayParams;-><init>()V

    .line 137
    .local v0, "bean":Lcom/pyw/open/PayParams;
    invoke-virtual {v0, v1}, Lcom/pyw/open/PayParams;->setChargeType(Ljava/lang/String;)V

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 139
    invoke-virtual {v0, v2}, Lcom/pyw/open/PayParams;->setExtension(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {v0, v7}, Lcom/pyw/open/PayParams;->setRoleName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v8}, Lcom/pyw/open/PayParams;->setServerName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v3}, Lcom/pyw/open/PayParams;->setOrderID(Ljava/lang/String;)V

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/pyw/open/PayParams;->setPrice(I)V

    .line 144
    invoke-virtual {v0, v5}, Lcom/pyw/open/PayParams;->setProductId(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v6}, Lcom/pyw/open/PayParams;->setProductName(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v9

    new-instance v10, Lcom/pyw/open/support/PYWPlatform$4;

    invoke-direct {v10}, Lcom/pyw/open/support/PYWPlatform$4;-><init>()V

    invoke-virtual {v9, v0, v10}, Lcom/pyw/b/b;->a(Lcom/pyw/open/PayParams;Lcom/pyw/open/IPayListener;)V

    .line 166
    return-void

    .line 133
    .end local v0    # "bean":Lcom/pyw/open/PayParams;
    .end local v1    # "charge_type":Ljava/lang/String;
    .end local v7    # "roleName":Ljava/lang/String;
    .end local v8    # "service_area":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    goto :goto_0
.end method

.method public static openLogin(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/pyw/open/support/PYWPlatform$3;

    invoke-direct {v2}, Lcom/pyw/open/support/PYWPlatform$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/pyw/b/b;->a(Ljava/util/HashMap;Lcom/pyw/open/IUserListener;)V

    .line 106
    return-void
.end method

.method private static sendMsg(ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "code"    # I
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 76
    sget-object v0, Lcom/pyw/open/support/PYWPlatform;->onSDKEventListener:Lcom/pyw/open/support/OnSDKEventListener;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/pyw/open/support/PYWPlatform;->onSDKEventListener:Lcom/pyw/open/support/OnSDKEventListener;

    invoke-interface {v0, p0, p1}, Lcom/pyw/open/support/OnSDKEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 79
    :cond_0
    return-void
.end method

.method private static setCallback()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    new-instance v1, Lcom/pyw/open/support/PYWPlatform$2;

    invoke-direct {v1}, Lcom/pyw/open/support/PYWPlatform$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pyw/b/b;->a(Lcom/pyw/open/ILogoutCallback;)V

    .line 73
    return-void
.end method

.method public static showFloatView()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/pyw/b/b;->a()Lcom/pyw/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pyw/b/b;->c()V

    .line 113
    return-void
.end method
