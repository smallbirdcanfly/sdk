.class Lcom/pengyouwan/framework/v4/a$a;
.super Lcom/pengyouwan/framework/v4/a$d;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/pengyouwan/framework/v4/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/pengyouwan/framework/v4/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/pengyouwan/framework/v4/a;)Ljava/lang/Object;
    .locals 1
    .param p1, "compat"    # Lcom/pengyouwan/framework/v4/a;

    .prologue
    .line 136
    new-instance v0, Lcom/pengyouwan/framework/v4/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/framework/v4/a$a$1;-><init>(Lcom/pengyouwan/framework/v4/a$a;Lcom/pengyouwan/framework/v4/a;)V

    .line 135
    invoke-static {v0}, Lcom/pengyouwan/framework/v4/b;->a(Lcom/pengyouwan/framework/v4/b$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "eventType"    # I

    .prologue
    .line 215
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/b;->a(Ljava/lang/Object;Landroid/view/View;I)V

    .line 216
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "info"    # Lcom/pengyouwan/framework/v4/d;

    .prologue
    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/pengyouwan/framework/v4/d;->a()Ljava/lang/Object;

    move-result-object v0

    .line 196
    invoke-static {p1, p2, v0}, Lcom/pengyouwan/framework/v4/b;->a(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 183
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/b;->a(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 209
    invoke-static {p1, p2, p3, p4}, Lcom/pengyouwan/framework/v4/b;->a(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 190
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/b;->b(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 191
    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 203
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/b;->c(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    return-void
.end method

.method public d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 221
    invoke-static {p1, p2, p3}, Lcom/pengyouwan/framework/v4/b;->d(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    return-void
.end method
