.class Lcom/pengyouwan/sdk/ui/a/g$1;
.super Ljava/lang/Object;
.source "InputPayPasswordDialog.java"

# interfaces
.implements Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g$1;->a:Lcom/pengyouwan/sdk/ui/a/g;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 72
    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u5b8c\u6574\u7684\u5bc6\u7801"

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/g$1;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/sdk/ui/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method
