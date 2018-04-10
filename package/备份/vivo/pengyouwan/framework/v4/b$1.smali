.class Lcom/pengyouwan/framework/v4/b$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/b;->a(Lcom/pengyouwan/framework/v4/b$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/pengyouwan/framework/v4/b$a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/b$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    .line 55
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 74
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/b$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->a(Landroid/view/View;I)V

    .line 85
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/b$1;->a:Lcom/pengyouwan/framework/v4/b$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/b$a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    return-void
.end method
