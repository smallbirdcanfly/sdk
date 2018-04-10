.class Lcom/pengyouwan/sdk/ui/b/a$2;
.super Lcom/pengyouwan/sdk/g/g;
.source "BindMobilePhoneCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/b/a;->x()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/a$2;->a:Lcom/pengyouwan/sdk/ui/b/a;

    .line 235
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 3
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    const/16 v2, 0x1116

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/pengyouwan/sdk/g/g$a;

    .line 240
    .local v0, "response":Lcom/pengyouwan/sdk/g/g$a;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$2;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    .line 243
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    goto :goto_1

    .line 248
    :pswitch_1
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$2;->a:Lcom/pengyouwan/sdk/ui/b/a;

    const/16 v2, 0x1118

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "\u7ed1\u5b9a\u5931\u8d25"

    goto :goto_2

    .line 254
    :pswitch_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$2;->a:Lcom/pengyouwan/sdk/ui/b/a;

    const/16 v2, 0x1115

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/a$2;->a:Lcom/pengyouwan/sdk/ui/b/a;

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/ui/b/a;->b(Lcom/pengyouwan/sdk/ui/b/a;I)V

    .line 261
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/g/g$a;->c()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25"

    goto :goto_3

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
