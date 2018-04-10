.class public Lcom/pengyouwan/framework/v4/d;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/d$a;,
        Lcom/pengyouwan/framework/v4/d$b;,
        Lcom/pengyouwan/framework/v4/d$c;,
        Lcom/pengyouwan/framework/v4/d$d;,
        Lcom/pengyouwan/framework/v4/d$e;,
        Lcom/pengyouwan/framework/v4/d$f;
    }
.end annotation


# static fields
.field private static final a:Lcom/pengyouwan/framework/v4/d$b;


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 754
    new-instance v0, Lcom/pengyouwan/framework/v4/d$e;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/d$e;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    .line 1056
    :goto_0
    return-void

    .line 755
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 756
    new-instance v0, Lcom/pengyouwan/framework/v4/d$d;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/d$d;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    goto :goto_0

    .line 757
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 758
    new-instance v0, Lcom/pengyouwan/framework/v4/d$c;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/d$c;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    goto :goto_0

    .line 759
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 760
    new-instance v0, Lcom/pengyouwan/framework/v4/d$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/d$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    goto :goto_0

    .line 762
    :cond_3
    new-instance v0, Lcom/pengyouwan/framework/v4/d$f;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/d$f;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    .line 1079
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 2015
    sparse-switch p0, :sswitch_data_0

    .line 2053
    const-string v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    .line 2017
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_0

    .line 2019
    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    .line 2021
    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_0

    .line 2023
    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    .line 2025
    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    .line 2027
    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_0

    .line 2029
    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 2031
    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    .line 2033
    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 2035
    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    .line 2037
    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    .line 2039
    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    .line 2041
    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    .line 2043
    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    .line 2045
    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_0

    .line 2047
    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_0

    .line 2049
    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_0

    .line 2051
    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    .line 2015
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 1292
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/d$b;->a(Ljava/lang/Object;I)V

    .line 1293
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1435
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/d$b;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1436
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 1812
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/d$b;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1813
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "scrollable"    # Z

    .prologue
    .line 1764
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/d$b;->a(Ljava/lang/Object;Z)V

    .line 1765
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1277
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1459
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/d$b;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1460
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 1483
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1507
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->g(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1531
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1950
    if-ne p0, p1, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v1

    .line 1953
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1954
    goto :goto_0

    .line 1956
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1957
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1959
    check-cast v0, Lcom/pengyouwan/framework/v4/d;

    .line 1960
    .local v0, "other":Lcom/pengyouwan/framework/v4/d;
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 1961
    iget-object v3, v0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 1962
    goto :goto_0

    .line 1964
    :cond_4
    iget-object v3, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    iget-object v4, v0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1965
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 1555
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1629
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->o(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 1653
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->h(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1677
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 1701
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1725
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 1749
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->n(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1773
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1797
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->b(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1821
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1845
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1902
    sget-object v0, Lcom/pengyouwan/framework/v4/d;->a:Lcom/pengyouwan/framework/v4/d$b;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/pengyouwan/framework/v4/d$b;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1973
    .local v3, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1977
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/v4/d;->a(Landroid/graphics/Rect;)V

    .line 1978
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "; boundsInParent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {p0, v2}, Lcom/pengyouwan/framework/v4/d;->b(Landroid/graphics/Rect;)V

    .line 1981
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "; boundsInScreen: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    const-string v4, "; packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->m()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1984
    const-string v4, "; className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->n()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1985
    const-string v4, "; text: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->o()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1986
    const-string v4, "; contentDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->p()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1987
    const-string v4, "; viewId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    const-string v4, "; checkable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1990
    const-string v4, "; checked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->d()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1991
    const-string v4, "; focusable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->e()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1992
    const-string v4, "; focused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->f()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1993
    const-string v4, "; selected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->g()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1994
    const-string v4, "; clickable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->h()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1995
    const-string v4, "; longClickable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->i()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1996
    const-string v4, "; enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->j()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1997
    const-string v4, "; password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->k()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1998
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "; scrollable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->l()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const-string v4, "; ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    invoke-virtual {p0}, Lcom/pengyouwan/framework/v4/d;->b()I

    move-result v1

    .local v1, "actionBits":I
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 2009
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2002
    :cond_1
    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    shl-int v0, v4, v5

    .line 2003
    .local v0, "action":I
    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v1, v4

    .line 2004
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    if-eqz v1, :cond_0

    .line 2006
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
