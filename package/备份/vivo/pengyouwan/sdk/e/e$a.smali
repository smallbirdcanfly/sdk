.class Lcom/pengyouwan/sdk/e/e$a;
.super Ljava/lang/Object;
.source "RequestNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/pengyouwan/sdk/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/pengyouwan/sdk/e/e;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/e/e;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/e/e$a;->a:Lcom/pengyouwan/sdk/e/e;

    return-void
.end method

.method static synthetic a()Lcom/pengyouwan/sdk/e/e;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/pengyouwan/sdk/e/e$a;->a:Lcom/pengyouwan/sdk/e/e;

    return-object v0
.end method
