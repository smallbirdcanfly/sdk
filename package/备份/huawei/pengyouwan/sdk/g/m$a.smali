.class public Lcom/pengyouwan/sdk/g/m$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "FastRegisterTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/m;

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/m;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m$a;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 0
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m$a;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m$a;->c:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/pengyouwan/sdk/entity/c;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$a;->b:Lcom/pengyouwan/sdk/entity/c;

    return-object v0
.end method
