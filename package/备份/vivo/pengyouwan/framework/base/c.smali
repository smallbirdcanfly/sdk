.class public abstract Lcom/pengyouwan/framework/base/c;
.super Lcom/pengyouwan/framework/v4/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/base/c$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/Fragment;-><init>()V

    .line 26
    new-instance v0, Lcom/pengyouwan/framework/base/c$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/base/c$a;-><init>(Lcom/pengyouwan/framework/base/c;)V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/c;->a:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/framework/base/c;->b:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/pengyouwan/framework/v4/Fragment;->a()V

    .line 70
    iget-object v0, p0, Lcom/pengyouwan/framework/base/c;->c:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/pengyouwan/framework/base/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/framework/base/c;->c:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pengyouwan/framework/base/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    .line 163
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/pengyouwan/framework/base/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/pengyouwan/framework/base/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 167
    const/4 v2, 0x2

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 170
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/os/Bundle;)V

    .line 50
    iget-object v2, p0, Lcom/pengyouwan/framework/base/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/base/c;->a(Ljava/util/ArrayList;)V

    .line 51
    iget-object v2, p0, Lcom/pengyouwan/framework/base/c;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pengyouwan/framework/base/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 52
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/pengyouwan/framework/base/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    new-instance v2, Lcom/pengyouwan/framework/base/c$1;

    invoke-direct {v2, p0}, Lcom/pengyouwan/framework/base/c$1;-><init>(Lcom/pengyouwan/framework/base/c;)V

    iput-object v2, p0, Lcom/pengyouwan/framework/base/c;->c:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    .line 63
    invoke-virtual {p0}, Lcom/pengyouwan/framework/base/c;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/framework/base/c;->c:Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 53
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
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
    .line 77
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method
