.class Lcom/pengyouwan/framework/v4/i;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/i$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pengyouwan/framework/v4/i$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Lcom/pengyouwan/framework/v4/i$a;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/pengyouwan/framework/v4/i$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/i$1;-><init>(Lcom/pengyouwan/framework/v4/i$a;)V

    return-object v0
.end method
