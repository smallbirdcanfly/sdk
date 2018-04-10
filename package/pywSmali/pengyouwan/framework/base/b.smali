.class public abstract Lcom/pengyouwan/framework/base/b;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "theme"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/pengyouwan/framework/base/b;->setOwnerActivity(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/base/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/b;->a()V

    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method
