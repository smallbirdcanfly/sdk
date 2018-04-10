.class Lcom/pengyouwan/sdk/ui/a/g$5;
.super Lcom/pengyouwan/sdk/g/f;
.source "InputPayPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/g;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/g$5;->a:Lcom/pengyouwan/sdk/ui/a/g;

    .line 104
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 2
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 107
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/f$a;

    .line 108
    .local v0, "response":Lcom/pengyouwan/sdk/g/f$a;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/f$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/g$5;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/g;->dismiss()V

    .line 111
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/g$5;->a:Lcom/pengyouwan/sdk/ui/a/g;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/a/g;->d(Lcom/pengyouwan/sdk/ui/a/g;)Lcom/pengyouwan/sdk/ui/a/g$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/pengyouwan/sdk/ui/a/g$a;->a()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/f$a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "\u4ea4\u6613\u5bc6\u7801\u9519\u8bef"

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/f$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
