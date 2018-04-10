.class Lcom/pengyouwan/sdk/ui/b/a$4;
.super Lcom/pengyouwan/sdk/g/h;
.source "BindMobilePhoneCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/b/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/b/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/a$4;->a:Lcom/pengyouwan/sdk/ui/b/a;

    .line 364
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 368
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/h$a;

    .line 369
    .local v0, "mResponse":Lcom/pengyouwan/sdk/g/h$a;
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$4;->a:Lcom/pengyouwan/sdk/ui/b/a;

    const/16 v2, 0x1115

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$4;->a:Lcom/pengyouwan/sdk/ui/b/a;

    const/16 v2, 0x1116

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    .line 375
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/h$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v1, "\u68c0\u67e5\u9a8c\u8bc1\u7801\u5931\u8d25"

    goto :goto_1
.end method
