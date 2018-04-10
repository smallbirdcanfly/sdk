.class Lcom/pengyouwan/sdk/ui/a/g$4;
.super Ljava/lang/Object;
.source "InputPayPasswordDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/g;->a(Ljava/lang/String;Landroid/text/SpannableString;)V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g$4;->a:Lcom/pengyouwan/sdk/ui/a/g;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g$4;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/g;->c(Lcom/pengyouwan/sdk/ui/a/g;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a()V

    .line 93
    return-void
.end method
