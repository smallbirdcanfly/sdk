.class Lcom/pengyouwan/sdk/ui/widget/a$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/widget/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 219
    :pswitch_0
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v7}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a$b;->removeMessages(I)V

    .line 220
    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->clearAnimation()V

    .line 221
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->b:J

    .line 222
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->b(Lcom/pengyouwan/sdk/ui/widget/a;)Lcom/pengyouwan/sdk/ui/widget/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/ui/widget/a$a;->cancel()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->c:J

    .line 226
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-wide v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->c:J

    iget-object v8, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-wide v8, v8, Lcom/pengyouwan/sdk/ui/widget/a;->b:J

    sub-long v2, v6, v8

    .line 227
    .local v2, "time":J
    const-wide/16 v6, 0xc8

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 228
    const/4 v6, 0x0

    goto :goto_1

    .line 230
    :cond_0
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;Z)V

    .line 231
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessage(I)Z

    .line 232
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 233
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget v7, v7, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 235
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x19

    iput v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    .line 236
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget v7, v7, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 237
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->d(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v7}, Lcom/pengyouwan/sdk/ui/widget/a;->e(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v8}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 240
    .end local v2    # "time":J
    :pswitch_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->c:J

    .line 241
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->b(Lcom/pengyouwan/sdk/ui/widget/a;)Lcom/pengyouwan/sdk/ui/widget/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/ui/widget/a$a;->start()Landroid/os/CountDownTimer;

    .line 242
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-wide v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->c:J

    iget-object v8, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-wide v8, v8, Lcom/pengyouwan/sdk/ui/widget/a;->b:J

    sub-long v4, v6, v8

    .line 243
    .local v4, "time2":J
    const-wide/16 v6, 0xc8

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 244
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v7}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v7

    iget-object v8, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v8}, Lcom/pengyouwan/sdk/ui/widget/a;->f(Lcom/pengyouwan/sdk/ui/widget/a;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    .line 248
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x19

    iput v7, v6, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    .line 249
    new-instance v6, Lcom/pengyouwan/sdk/ui/widget/a$c;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-direct {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a$c;-><init>(Lcom/pengyouwan/sdk/ui/widget/a;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget v9, v9, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->g(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 251
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->h(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget v7, v7, Lcom/pengyouwan/sdk/ui/widget/a;->d:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->i(Lcom/pengyouwan/sdk/ui/widget/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget v7, v7, Lcom/pengyouwan/sdk/ui/widget/a;->e:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v6, v6, Lcom/pengyouwan/sdk/ui/widget/a;->a:Lcom/pengyouwan/sdk/ui/widget/a$b;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v7}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v7

    iget-object v8, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v8}, Lcom/pengyouwan/sdk/ui/widget/a;->f(Lcom/pengyouwan/sdk/ui/widget/a;)J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/pengyouwan/sdk/ui/widget/a$b;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$1;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;Z)V

    .line 256
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
