.class Lcom/pengyouwan/sdk/ui/b/g$2;
.super Lcom/pengyouwan/sdk/g/o;
.source "CommonPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/g;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/g;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    .line 205
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/b/g;->j(Lcom/pengyouwan/sdk/ui/b/g;)Lcom/pengyouwan/sdk/ui/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/pengyouwan/sdk/g/o$a;

    .line 211
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/o$a;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->c()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 215
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/ui/b/g;Z)V

    .line 220
    :goto_0
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/ui/b/g;Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/b/g;->x()V

    .line 230
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/g$2;->a:Lcom/pengyouwan/sdk/ui/b/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/g;->a(Lcom/pengyouwan/sdk/ui/b/g;Z)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 227
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/o$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_2
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :cond_4
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25"

    goto :goto_2
.end method
