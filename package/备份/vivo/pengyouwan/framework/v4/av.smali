.class public Lcom/pengyouwan/framework/v4/av;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/av$a;,
        Lcom/pengyouwan/framework/v4/av$b;,
        Lcom/pengyouwan/framework/v4/av$c;
    }
.end annotation


# static fields
.field static final a:Lcom/pengyouwan/framework/v4/av$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/pengyouwan/framework/v4/av$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/av$b;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/av;->a:Lcom/pengyouwan/framework/v4/av$c;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/v4/av$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/av$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/av;->a:Lcom/pengyouwan/framework/v4/av$c;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 73
    sget-object v0, Lcom/pengyouwan/framework/v4/av;->a:Lcom/pengyouwan/framework/v4/av$c;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/av$c;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
