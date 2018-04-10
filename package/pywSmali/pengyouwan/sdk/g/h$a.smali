.class public Lcom/pengyouwan/sdk/g/h$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "CheckSmsCodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/h;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/h;)V
    .locals 1

    .prologue
    .line 89
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/h$a;->a:Lcom/pengyouwan/sdk/g/h;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/g/h$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "accountNum"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/pengyouwan/sdk/g/h$a;->b:I

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/h$a;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/h$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "isCheckCode"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/h$a;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/pengyouwan/sdk/g/h$a;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/h$a;->c:Ljava/lang/String;

    return-object v0
.end method
