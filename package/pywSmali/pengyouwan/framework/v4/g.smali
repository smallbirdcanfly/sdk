.class public Lcom/pengyouwan/framework/v4/g;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/g$a;,
        Lcom/pengyouwan/framework/v4/g$b;,
        Lcom/pengyouwan/framework/v4/g$c;,
        Lcom/pengyouwan/framework/v4/g$d;
    }
.end annotation


# static fields
.field private static final a:Lcom/pengyouwan/framework/v4/g$a;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 140
    new-instance v0, Lcom/pengyouwan/framework/v4/g$c;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/g$c;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/g;->a:Lcom/pengyouwan/framework/v4/g$a;

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 142
    new-instance v0, Lcom/pengyouwan/framework/v4/g$b;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/g$b;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/g;->a:Lcom/pengyouwan/framework/v4/g$a;

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lcom/pengyouwan/framework/v4/g$d;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/g$d;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/g;->a:Lcom/pengyouwan/framework/v4/g$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v0, Lcom/pengyouwan/framework/v4/g;->a:Lcom/pengyouwan/framework/v4/g$a;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/g$a;->a(Lcom/pengyouwan/framework/v4/g;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/g;->b:Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/Object;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/g;->b:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public a(I)Lcom/pengyouwan/framework/v4/d;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/framework/v4/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Lcom/pengyouwan/framework/v4/d;
    .locals 1
    .param p1, "focus"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method
