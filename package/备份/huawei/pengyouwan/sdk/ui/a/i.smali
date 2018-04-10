.class public Lcom/pengyouwan/sdk/ui/a/i;
.super Lcom/pengyouwan/framework/base/b;
.source "LoginFromPassnoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/ui/a/i$a;,
        Lcom/pengyouwan/sdk/ui/a/i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/app/Activity;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/PopupWindow;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/BaseAdapter;

.field private k:Lcom/pengyouwan/sdk/entity/c;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pengyouwan/sdk/entity/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/TextView;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Handler;

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private w:Lcom/pengyouwan/sdk/ui/a/d;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    const-string v0, "PYWTheme_Widget_Dialog"

    invoke-static {p1, v0}, Lcom/pengyouwan/sdk/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pengyouwan/framework/base/b;-><init>(Landroid/app/Activity;I)V

    .line 89
    const/16 v0, 0x1001

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->p:I

    .line 91
    const/16 v0, 0x1002

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->q:I

    .line 93
    const/16 v0, 0x1003

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->r:I

    .line 95
    const/16 v0, 0x1004

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->s:I

    .line 97
    const/16 v0, 0x1005

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->t:I

    .line 99
    const/16 v0, 0x1006

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->u:I

    .line 101
    const/16 v0, 0x1007

    iput v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->v:I

    .line 271
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/i$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/i$1;-><init>(Lcom/pengyouwan/sdk/ui/a/i;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->x:Landroid/view/View$OnClickListener;

    .line 115
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->setCancelable(Z)V

    .line 117
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->a()V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->c:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_dialog_login_passno"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->setContentView(I)V

    .line 122
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/i$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/a/i$a;-><init>(Lcom/pengyouwan/sdk/ui/a/i;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    .line 123
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_dialog_switch"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->a:Landroid/widget/Button;

    .line 124
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_entergame"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->b:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_tv_login_passno"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->m:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_et_login_account"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    .line 130
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_layout_login_account"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->f:Landroid/widget/LinearLayout;

    .line 131
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_layout_select_account"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->c:Landroid/view/View;

    .line 132
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_btn_back_game"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->d:Landroid/view/View;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u8bf7\u9009\u62e9\u6e38\u620f\u8d26\u53f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_1
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->b()V

    .line 149
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pyw_iv_back"

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pengyouwan/sdk/ui/a/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->d:Landroid/view/View;

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b22\u8fce\u767b\u5f55\uff0c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u8bf7\u9009\u62e9\u6e38\u620f\u8d26\u53f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/i;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->h:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pyw_view_account_list"

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 212
    const/4 v3, 0x0

    .line 211
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->h:Landroid/widget/PopupWindow;

    .line 214
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 215
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->h:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pyw_list_accounts"

    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->i:Landroid/widget/ListView;

    .line 217
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->c()V

    .line 218
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/i$b;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/pengyouwan/sdk/ui/a/i$b;-><init>(Lcom/pengyouwan/sdk/ui/a/i;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->j:Landroid/widget/BaseAdapter;

    .line 219
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->i:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->j:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->i:Landroid/widget/ListView;

    new-instance v2, Lcom/pengyouwan/sdk/ui/a/i$2;

    invoke-direct {v2, p0}, Lcom/pengyouwan/sdk/ui/a/i$2;-><init>(Lcom/pengyouwan/sdk/ui/a/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    return-void
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->j:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    .line 246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    .line 247
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->g()Lorg/json/JSONArray;

    move-result-object v3

    .line 248
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 260
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->d()I

    move-result v5

    const v6, 0xa003

    if-ne v5, v6, :cond_2

    .line 261
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/b/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1
    return-void

    .line 251
    .restart local v1    # "i":I
    :cond_1
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 252
    .local v2, "jobj":Lorg/json/JSONObject;
    new-instance v4, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v4}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 253
    .local v4, "user":Lcom/pengyouwan/sdk/entity/c;
    const-string v5, "account"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "user":Lcom/pengyouwan/sdk/entity/c;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 263
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 264
    iget-object v6, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 266
    :cond_3
    iget-object v5, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 301
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/d/h;->a(Z)V

    .line 302
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/h;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/ui/a/h;-><init>(Landroid/app/Activity;)V

    .line 303
    .local v0, "mDialog":Lcom/pengyouwan/sdk/ui/a/h;
    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/h;->show()V

    .line 305
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->dismiss()V

    .line 306
    return-void
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/a/i;->dismiss()V

    .line 315
    :cond_0
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v3

    .line 316
    .local v3, "user":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/entity/c;->l()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    const-class v5, Lcom/pengyouwan/sdk/activity/IDCardInfomationActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 319
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 336
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/pengyouwan/sdk/activity/ForgetLoginPasswordActivity;

    if-eq v4, v5, :cond_2

    .line 322
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/pengyouwan/sdk/activity/RegisterActivity;

    if-ne v4, v5, :cond_3

    .line 324
    :cond_2
    invoke-static {}, Lcom/pengyouwan/sdk/d/f;->g()V

    .line 327
    :cond_3
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/h;->h()V

    .line 328
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "sdk_extra_user"

    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pengyouwan/sdk/d/h;->b()Lcom/pengyouwan/sdk/open/User;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 330
    const/4 v0, 0x1

    .line 331
    .local v0, "code":I
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 333
    invoke-static {}, Lcom/pengyouwan/sdk/utils/l;->a()Lcom/pengyouwan/sdk/utils/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 334
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pengyouwan/sdk/d/h;->a(Z)V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 406
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 407
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v2

    .line 409
    .local v2, "user":Lcom/pengyouwan/sdk/entity/c;
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/i$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/i$3;-><init>(Lcom/pengyouwan/sdk/ui/a/i;)V

    .line 423
    .local v1, "task":Lcom/pengyouwan/sdk/g/q;
    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/pengyouwan/sdk/g/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/q;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 426
    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    const/16 v4, 0x1004

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/a/i;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->g()V

    return-void
.end method

.method static synthetic g(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 435
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    const/16 v3, 0x1005

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    :try_start_0
    new-instance v1, Lcom/pengyouwan/sdk/ui/a/i$4;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/ui/a/i$4;-><init>(Lcom/pengyouwan/sdk/ui/a/i;)V

    .line 452
    .local v1, "task":Lcom/pengyouwan/sdk/g/b;
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->k:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pengyouwan/sdk/g/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1    # "task":Lcom/pengyouwan/sdk/g/b;
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    .line 455
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    const/16 v3, 0x1007

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/pengyouwan/sdk/ui/a/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/pengyouwan/sdk/ui/a/i;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->d()V

    return-void
.end method

.method static synthetic l(Lcom/pengyouwan/sdk/ui/a/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->f()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u767b\u5f55..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->e()V

    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 188
    :pswitch_4
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_3

    .line 189
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/i;->e:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u6ce8\u518c..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 194
    :pswitch_5
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 197
    :cond_4
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->e()V

    goto :goto_0

    .line 200
    :pswitch_6
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->w:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/pengyouwan/framework/base/b;->onAttachedToWindow()V

    .line 108
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/a/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->g()V

    .line 111
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 236
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/a/i;->d()V

    .line 239
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/base/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
