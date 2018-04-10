.class public Lcom/pengyouwan/framework/b/a;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pengyouwan/framework/b/a;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/pengyouwan/framework/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "PYW"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/pengyouwan/framework/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/pengyouwan/framework/b/a;->a:Z

    .line 27
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/pengyouwan/framework/b/a;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/pengyouwan/framework/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "PYW"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/pengyouwan/framework/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method
