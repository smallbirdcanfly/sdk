.class public Lcom/pengyouwan/sdk/g/k$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "DelCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/k;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/k;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/k$a;->a:Lcom/pengyouwan/sdk/g/k;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/k$a;->b:Ljava/lang/String;

    .line 95
    return-void
.end method
