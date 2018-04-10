.class Lcom/pengyouwan/framework/v4/u$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/u;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/u$1;->a:Lcom/pengyouwan/framework/v4/u;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/u$1;->a:Lcom/pengyouwan/framework/v4/u;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/u;->e()Z

    .line 445
    return-void
.end method
