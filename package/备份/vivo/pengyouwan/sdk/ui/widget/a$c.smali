.class Lcom/pengyouwan/sdk/ui/widget/a$c;
.super Landroid/os/AsyncTask;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/widget/a;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 371
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 372
    .local v4, "x":I
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v6}, Lcom/pengyouwan/sdk/ui/widget/a;->j(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/ui/widget/a;->a(Lcom/pengyouwan/sdk/ui/widget/a;I)I

    move-result v3

    .line 373
    .local v3, "speed":I
    const/4 v1, 0x0

    .line 374
    .local v1, "isLeft":Z
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v5}, Lcom/pengyouwan/sdk/ui/widget/a;->j(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v5

    invoke-static {}, Lcom/pengyouwan/sdk/ui/widget/a;->b()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 376
    .local v2, "middlex":I
    if-ge v4, v2, :cond_1

    .line 377
    const/4 v1, 0x1

    .line 378
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/ui/widget/a;->b(Lcom/pengyouwan/sdk/ui/widget/a;I)V

    .line 383
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 384
    :goto_1
    if-gtz v4, :cond_2

    .line 404
    :goto_2
    const/4 v5, 0x0

    return-object v5

    .line 379
    :cond_1
    if-le v4, v2, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 381
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/pengyouwan/sdk/ui/widget/a;->b(Lcom/pengyouwan/sdk/ui/widget/a;I)V

    goto :goto_0

    .line 385
    :cond_2
    add-int/lit8 v4, v4, -0xa

    .line 386
    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/widget/a$c;->publishProgress([Ljava/lang/Object;)V

    .line 388
    int-to-long v5, v3

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v4, v4, 0xa

    .line 396
    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v5}, Lcom/pengyouwan/sdk/ui/widget/a$c;->publishProgress([Ljava/lang/Object;)V

    .line 398
    int-to-long v5, v3

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v5}, Lcom/pengyouwan/sdk/ui/widget/a;->j(Lcom/pengyouwan/sdk/ui/widget/a;)I

    move-result v5

    if-lt v4, v5, :cond_3

    goto :goto_2

    .line 399
    :catch_1
    move-exception v0

    .line 400
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->d(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/a;->e(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    return-void
.end method

.method protected varargs b([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 410
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v0}, Lcom/pengyouwan/sdk/ui/widget/a;->d(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v1}, Lcom/pengyouwan/sdk/ui/widget/a;->e(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/a$c;->a:Lcom/pengyouwan/sdk/ui/widget/a;

    invoke-static {v2}, Lcom/pengyouwan/sdk/ui/widget/a;->c(Lcom/pengyouwan/sdk/ui/widget/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/a$c;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/a$c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/a$c;->b([Ljava/lang/Integer;)V

    return-void
.end method
