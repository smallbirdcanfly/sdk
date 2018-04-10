.class public Lcom/pengyouwan/sdk/ui/a/l;
.super Lcom/pengyouwan/framework/base/b;
.source "NewAccountLoginDialog.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/pengyouwan/sdk/entity/c;>;"
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 72
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/l$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/l$1;-><init>(Lcom/pengyouwan/sdk/ui/a/l;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->f:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/l;->e:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/l;->d:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/l;->a()V

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u662f\u5426\u4f7f\u7528"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u767b\u5f55\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ee970f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 68
    const/16 v4, 0x21

    .line 67
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 69
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/l;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_dialog_newaccount_login"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/l;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    const-string v1, "pyw_btn_login_cancel"

    .line 51
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->a:Landroid/widget/Button;

    .line 53
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    const-string v1, "pyw_btn_login_ensure"

    .line 53
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->b:Landroid/widget/Button;

    .line 55
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/l;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const-string v1, "pyw_tv_login_tips"

    .line 55
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->c:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pengyouwan/sdk/ui/a/l;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/l;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/l;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/l;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/l;->d:Ljava/util/List;

    return-object v0
.end method
