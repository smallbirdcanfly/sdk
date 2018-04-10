.class public abstract Lcom/pengyouwan/sdk/g/p;
.super Lcom/pengyouwan/sdk/g/a;
.source "InitTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/g/p$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/pengyouwan/sdk/g/p$a;

.field private c:Lcom/pengyouwan/framework/volley/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/volley/p$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/pengyouwan/framework/volley/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/a;-><init>()V

    .line 62
    new-instance v0, Lcom/pengyouwan/sdk/g/p$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/p$1;-><init>(Lcom/pengyouwan/sdk/g/p;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/p;->c:Lcom/pengyouwan/framework/volley/p$b;

    .line 151
    new-instance v0, Lcom/pengyouwan/sdk/g/p$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/g/p$2;-><init>(Lcom/pengyouwan/sdk/g/p;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/g/p;->d:Lcom/pengyouwan/framework/volley/p$a;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/g/p;)Lcom/pengyouwan/sdk/g/p$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/p;->b:Lcom/pengyouwan/sdk/g/p$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "gameKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/base/a;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gamekey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "tid"

    invoke-static {}, Lcom/pengyouwan/sdk/utils/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/pengyouwan/sdk/g/p$a;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/g/p$a;-><init>(Lcom/pengyouwan/sdk/g/p;)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/g/p;->b:Lcom/pengyouwan/sdk/g/p$a;

    .line 52
    iput-object p2, p0, Lcom/pengyouwan/sdk/g/p;->a:Landroid/content/Context;

    .line 53
    const-string v1, "bbb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pyw:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pengyouwan/sdk/e/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/pengyouwan/sdk/e/e;->a()Lcom/pengyouwan/sdk/e/e;

    move-result-object v1

    sget-object v2, Lcom/pengyouwan/sdk/e/i;->b:Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/pengyouwan/sdk/g/p;->c:Lcom/pengyouwan/framework/volley/p$b;

    iget-object v4, p0, Lcom/pengyouwan/sdk/g/p;->d:Lcom/pengyouwan/framework/volley/p$a;

    .line 55
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/pengyouwan/sdk/e/e;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/pengyouwan/framework/volley/p$b;Lcom/pengyouwan/framework/volley/p$a;)V

    .line 57
    return-void
.end method
