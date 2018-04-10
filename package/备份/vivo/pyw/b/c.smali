.class public Lcom/pyw/b/c;
.super Ljava/lang/Object;
.source "SDKEventListener.java"

# interfaces
.implements Lcom/pengyouwan/sdk/open/OnSDKEventListener;


# static fields
.field private static b:Lcom/pyw/b/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pyw/b/c;->a:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Lcom/pyw/b/a;)V
    .locals 0
    .param p0, "back"    # Lcom/pyw/b/a;

    .prologue
    .line 24
    sput-object p0, Lcom/pyw/b/c;->b:Lcom/pyw/b/a;

    .line 25
    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 29
    sget-object v0, Lcom/pyw/b/c;->b:Lcom/pyw/b/a;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/pyw/b/c;->b:Lcom/pyw/b/a;

    invoke-interface {v0, p1, p2}, Lcom/pyw/b/a;->onEvent(ILandroid/os/Bundle;)V

    .line 33
    :cond_0
    return-void
.end method
