.class Lcom/pengyouwan/sdk/ui/a/h$a$a;
.super Ljava/lang/Object;
.source "LoginDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/h$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/pengyouwan/sdk/ui/a/h$a;)V
    .locals 1

    .prologue
    .line 457
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/pengyouwan/sdk/ui/a/h$a;Lcom/pengyouwan/sdk/ui/a/h$a$a;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/a/h$a$a;-><init>(Lcom/pengyouwan/sdk/ui/a/h$a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    .line 463
    iget v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    if-ltz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    iget v2, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;->a(Lcom/pengyouwan/sdk/ui/a/h;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    iget v2, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;->a(Lcom/pengyouwan/sdk/ui/a/h;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->a(Lcom/pengyouwan/sdk/ui/a/h$a;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->b:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pengyouwan/sdk/entity/c;

    .line 467
    .local v0, "user":Lcom/pengyouwan/sdk/entity/c;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->l(Lcom/pengyouwan/sdk/ui/a/h;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/a/h;->l(Lcom/pengyouwan/sdk/ui/a/h;)Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/a/h;->a(Lcom/pengyouwan/sdk/ui/a/h;Lcom/pengyouwan/sdk/entity/c;)V

    .line 471
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->m(Lcom/pengyouwan/sdk/ui/a/h;)V

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->a(Lcom/pengyouwan/sdk/ui/a/h$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->e(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 484
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_0
    return-void

    .line 476
    .restart local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/h$a$a;->a:Lcom/pengyouwan/sdk/ui/a/h$a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h$a;->b(Lcom/pengyouwan/sdk/ui/a/h$a;)Lcom/pengyouwan/sdk/ui/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/h;->f(Lcom/pengyouwan/sdk/ui/a/h;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 479
    .end local v0    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_3
    const-string v1, "\u5220\u9664\u51fa\u9519,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_4
    const-string v1, "\u5220\u9664\u51fa\u9519,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
