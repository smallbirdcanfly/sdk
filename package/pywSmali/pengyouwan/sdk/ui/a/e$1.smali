.class Lcom/pengyouwan/sdk/ui/a/e$1;
.super Ljava/lang/Object;
.source "DownloadProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/e$1;->a:Lcom/pengyouwan/sdk/ui/a/e;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/e$1;->a:Lcom/pengyouwan/sdk/ui/a/e;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/e;->a(Lcom/pengyouwan/sdk/ui/a/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x7

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->a(ILandroid/os/Bundle;)V

    .line 88
    return-void
.end method
