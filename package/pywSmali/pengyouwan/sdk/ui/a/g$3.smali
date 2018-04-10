.class Lcom/pengyouwan/sdk/ui/a/g$3;
.super Ljava/lang/Object;
.source "InputPayPasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g$3;->a:Lcom/pengyouwan/sdk/ui/a/g;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g$3;->a:Lcom/pengyouwan/sdk/ui/a/g;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/g$3;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/g;->b(Lcom/pengyouwan/sdk/ui/a/g;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/a/g;->a(Landroid/app/Activity;)V

    .line 153
    return-void
.end method
