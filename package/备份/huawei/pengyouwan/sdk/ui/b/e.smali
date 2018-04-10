.class public Lcom/pengyouwan/sdk/ui/b/e;
.super Lcom/pengyouwan/framework/base/d;
.source "BindPasscardPwdFragment.java"


# instance fields
.field private S:Lcom/pengyouwan/sdk/c/b;

.field private T:Lcom/pengyouwan/sdk/ui/a/d;

.field private final U:I

.field private final V:I

.field private final W:I

.field private final X:I

.field private Y:Landroid/widget/EditText;

.field private Z:Landroid/widget/Button;

.field private aa:Landroid/content/Context;

.field private ab:Ljava/lang/String;

.field private ac:Landroid/os/Bundle;

.field private ad:Landroid/widget/ImageView;

.field private ae:Z

.field private af:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/d;-><init>()V

    .line 42
    const/16 v0, 0x2000

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->U:I

    .line 44
    const/16 v0, 0x2003

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->V:I

    .line 46
    const/16 v0, 0x2004

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->W:I

    .line 48
    const/16 v0, 0x2005

    iput v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->X:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ae:Z

    .line 108
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/e$1;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/e$1;-><init>(Lcom/pengyouwan/sdk/ui/b/e;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->af:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->Z:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->c()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ac:Landroid/os/Bundle;

    .line 94
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->aa:Landroid/content/Context;

    .line 95
    const-string v1, "pyw_et_register_account"

    .line 94
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->Y:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->aa:Landroid/content/Context;

    .line 97
    const-string v1, "pyw_btn_getcode"

    .line 96
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->Z:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->aa:Landroid/content/Context;

    .line 99
    const-string v1, "pyw_pwd_visible_img"

    .line 98
    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/utils/j;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ad:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ad:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->Z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/b/e;->af:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/e;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/e;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/e;->ab:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/b/e;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/ui/b/e;->ae:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 136
    :goto_0
    return v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_2

    .line 133
    :cond_1
    const-string v1, "\u5bc6\u7801\u957f\u5ea6\u987b\u4e3a6~12\u4f4d"

    invoke-static {v1}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->Y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/e;I)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/ui/b/e;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/ui/b/e;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/pengyouwan/sdk/ui/b/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/ui/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ad:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/pengyouwan/sdk/ui/b/e;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->ae:Z

    return v0
.end method

.method static synthetic f(Lcom/pengyouwan/sdk/ui/b/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->aa:Landroid/content/Context;

    return-object v0
.end method

.method public static k(Landroid/os/Bundle;)Lcom/pengyouwan/sdk/ui/b/e;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/e;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/ui/b/e;-><init>()V

    .line 66
    .local v0, "codeFragment":Lcom/pengyouwan/sdk/ui/b/e;
    invoke-virtual {v0, p0}, Lcom/pengyouwan/sdk/ui/b/e;->c(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method private x()V
    .locals 5

    .prologue
    .line 152
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/e;->a(I)V

    .line 153
    new-instance v0, Lcom/pengyouwan/sdk/ui/b/e$2;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/ui/b/e$2;-><init>(Lcom/pengyouwan/sdk/ui/b/e;)V

    .line 168
    .local v0, "bindPassportTask":Lcom/pengyouwan/sdk/g/d;
    :try_start_0
    iget-object v2, p0, Lcom/pengyouwan/sdk/ui/b/e;->ab:Ljava/lang/String;

    iget-object v3, p0, Lcom/pengyouwan/sdk/ui/b/e;->ac:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/pengyouwan/sdk/g/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Lcom/pengyouwan/framework/base/a;
    const/16 v2, 0x2003

    invoke-virtual {p0, v2}, Lcom/pengyouwan/sdk/ui/b/e;->a(I)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9519\u8bef\u7c7b\u578b:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->T:Lcom/pengyouwan/sdk/ui/a/d;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->T:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->dismiss()V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    .line 79
    const-string v3, "pyw_fragment_bindpasscard_pwd"

    .line 78
    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 79
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pengyouwan/sdk/utils/a;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 82
    .local v0, "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/pengyouwan/sdk/ui/b/e;->aa:Landroid/content/Context;

    .line 88
    invoke-direct {p0, v1}, Lcom/pengyouwan/sdk/ui/b/e;->a(Landroid/view/View;)V

    .line 89
    return-object v1

    .line 84
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/pengyouwan/sdk/utils/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 85
    .restart local v0    # "size":I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->T:Lcom/pengyouwan/sdk/ui/a/d;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {p0}, Lcom/pengyouwan/sdk/ui/b/e;->d()Lcom/pengyouwan/framework/v4/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-direct {v0, v1, v2}, Lcom/pengyouwan/sdk/ui/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->T:Lcom/pengyouwan/sdk/ui/a/d;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->T:Lcom/pengyouwan/sdk/ui/a/d;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/d;->show()V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/e;->y()V

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/e;->y()V

    .line 191
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->S:Lcom/pengyouwan/sdk/c/b;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/pengyouwan/sdk/ui/b/e;->S:Lcom/pengyouwan/sdk/c/b;

    const/16 v1, 0x1014

    invoke-interface {v0, v1}, Lcom/pengyouwan/sdk/c/b;->a(I)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x2000
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/pengyouwan/sdk/c/b;)V
    .locals 0
    .param p1, "c"    # Lcom/pengyouwan/sdk/c/b;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/b/e;->S:Lcom/pengyouwan/sdk/c/b;

    .line 72
    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/pengyouwan/sdk/ui/b/e;->x()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x2005
        :pswitch_0
    .end packed-switch
.end method
