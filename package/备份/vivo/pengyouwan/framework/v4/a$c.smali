.class Lcom/pengyouwan/framework/v4/a$c;
.super Lcom/pengyouwan/framework/v4/a$a;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Lcom/pengyouwan/framework/v4/g;
    .locals 2
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 290
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/c;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "provider":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Lcom/pengyouwan/framework/v4/g;

    invoke-direct {v1, v0}, Lcom/pengyouwan/framework/v4/g;-><init>(Ljava/lang/Object;)V

    .line 294
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Lcom/pengyouwan/framework/v4/a;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Lcom/pengyouwan/framework/v4/a;

    .prologue
    .line 229
    new-instance v0, Lcom/pengyouwan/framework/v4/a$c$1;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/v4/a$c$1;-><init>(Lcom/pengyouwan/framework/v4/a$c;Lcom/pengyouwan/framework/v4/a;)V

    .line 228
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/c;->a(Lcom/pengyouwan/framework/v4/c$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-static {p1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/c;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
