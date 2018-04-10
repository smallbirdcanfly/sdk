.class public Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;
.super Landroid/widget/LinearLayout;
.source "GridPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

.field private l:[Ljava/lang/String;

.field private m:[Landroid/widget/TextView;

.field private n:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

.field private o:Landroid/text/method/PasswordTransformationMethod;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

.field private r:Landroid/text/TextWatcher;

.field private s:Landroid/view/View$OnKeyListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/16 v0, 0x10

    iput v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b:I

    .line 215
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$1;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    .line 242
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$2;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->q:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    .line 259
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$3;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    .line 302
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$4;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$4;-><init>(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->s:Landroid/view/View$OnKeyListener;

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Landroid/content/Context;)[I

    move-result-object v1

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    .line 101
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    const v2, 0x1060003

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    .line 104
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b:I

    .line 107
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 106
    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c:I

    .line 108
    const v1, -0x55777778

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d:I

    .line 109
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->e:I

    .line 111
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    .line 112
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 113
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->d()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->g:Landroid/graphics/drawable/Drawable;

    .line 115
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    .line 116
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "\u25cf"

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    .line 120
    :cond_2
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->j:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    .line 123
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    .line 124
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    :cond_0
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 192
    const/16 v0, 0x12

    .line 194
    .local v0, "inputType":I
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->j:I

    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 212
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->o:Landroid/text/method/PasswordTransformationMethod;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 213
    return-void

    .line 197
    :pswitch_0
    const/16 v0, 0x81

    .line 199
    goto :goto_0

    .line 202
    :pswitch_1
    const/16 v0, 0x91

    .line 204
    goto :goto_0

    .line 207
    :pswitch_2
    const/16 v0, 0xe1

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)[I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/16 v1, 0x8

    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 128
    const-string v2, "textColor"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 129
    const-string v2, "textSize"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 130
    const-string v2, "lineColor"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 131
    const-string v2, "gridColor"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 132
    const-string v2, "lineWidth"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 133
    const-string v2, "passwordLength"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 134
    const-string v2, "passwordTransformation"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 135
    const-string v2, "passwordType"

    invoke-static {p1, v2}, Lcom/pengyouwan/sdk/utils/j;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 136
    .local v0, "styleable":[I
    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->g:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->setShowDividers(I)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->setOrientation(I)V

    .line 145
    new-instance v0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;

    .line 146
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/a;-><init>(Ljava/lang/String;)V

    .line 145
    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->o:Landroid/text/method/PasswordTransformationMethod;

    .line 147
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 153
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const-string v6, "pyw_view_gridpassword"

    .line 152
    invoke-static {p1, v6}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    const-string v6, "pyw_inputView"

    .line 154
    invoke-static {p1, v6}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iput-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    .line 157
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iget v7, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->setMaxEms(I)V

    .line 158
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->q:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;)V

    .line 160
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-direct {p0, v6}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Landroid/widget/TextView;)V

    .line 162
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    aput-object v7, v6, v9

    .line 164
    const/4 v2, 0x1

    .line 165
    .local v2, "index":I
    :goto_0
    iget v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    if-lt v2, v6, :cond_0

    .line 184
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void

    .line 167
    :cond_0
    const-string v6, "pyw_view_divider"

    .line 166
    invoke-static {p1, v6}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "dividerView":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c:I

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .local v0, "dividerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {p0, v1, v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const-string v6, "pyw_view_textview"

    invoke-static {p1, v6}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 173
    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 175
    .local v4, "textView":Landroid/widget/TextView;
    invoke-direct {p0, v4}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Landroid/widget/TextView;)V

    .line 176
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    const/high16 v6, 0x3f800000    # 1.0f

    .line 176
    invoke-direct {v5, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 178
    .local v5, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v5}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    aput-object v4, v6, v2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->e()V

    return-void
.end method

.method private d()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 224
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 227
    const/4 v1, 0x2

    const-string v2, "#d2d2d2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 229
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 230
    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;)Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->q:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText$a;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->n:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "currentPsw":Ljava/lang/String;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->n:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    invoke-interface {v1, v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;->b(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->h:I

    if-ne v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->n:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    invoke-interface {v1, v0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-virtual {v1, v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->setFocusable(Z)V

    .line 235
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-virtual {v1, v3}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->setFocusableInTouchMode(Z)V

    .line 236
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->requestFocus()Z

    .line 237
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 238
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 239
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 240
    return-void
.end method

.method public a(Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->n:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView$a;

    .line 433
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->c()V

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 388
    .local v1, "pswArr":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 390
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    aget-char v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 391
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 375
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 373
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 336
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 337
    check-cast v0, Landroid/os/Bundle;

    .line 338
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "passwordArr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    .line 339
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 340
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->a(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->k:Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->r:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/ImeDelBugFixedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 344
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 330
    const-string v1, "passwordArr"

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/widget/gridpasswordview/GridPasswordView;->l:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 331
    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 469
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 473
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 481
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 477
    return-void
.end method
