.class public Lcom/pengyouwan/sdk/g/o$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "GetSmsCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/o;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/o;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/o$a;->a:Lcom/pengyouwan/sdk/g/o;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/g/o$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "isReg"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/pengyouwan/sdk/g/o$a;->b:I

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/o$a;->d:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/o$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "passport"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/o$a;->c:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/pengyouwan/sdk/g/o$a;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/o$a;->c:Ljava/lang/String;

    return-object v0
.end method
