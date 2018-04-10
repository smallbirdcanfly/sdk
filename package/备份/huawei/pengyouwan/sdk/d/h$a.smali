.class Lcom/pengyouwan/sdk/d/h$a;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/pengyouwan/sdk/d/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/pengyouwan/sdk/d/h;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/d/h;-><init>()V

    sput-object v0, Lcom/pengyouwan/sdk/d/h$a;->a:Lcom/pengyouwan/sdk/d/h;

    return-void
.end method

.method static synthetic a()Lcom/pengyouwan/sdk/d/h;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/pengyouwan/sdk/d/h$a;->a:Lcom/pengyouwan/sdk/d/h;

    return-object v0
.end method
