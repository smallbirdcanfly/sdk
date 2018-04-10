.class Lcom/pengyouwan/framework/v4/a$c$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/a$c;->a(Lcom/pengyouwan/framework/v4/a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/a$c;

.field private final synthetic b:Lcom/pengyouwan/framework/v4/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/a$c;Lcom/pengyouwan/framework/v4/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/a$c$1;->a:Lcom/pengyouwan/framework/v4/a$c;

    iput-object p2, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    .line 274
    invoke-virtual {v1, p1}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;)Lcom/pengyouwan/framework/v4/g;

    move-result-object v0

    .line 275
    .local v0, "provider":Lcom/pengyouwan/framework/v4/g;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/g;->a()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;I)V

    .line 263
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    .line 245
    new-instance v1, Lcom/pengyouwan/framework/v4/d;

    invoke-direct {v1, p2}, Lcom/pengyouwan/framework/v4/d;-><init>(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0, p1, v1}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;Lcom/pengyouwan/framework/v4/d;)V

    .line 246
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

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
    .line 257
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 252
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/a$c$1;->b:Lcom/pengyouwan/framework/v4/a;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/v4/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 269
    return-void
.end method
