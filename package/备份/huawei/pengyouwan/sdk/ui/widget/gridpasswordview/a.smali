.class public Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;
.super Landroid/text/method/PasswordTransformationMethod;
.source "CustomPasswordTransformationMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transformation"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 21
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;

    invoke-direct {v0, p0, p1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;Ljava/lang/CharSequence;)V

    return-object v0
.end method
