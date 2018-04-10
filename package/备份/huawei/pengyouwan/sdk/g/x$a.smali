.class public Lcom/pengyouwan/sdk/g/x$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "SetLoginPasswordTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/x;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/x;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/x$a;->a:Lcom/pengyouwan/sdk/g/x;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/x$a;->b:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/x$a;->b:Ljava/lang/String;

    return-object v0
.end method
