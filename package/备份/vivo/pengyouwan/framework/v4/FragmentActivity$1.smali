.class Lcom/pengyouwan/framework/v4/FragmentActivity$1;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/FragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-boolean v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->f:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a(Z)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/FragmentActivity;->a()V

    .line 96
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$1;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    iget-object v0, v0, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
