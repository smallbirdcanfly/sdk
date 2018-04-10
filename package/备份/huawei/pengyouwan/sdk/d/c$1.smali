.class Lcom/pengyouwan/sdk/d/c$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/d/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/d/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/c$1;->a:Lcom/pengyouwan/sdk/d/c;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c$1;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {p2}, Lcom/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/c;->a(Lcom/pengyouwan/sdk/d/c;Lcom/a/a/a/a;)V

    .line 75
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/c$1;->a:Lcom/pengyouwan/sdk/d/c;

    invoke-static {v0}, Lcom/pengyouwan/sdk/d/c;->a(Lcom/pengyouwan/sdk/d/c;)V

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    return-void
.end method
