.class Lcom/pengyouwan/sdk/utils/l$2;
.super Ljava/util/TimerTask;
.source "StaticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/utils/l;->e()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    .line 179
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/l;->a(Lcom/pengyouwan/sdk/utils/l;)I

    move-result v0

    sget v1, Lcom/pengyouwan/sdk/utils/l;->b:I

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/l;->b(Lcom/pengyouwan/sdk/utils/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/l;->a(Lcom/pengyouwan/sdk/utils/l;Z)V

    .line 186
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->b()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/l;->c(Lcom/pengyouwan/sdk/utils/l;)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 191
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    iget-boolean v0, v0, Lcom/pengyouwan/sdk/utils/l;->d:Z

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l$2;->a:Lcom/pengyouwan/sdk/utils/l;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/utils/l;->b()V

    goto :goto_0
.end method
