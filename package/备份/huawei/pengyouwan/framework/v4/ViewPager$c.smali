.class Lcom/pengyouwan/framework/v4/ViewPager$c;
.super Lcom/pengyouwan/framework/v4/a;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/pengyouwan/framework/v4/ViewPager;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/ViewPager;)V
    .locals 0

    .prologue
    .line 2754
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/a;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2806
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager;)Lcom/pengyouwan/framework/v4/ag;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager;)Lcom/pengyouwan/framework/v4/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/pengyouwan/framework/v4/d;

    .prologue
    .line 2772
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V

    .line 2773
    const-class v0, Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pengyouwan/framework/v4/d;->a(Ljava/lang/CharSequence;)V

    .line 2774
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager$c;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/pengyouwan/framework/v4/d;->a(Z)V

    .line 2775
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2776
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/pengyouwan/framework/v4/d;->a(I)V

    .line 2778
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2779
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/pengyouwan/framework/v4/d;->a(I)V

    .line 2781
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2785
    invoke-super {p0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2802
    :goto_0
    return v0

    .line 2788
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2802
    goto :goto_0

    .line 2790
    :sswitch_0
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-virtual {v2, v0}, Lcom/pengyouwan/framework/v4/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2791
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v2}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Lcom/pengyouwan/framework/v4/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->a(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2794
    goto :goto_0

    .line 2796
    :sswitch_1
    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/pengyouwan/framework/v4/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2797
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v2}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Lcom/pengyouwan/framework/v4/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/pengyouwan/framework/v4/ViewPager;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2800
    goto :goto_0

    .line 2788
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2758
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2759
    const-class v1, Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2760
    invoke-static {}, Lcom/pengyouwan/framework/v4/j;->a()Lcom/pengyouwan/framework/v4/j;

    move-result-object v0

    .line 2761
    .local v0, "recordCompat":Lcom/pengyouwan/framework/v4/j;
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/ViewPager$c;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/j;->a(Z)V

    .line 2762
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 2763
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager;)Lcom/pengyouwan/framework/v4/ag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2764
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager;)Lcom/pengyouwan/framework/v4/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/framework/v4/ag;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/j;->a(I)V

    .line 2765
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Lcom/pengyouwan/framework/v4/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/j;->b(I)V

    .line 2766
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/ViewPager$c;->b:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-static {v1}, Lcom/pengyouwan/framework/v4/ViewPager;->b(Lcom/pengyouwan/framework/v4/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/framework/v4/j;->c(I)V

    .line 2768
    :cond_0
    return-void
.end method
