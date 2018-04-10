.class public Lcom/pengyouwan/sdk/e/c;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/pengyouwan/framework/base/e;


# static fields
.field private static final serialVersionUID:J = -0x12850b2105188c96L


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .param p1, "isOk"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/e/c;->a:Z

    .line 27
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/e/c;->a:Z

    return v0
.end method
