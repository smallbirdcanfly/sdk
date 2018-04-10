.class Lcom/pengyouwan/framework/base/c$1;
.super Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/base/c;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/base/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/base/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/base/c$1;->a:Lcom/pengyouwan/framework/base/c;

    .line 56
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/pengyouwan/framework/base/c$1;->a:Lcom/pengyouwan/framework/base/c;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/base/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    return-void
.end method
