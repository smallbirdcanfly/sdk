.class Lcom/pengyouwan/sdk/ui/a/h$2;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$2;->a:Lcom/pengyouwan/sdk/ui/a/h;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 174
    if-eqz p2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$2;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/h$2;->a:Lcom/pengyouwan/sdk/ui/a/h;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/a/h;->n(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    return-void
.end method
