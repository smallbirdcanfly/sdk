.class Lcom/pengyouwan/framework/v4/l;
.super Ljava/lang/Object;
.source "ActivityCompatHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method static a(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 16
    return-void
.end method
