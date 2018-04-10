.class Lcom/pyw/plugin/huawei/HWChannel$2;
.super Ljava/lang/Object;
.source "HWChannel.java"

# interfaces
.implements Lcom/huawei/android/hms/agent/game/handler/LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/huawei/HWChannel;->login(Landroid/content/Context;Ljava/util/HashMap;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/huawei/HWChannel;

.field private final synthetic val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/huawei/HWChannel;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    iput-object p2, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    iput-object p3, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->val$context:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pyw/plugin/huawei/HWChannel$2;)Lcom/pyw/plugin/huawei/HWChannel;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    return-object v0
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/pyw/plugin/huawei/HWChannel$2$2;

    invoke-direct {v1, p0}, Lcom/pyw/plugin/huawei/HWChannel$2$2;-><init>(Lcom/pyw/plugin/huawei/HWChannel$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public onResult(ILcom/huawei/hms/support/api/entity/game/GameUserData;)V
    .locals 7
    .param p1, "retCode"    # I
    .param p2, "userData"    # Lcom/huawei/hms/support/api/entity/game/GameUserData;

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 74
    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getIsAuth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "px"

    const-string v1, "channel--login susess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v6, Lcom/pyw/entity/UserParams;

    invoke-direct {v6}, Lcom/pyw/entity/UserParams;-><init>()V

    .line 83
    .local v6, "pa":Lcom/pyw/entity/UserParams;
    invoke-virtual {p2}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pyw/entity/UserParams;->setSdkUserID(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Lcom/huawei/hms/support/api/entity/game/GameUserData;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pyw/plugin/huawei/GlobalParam;->PLAYID:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    invoke-static {v0, p2}, Lcom/pyw/plugin/huawei/HWChannel;->access$0(Lcom/pyw/plugin/huawei/HWChannel;Lcom/huawei/hms/support/api/entity/game/GameUserData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/pyw/entity/UserParams;->setToken(Ljava/lang/String;)V

    .line 87
    const-string v0, "100236163"

    .line 88
    const-string v1, "890086000102068711"

    sget-object v2, Lcom/pyw/plugin/huawei/GlobalParam;->GAME_PRIV_KEY:Ljava/lang/String;

    .line 89
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqmkBrytv1wApGcONN27iOgEAHA7gbDFkc/lTvZIheTqYnWytXEpEeWaqhpr8qhdBVcoWHT8xWd0qSYm236h2Kp0AkoSZenR8eB/s4pyd2+DbbopYXqB35qpDzFrgq51ZoyR+FHPkS36EqIvZ+QFThhVz7yVa5fhqtTNbOs+TTl3dK/QTRp+OzcNUYfZqwxqXlvErV7ObeL445kM75T0Yn+ko5zZFDbf550rjhWo+kTmomLIb5hK64j5qTK7e6X6ZSQUJ7g4/BvifI2Pa+lKBNKfitfhUZNzIQY9xiGQst/f7bbLlMRuBIz+yuaAt43vgOFt+J9TDAojyAh4xwRLKjwIDAQAB"

    .line 90
    new-instance v5, Lcom/pyw/plugin/huawei/HWChannel$2$1;

    iget-object v4, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    invoke-direct {v5, p0, v6, v4}, Lcom/pyw/plugin/huawei/HWChannel$2$1;-><init>(Lcom/pyw/plugin/huawei/HWChannel$2;Lcom/pyw/entity/UserParams;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    move-object v4, p2

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/huawei/android/hms/agent/game/GameLoginSignUtil;->checkLoginSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/support/api/entity/game/GameUserData;Lcom/huawei/android/hms/agent/game/handler/ICheckLoginSignHandler;)V

    .line 117
    .end local v6    # "pa":Lcom/pyw/entity/UserParams;
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->this$0:Lcom/pyw/plugin/huawei/HWChannel;

    const/4 v1, 0x0

    .line 112
    const-string v2, "login auth failed check game auth sign error"

    .line 113
    iget-object v3, p0, Lcom/pyw/plugin/huawei/HWChannel$2;->val$callback:Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;

    .line 111
    invoke-static {v0, v1, v2, v3}, Lcom/pyw/plugin/huawei/HWChannel;->access$2(Lcom/pyw/plugin/huawei/HWChannel;ILjava/lang/String;Lcom/pyw/plugin/PYWPluginExecutor$executeCallback;)V

    .line 114
    const-string v0, "px"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u534e\u4e3a\u767b\u5f55 \u5931\u8d25 \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
