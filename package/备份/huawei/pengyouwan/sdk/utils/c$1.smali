.class Lcom/pengyouwan/sdk/utils/c$1;
.super Landroid/os/CountDownTimer;
.source "BehavioralHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/utils/c;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/utils/c;JJ)V
    .locals 0
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/utils/c$1;->a:Lcom/pengyouwan/sdk/utils/c;

    .line 65
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 75
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/pengyouwan/sdk/utils/c;->a()Lcom/pengyouwan/sdk/utils/c;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1, v2, v2}, Lcom/pengyouwan/sdk/utils/c;->a(III)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/c$1;->a:Lcom/pengyouwan/sdk/utils/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/c;->a(Lcom/pengyouwan/sdk/utils/c;Z)V

    .line 81
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/c$1;->a:Lcom/pengyouwan/sdk/utils/c;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/c;->a(Lcom/pengyouwan/sdk/utils/c;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 83
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 70
    return-void
.end method
