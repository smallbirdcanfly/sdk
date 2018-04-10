.class Lcom/pengyouwan/framework/v4/g$b;
.super Lcom/pengyouwan/framework/v4/g$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/g$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/g;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Lcom/pengyouwan/framework/v4/g;

    .prologue
    .line 48
    new-instance v0, Lcom/pengyouwan/framework/v4/g$b$1;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/v4/g$b$1;-><init>(Lcom/pengyouwan/framework/v4/g$b;Lcom/pengyouwan/framework/v4/g;)V

    .line 47
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/h;->a(Lcom/pengyouwan/framework/v4/h$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
