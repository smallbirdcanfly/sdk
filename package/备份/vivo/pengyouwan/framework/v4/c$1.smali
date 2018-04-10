.class Lcom/pengyouwan/framework/v4/c$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatJellyBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/c;->a(Lcom/pengyouwan/framework/v4/c$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/pengyouwan/framework/v4/c$a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/c$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    .line 50
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 60
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 70
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->a(Landroid/view/View;I)V

    .line 81
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/c$1;->a:Lcom/pengyouwan/framework/v4/c$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/c$a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    return-void
.end method
