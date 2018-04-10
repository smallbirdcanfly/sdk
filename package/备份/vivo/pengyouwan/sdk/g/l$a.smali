.class public Lcom/pengyouwan/sdk/g/l$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "DeleteAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/l;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/l;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/l$a;->a:Lcom/pengyouwan/sdk/g/l;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/l$a;->b:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/l$a;->b:Ljava/lang/String;

    return-object v0
.end method
