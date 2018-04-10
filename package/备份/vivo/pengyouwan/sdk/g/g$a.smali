.class public Lcom/pengyouwan/sdk/g/g$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "CheckSmsAndBindTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/g;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/g;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/g$a;->a:Lcom/pengyouwan/sdk/g/g;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/pengyouwan/sdk/g/g$a;->c:I

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/g$a;->b:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/pengyouwan/sdk/g/g$a;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/g$a;->b:Ljava/lang/String;

    return-object v0
.end method
