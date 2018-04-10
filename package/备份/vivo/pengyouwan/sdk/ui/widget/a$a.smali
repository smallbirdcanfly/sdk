.class Lcom/pengyouwan/sdk/ui/widget/a$a;
.super Landroid/os/CountDownTimer;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/a;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/widget/a;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 343
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a$a;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 344
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 345
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$a;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v0, v0, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessage(I)Z

    .line 354
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 349
    return-void
.end method
