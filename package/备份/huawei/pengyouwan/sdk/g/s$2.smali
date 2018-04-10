.class Lcom/pengyouwan/sdk/g/s$2;
.super Ljava/lang/Object;
.source "LoginTimeUploadTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/s;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/s$2;->a:Lcom/pengyouwan/sdk/g/s;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 2
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/s$2;->a:Lcom/pengyouwan/sdk/g/s;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/s;->a(Lcom/pengyouwan/sdk/g/s;)Lcom/pengyouwan/sdk/g/s$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/u;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/s$a;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/s$2;->a:Lcom/pengyouwan/sdk/g/s;

    iget-object v1, p0, Lcom/pengyouwan/sdk/g/s$2;->a:Lcom/pengyouwan/sdk/g/s;

    invoke-static {v1}, Lcom/pengyouwan/sdk/g/s;->a(Lcom/pengyouwan/sdk/g/s;)Lcom/pengyouwan/sdk/g/s$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/s;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 141
    return-void
.end method
