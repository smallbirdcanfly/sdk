.class Lcom/pengyouwan/sdk/g/m$2;
.super Ljava/lang/Object;
.source "FastRegisterTask.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/m;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/g/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/pengyouwan/framework/volley/u;)V
    .locals 3
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/m;->b(Lcom/pengyouwan/sdk/g/m;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u6ce8\u518c\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/m$a;->a(Ljava/lang/String;)V

    .line 107
    :goto_0
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p1, Lcom/pengyouwan/framework/volley/u;->a:Lcom/pengyouwan/framework/volley/j;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pengyouwan/framework/volley/u;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/m$a;->a(Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    iget-object v1, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v1}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/e/c;)V

    .line 113
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/g/m$2;->a:Lcom/pengyouwan/sdk/g/m;

    invoke-static {v0}, Lcom/pengyouwan/sdk/g/m;->a(Lcom/pengyouwan/sdk/g/m;)Lcom/pengyouwan/sdk/g/m$a;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u9519\u8bef\uff0c\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/g/m$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
