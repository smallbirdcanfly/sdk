.class Lcom/pengyouwan/framework/v4/g$c;
.super Lcom/pengyouwan/framework/v4/g$d;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/g$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/g;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Lcom/pengyouwan/framework/v4/g;

    .prologue
    .line 89
    new-instance v0, Lcom/pengyouwan/framework/v4/g$c$1;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/v4/g$c$1;-><init>(Lcom/pengyouwan/framework/v4/g$c;Lcom/pengyouwan/framework/v4/g;)V

    .line 88
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/i;->a(Lcom/pengyouwan/framework/v4/i$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
