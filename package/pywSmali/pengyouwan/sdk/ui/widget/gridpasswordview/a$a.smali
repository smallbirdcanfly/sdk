.class Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;
.super Ljava/lang/Object;
.source "CustomPasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;->b:Ljava/lang/CharSequence;

    .line 29
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;->a:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;

    iget-object v0, v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
