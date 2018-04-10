.class Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;
.super Lcom/pengyouwan/sdk/g/c;
.source "BindAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/BindAccountActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/BindAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    .line 136
    invoke-direct {p0}, Lcom/pengyouwan/sdk/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/sdk/e/c;)V
    .locals 4
    .param p1, "httpResponse"    # Lcom/pengyouwan/sdk/e/c;

    .prologue
    .line 139
    move-object v1, p1

    check-cast v1, Lcom/pengyouwan/sdk/g/c$a;

    .line 140
    .local v1, "bindPassportResponse":Lcom/pengyouwan/sdk/g/c$a;
    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/c$a;->c()I

    move-result v0

    .line 142
    .local v0, "ack":I
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    const/16 v3, 0x2004

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(Lcom/pengyouwan/sdk/activity/BindAccountActivity;I)V

    .line 151
    .end local v0    # "ack":I
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v0    # "ack":I
    :cond_1
    const/16 v2, 0x190

    if-ne v0, v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    const/16 v3, 0x2003

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(Lcom/pengyouwan/sdk/activity/BindAccountActivity;I)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ed1\u5b9a\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/g/c$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    const/16 v3, 0x2006

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->a(Lcom/pengyouwan/sdk/activity/BindAccountActivity;I)V

    goto :goto_0
.end method
