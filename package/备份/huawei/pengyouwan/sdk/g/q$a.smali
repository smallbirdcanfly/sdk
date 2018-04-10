.class public Lcom/pengyouwan/sdk/g/q$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "LoginNoPwdTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/q;

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/q;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/q$a;->a:Lcom/pengyouwan/sdk/g/q;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/q$a;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 118
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/q$a;->c:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/q$a;->c:Ljava/lang/String;

    return-object v0
.end method
