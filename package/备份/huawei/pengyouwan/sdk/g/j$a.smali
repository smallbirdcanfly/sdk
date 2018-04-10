.class public Lcom/pengyouwan/sdk/g/j$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "CreateOrderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/j;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/j;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/j$a;->a:Lcom/pengyouwan/sdk/g/j;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/g/j$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/j$a;->d:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "wxJobj"    # Lorg/json/JSONObject;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/j$a;->e:Lorg/json/JSONObject;

    .line 224
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/j$a;->c:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isTokenError"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/g/j$a;->b:Z

    .line 208
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/g/j$a;->b:Z

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/j$a;->e:Lorg/json/JSONObject;

    return-object v0
.end method
