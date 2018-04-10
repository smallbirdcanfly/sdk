.class Lcom/pengyouwan/framework/v4/h;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/h$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pengyouwan/framework/v4/h$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "bridge"    # Lcom/pengyouwan/framework/v4/h$a;

    .prologue
    .line 41
    new-instance v0, Lcom/pengyouwan/framework/v4/h$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/h$1;-><init>(Lcom/pengyouwan/framework/v4/h$a;)V

    return-object v0
.end method
