.class Lcom/pengyouwan/sdk/ui/b/d$1;
.super Ljava/lang/Object;
.source "BindPasscardPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/d;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/d;->a(Lcom/pengyouwan/sdk/ui/b/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/ui/b/d;->a(Lcom/pengyouwan/sdk/ui/b/d;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 87
    const/4 v1, 0x4

    .line 88
    const/16 v2, 0xa

    .line 89
    const/4 v3, 0x3

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 90
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/d;->b(Lcom/pengyouwan/sdk/ui/b/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/d;->c(Lcom/pengyouwan/sdk/ui/b/d;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/b/d;->b(Lcom/pengyouwan/sdk/ui/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/d$1;->a:Lcom/pengyouwan/sdk/ui/b/d;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/b/d;->d(Lcom/pengyouwan/sdk/ui/b/d;)Lcom/pengyouwan/sdk/c/b;

    move-result-object v0

    const/16 v1, 0x1010

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v0, "\u60a8\u8f93\u5165\u7684\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
