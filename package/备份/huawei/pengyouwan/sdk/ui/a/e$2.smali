.class Lcom/pengyouwan/sdk/ui/a/e$2;
.super Ljava/lang/Object;
.source "DownloadProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/e;->a(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/e;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/e;->b(Lcom/pengyouwan/sdk/ui/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    iget-object v1, v1, Lcom/pengyouwan/sdk/ui/a/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    iget-object v2, v2, Lcom/pengyouwan/sdk/ui/a/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/e$2;->a:Lcom/pengyouwan/sdk/ui/a/e;

    iget-object v3, v3, Lcom/pengyouwan/sdk/ui/a/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/ui/a/e;->a(Lcom/pengyouwan/sdk/ui/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
