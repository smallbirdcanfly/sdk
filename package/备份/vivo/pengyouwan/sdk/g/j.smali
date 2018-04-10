.class public abstract Lcom/pengyouwan/sdk/g/j;
.super Lcom/pengyouwan/sdk/g/a;
.source "CreateOrderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/g/j$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/pengyouwan/framework/volley/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 100
    new-instance v0, Lcom/pengyouwan/sdk/g/j$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/j$1;-><init>(Lcom/pengyouwan/sdk/g/j;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/j;->e:Lcom/pengyouwan/framework/volley/p$b;

    .line 149
    new-instance v0, Lcom/pengyouwan/sdk/g/j$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/j$2;-><init>(Lcom/pengyouwan/sdk/g/j;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/j;->f:Lcom/pengyouwan/framework/volley/p$a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/j;)Lcom/pengyouwan/sdk/g/j$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j;->a:Lcom/pengyouwan/sdk/g/j$a;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/g/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/g/j;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "vouvhers"    # Ljava/lang/String;
    .param p2, "total"    # Ljava/lang/String;
    .param p3, "paytype"    # Ljava/lang/String;
    .param p4, "cpParams"    # Ljava/lang/String;
    .param p5, "cpProductId"    # Ljava/lang/String;
    .param p6, "productName"    # Ljava/lang/String;
    .param p7, "credit"    # I
    .param p8, "chargetype"    # I
    .param p9, "roleName"    # Ljava/lang/String;
    .param p10, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "tid":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v8

    .line 46
    .local v8, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "account":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v9

    .line 48
    invoke-virtual {v9}, Lcom/pengyouwan/sdk/d/b;->c()Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-static {v7, v9}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "api2":Ljava/lang/String;
    invoke-static {}, Lcom/pengyouwan/sdk/d/b;->a()Lcom/pengyouwan/sdk/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pengyouwan/sdk/d/b;->b()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "gameId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-static {v9}, Lcom/pengyouwan/framework/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "sign":Ljava/lang/String;
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/j;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/pengyouwan/sdk/g/j;->c:Ljava/lang/String;

    .line 55
    const-string v9, "sign"

    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v9, "cp_price"

    invoke-virtual {v5, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v9, "charge_type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v9, "account"

    invoke-virtual {v5, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v9, "tid"

    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v9, "couponids"

    invoke-virtual {v5, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v9, "cp_params"

    invoke-static/range {p4 .. p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v9, "cp_prodid"

    move-object/from16 v0, p5

    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v9, "pay_amt"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v9, "pay_type"

    move-object/from16 v0, p3

    invoke-virtual {v5, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v9, "gameid"

    invoke-virtual {v5, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v9, "rolename"

    invoke-static/range {p9 .. p9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v9, "service"

    invoke-static/range {p10 .. p10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v9, "order_desc"

    invoke-static/range {p6 .. p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 70
    const-string v9, "passport"

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v9, "credit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v9, "passport_token"

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iput-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    .line 82
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    const-string v10, "body"

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    const-string v10, "userid"

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    const-string v10, "token"

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    const-string v10, "total_fee"

    invoke-virtual {v9, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v9, p0, Lcom/pengyouwan/sdk/g/j;->d:Lorg/json/JSONObject;

    const-string v10, "device_info"

    .line 87
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->c()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/pengyouwan/sdk/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 86
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    new-instance v9, Lcom/pengyouwan/sdk/g/j$a;

    invoke-direct {v9, p0}, Lcom/pengyouwan/sdk/g/j$a;-><init>(Lcom/pengyouwan/sdk/g/j;)V

    iput-object v9, p0, Lcom/pengyouwan/sdk/g/j;->a:Lcom/pengyouwan/sdk/g/j$a;

    .line 94
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v9

    .line 95
    sget-object v10, Lcom/pengyouwan/sdk/e/i;->v:Ljava/lang/String;

    iget-object v11, p0, Lcom/pengyouwan/sdk/g/j;->e:Lcom/pengyouwan/framework/volley/p$b;

    .line 96
    iget-object v12, p0, Lcom/pengyouwan/sdk/g/j;->f:Lcom/pengyouwan/framework/volley/p$a;

    .line 94
    invoke-virtual {v9, v5, v10, v11, v12}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 97
    return-void

    .line 74
    :cond_0
    const-string v9, "passport"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v9, "credit"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v9, "token"

    invoke-virtual {v8}, Lcom/pengyouwan/sdk/entity/c;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
