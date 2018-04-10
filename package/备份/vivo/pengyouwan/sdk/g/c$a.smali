.class public Lcom/pengyouwan/sdk/g/c$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "BindAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/c;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/c;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/c$a;->a:Lcom/pengyouwan/sdk/g/c;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "ack"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/pengyouwan/sdk/g/c$a;->c:I

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/c$a;->b:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/pengyouwan/sdk/g/c$a;->c:I

    return v0
.end method
