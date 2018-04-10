.class public Lcom/pengyouwan/sdk/g/b$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "AccountRegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/b;

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/b;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/b$a;->a:Lcom/pengyouwan/sdk/g/b;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/b$a;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/b$a;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/b$a;->c:Ljava/lang/String;

    return-object v0
.end method
