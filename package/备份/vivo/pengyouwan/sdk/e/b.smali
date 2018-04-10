.class public Lcom/pengyouwan/sdk/e/b;
.super Lcom/pengyouwan/sdk/e/a;
.source "DownloadRequestPackage.java"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/a;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/pengyouwan/sdk/e/b;->b:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, ""

    return-object v0
.end method

.method public d()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pengyouwan/sdk/e/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method
