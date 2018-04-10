.class Lcom/pengyouwan/framework/v4/av$b;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/av$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/pengyouwan/framework/v4/aw;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
