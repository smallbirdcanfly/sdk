.class public abstract Lcom/pengyouwan/framework/base/BaseFragmentActivity;
.super Lcom/pengyouwan/framework/v4/FragmentActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/base/BaseFragmentActivity$a;
    }
.end annotation


# instance fields
.field private n:Landroid/os/Handler;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/pengyouwan/framework/base/BaseFragmentActivity$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/base/BaseFragmentActivity$a;-><init>(Lcom/pengyouwan/framework/base/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->n:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->o:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->requestWindowFeature(I)Z

    .line 52
    iget-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->a(Ljava/util/ArrayList;)V

    .line 53
    iget-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->o:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 58
    new-instance v2, Lcom/pengyouwan/framework/base/BaseFragmentActivity$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/framework/base/BaseFragmentActivity$1;-><init>(Lcom/pengyouwan/framework/base/BaseFragmentActivity;)V

    iput-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->p:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    .line 65
    iget-object v2, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->p:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 55
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->p:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->p:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    :cond_0
    return-void
.end method
