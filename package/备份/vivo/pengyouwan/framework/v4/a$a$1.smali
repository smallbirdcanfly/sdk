.class Lcom/pengyouwan/framework/v4/a$a$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/a$a;->a(Lcom/pengyouwan/framework/v4/a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/a$a;

.field private final synthetic b:Lcom/pengyouwan/framework/v4/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/a$a;Lcom/pengyouwan/framework/v4/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/a$a$1;->a:Lcom/pengyouwan/framework/v4/a$a;

    iput-object p2, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;I)V

    .line 170
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    .line 152
    new-instance v1, Lcom/pengyouwan/framework/v4/d;

    invoke-direct {v1, p2}, Lcom/pengyouwan/framework/v4/d;-><init>(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0, p1, v1}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V

    .line 153
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 147
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 159
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$a$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 176
    return-void
.end method
