.class public Lcom/pengyouwan/framework/v4/a;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/a$a;,
        Lcom/pengyouwan/framework/v4/a$b;,
        Lcom/pengyouwan/framework/v4/a$c;,
        Lcom/pengyouwan/framework/v4/a$d;
    }
.end annotation


# static fields
.field private static final b:Lcom/pengyouwan/framework/v4/a$b;

.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 311
    new-instance v0, Lcom/pengyouwan/framework/v4/a$c;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/a$c;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    .line 317
    :goto_0
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    invoke-interface {v0}, Lcom/pengyouwan/framework/v4/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    .line 318
    return-void

    .line 312
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 313
    new-instance v0, Lcom/pengyouwan/framework/v4/a$a;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/a$a;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Lcom/pengyouwan/framework/v4/a$d;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/a$d;-><init>()V

    sput-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    invoke-interface {v0, p0}, Lcom/pengyouwan/framework/v4/a$b;->a(Lcom/pengyouwan/framework/v4/a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/a;->a:Ljava/lang/Object;

    .line 327
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/g;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 495
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/View;)Lcom/pengyouwan/framework/v4/g;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 350
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 351
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 371
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 372
    return-void
.end method

.method public a(Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/pengyouwan/framework/v4/d;

    .prologue
    .line 451
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V

    .line 452
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 514
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 476
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 391
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 410
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 411
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 429
    sget-object v0, Lcom/pengyouwan/framework/v4/a;->b:Lcom/pengyouwan/framework/v4/a$b;

    sget-object v1, Lcom/pengyouwan/framework/v4/a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/pengyouwan/framework/v4/a$b;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 430
    return-void
.end method
