.class Lcom/pengyouwan/sdk/utils/l$3;
.super Lcom/pengyouwan/sdk/g/s;
.source "StaticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/utils/l;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/utils/l;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/utils/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/utils/l$3;->a:Lcom/pengyouwan/sdk/utils/l;

    .line 202
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 2
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/s$a;

    .line 206
    .local v0, "res":Lcom/pengyouwan/sdk/g/s$a;
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/s$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/pengyouwan/sdk/utils/l$3;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 210
    :cond_0
    return-void
.end method
