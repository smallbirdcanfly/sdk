.class public Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;
.super Landroid/widget/EditText;
.source "ImeDelBugFixedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;,
        Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;
    }
.end annotation


# instance fields
.field private a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;)V
    .locals 0
    .param p1, "delKeyEventListener"    # Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    .line 72
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 35
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v1, v2}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$b;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method
