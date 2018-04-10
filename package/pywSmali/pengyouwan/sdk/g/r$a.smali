.class public Lcom/pengyouwan/sdk/g/r$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/r;

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/r;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/r$a;->a:Lcom/pengyouwan/sdk/g/r;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/r$a;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 147
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/r$a;->c:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/r$a;->c:Ljava/lang/String;

    return-object v0
.end method
