.class public Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Lcom/pengyouwan/framework/volley/toolbox/i;

.field private e:Lcom/pengyouwan/framework/volley/toolbox/i$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->c:I

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->b:I

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->b:I

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->b:I

    return v0
.end method


# virtual methods
.method a(Z)V
    .locals 13
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v12, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v9

    .line 116
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v6

    .line 117
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    .line 119
    .local v5, "scaleType":Landroid/widget/ImageView$ScaleType;
    const/4 v11, 0x0

    .local v11, "wrapWidth":Z
    const/4 v10, 0x0

    .line 120
    .local v10, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v12, :cond_2

    move v11, v0

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v12, :cond_3

    move v10, v0

    .line 127
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    move v7, v0

    .line 128
    .local v7, "isFullyWrapContent":Z
    :goto_2
    if-nez v9, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 196
    :cond_1
    :goto_3
    return-void

    .end local v7    # "isFullyWrapContent":Z
    :cond_2
    move v11, v1

    .line 121
    goto :goto_0

    :cond_3
    move v10, v1

    .line 122
    goto :goto_1

    :cond_4
    move v7, v1

    .line 127
    goto :goto_2

    .line 134
    .restart local v7    # "isFullyWrapContent":Z
    :cond_5
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .line 139
    :cond_6
    invoke-direct {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a()V

    goto :goto_3

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a()V

    .line 151
    invoke-direct {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a()V

    .line 156
    :cond_8
    if-eqz v11, :cond_9

    move v3, v1

    .line 157
    .local v3, "maxWidth":I
    :goto_4
    if-eqz v10, :cond_a

    move v4, v1

    .line 161
    .local v4, "maxHeight":I
    :goto_5
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->d:Lcom/pengyouwan/framework/volley/toolbox/i;

    iget-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    .line 162
    new-instance v2, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView$1;-><init>(Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;Z)V

    .line 161
    invoke-virtual/range {v0 .. v5}, Lcom/pengyouwan/framework/volley/toolbox/i;->a(Ljava/lang/String;Lcom/pengyouwan/framework/volley/toolbox/i$d;IILandroid/widget/ImageView$ScaleType;)Lcom/pengyouwan/framework/volley/toolbox/i$c;

    move-result-object v8

    .line 195
    .local v8, "newContainer":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    iput-object v8, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    goto :goto_3

    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v8    # "newContainer":Lcom/pengyouwan/framework/volley/toolbox/i$c;
    :cond_9
    move v3, v9

    .line 156
    goto :goto_4

    .restart local v3    # "maxWidth":I
    :cond_a
    move v4, v6

    .line 157
    goto :goto_5
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 229
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->invalidate()V

    .line 230
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/volley/toolbox/i$c;->a()V

    .line 219
    invoke-virtual {p0, v1}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iput-object v1, p0, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->e:Lcom/pengyouwan/framework/volley/toolbox/i$c;

    .line 223
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 224
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 209
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pengyouwan/framework/volley/toolbox/NetworkImageView;->a(Z)V

    .line 211
    return-void
.end method
