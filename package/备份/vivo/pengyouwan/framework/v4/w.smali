.class public Lcom/pengyouwan/framework/v4/w;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/w$a;,
        Lcom/pengyouwan/framework/v4/w$b;,
        Lcom/pengyouwan/framework/v4/w$c;,
        Lcom/pengyouwan/framework/v4/w$d;
    }
.end annotation


# static fields
.field static final a:Lcom/pengyouwan/framework/v4/w$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lcom/pengyouwan/framework/v4/w$c;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/w$c;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/w;->a:Lcom/pengyouwan/framework/v4/w$d;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/v4/w$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/w$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/w;->a:Lcom/pengyouwan/framework/v4/w$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    sget-object v0, Lcom/pengyouwan/framework/v4/w;->a:Lcom/pengyouwan/framework/v4/w$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/w$d;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "modifiers"    # I

    .prologue
    .line 188
    sget-object v0, Lcom/pengyouwan/framework/v4/w;->a:Lcom/pengyouwan/framework/v4/w$d;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/w$d;->a(II)Z

    move-result v0

    return v0
.end method
