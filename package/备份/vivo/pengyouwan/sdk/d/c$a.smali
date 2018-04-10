.class Lcom/pengyouwan/sdk/d/c$a;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/pengyouwan/sdk/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/pengyouwan/sdk/d/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/d/c;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/d/c$a;->a:Lcom/pengyouwan/sdk/d/c;

    return-void
.end method

.method static synthetic a()Lcom/pengyouwan/sdk/d/c;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/pengyouwan/sdk/d/c$a;->a:Lcom/pengyouwan/sdk/d/c;

    return-object v0
.end method
