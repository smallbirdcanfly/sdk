.class public Lcom/pengyouwan/sdk/utils/l;
.super Ljava/lang/Object;
.source "StaticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/utils/l$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/lang/String;

.field private static j:Lcom/pengyouwan/sdk/utils/l;


# instance fields
.field d:Z

.field private e:I

.field private f:Lcom/pengyouwan/sdk/utils/l$a;

.field private g:Ljava/util/Timer;

.field private h:Z

.field private i:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/pengyouwan/sdk/utils/l;->a:I

    .line 34
    sget v0, Lcom/pengyouwan/sdk/utils/l;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pengyouwan/sdk/utils/l;->b:I

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/pengyouwan/sdk/utils/l;->c:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/pengyouwan/sdk/utils/l;

    sget v1, Lcom/pengyouwan/sdk/utils/l;->a:I

    invoke-direct {v0, v1}, Lcom/pengyouwan/sdk/utils/l;-><init>(I)V

    sput-object v0, Lcom/pengyouwan/sdk/utils/l;->j:Lcom/pengyouwan/sdk/utils/l;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Lcom/pengyouwan/sdk/utils/l;->a:I

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->e:I

    .line 38
    new-instance v0, Lcom/pengyouwan/sdk/utils/l$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/sdk/utils/l$a;-><init>(Lcom/pengyouwan/sdk/utils/l;)V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    .line 42
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/utils/l;->h:Z

    .line 46
    const v0, 0x2bf20

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->i:I

    .line 136
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/utils/l;->d:Z

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->k:Z

    .line 220
    iput-boolean v1, p0, Lcom/pengyouwan/sdk/utils/l;->l:Z

    .line 55
    iput p1, p0, Lcom/pengyouwan/sdk/utils/l;->e:I

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/l;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/pengyouwan/sdk/utils/l;->e:I

    return v0
.end method

.method public static a()Lcom/pengyouwan/sdk/utils/l;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/pengyouwan/sdk/utils/l;->j:Lcom/pengyouwan/sdk/utils/l;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/utils/l;Z)V
    .locals 0

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/utils/l;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/sdk/utils/l;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/pengyouwan/sdk/utils/l;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->k()V

    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/pengyouwan/sdk/utils/l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 170
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    .line 173
    :cond_0
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    .line 200
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v2, v2, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 202
    :cond_0
    new-instance v1, Lcom/pengyouwan/sdk/utils/l$3;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/utils/l$3;-><init>(Lcom/pengyouwan/sdk/utils/l;)V

    .line 213
    .local v1, "task":Lcom/pengyouwan/sdk/g/s;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v3, v3, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pengyouwan/sdk/g/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 216
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(ZLjava/lang/String;I)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "period"    # I

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/pengyouwan/sdk/utils/l;->h:Z

    .line 69
    sput-object p2, Lcom/pengyouwan/sdk/utils/l;->c:Ljava/lang/String;

    .line 70
    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    .line 71
    const v0, 0x2bf20

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->i:I

    .line 72
    sget v0, Lcom/pengyouwan/sdk/utils/l;->a:I

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->e:I

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    mul-int/lit8 v0, p3, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->i:I

    .line 75
    sget v0, Lcom/pengyouwan/sdk/utils/l;->b:I

    iput v0, p0, Lcom/pengyouwan/sdk/utils/l;->e:I

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 86
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pengyouwan/sdk/utils/l;->d:Z

    .line 87
    invoke-static {}, Lcom/pengyouwan/sdk/b/c;->a()Lcom/pengyouwan/sdk/b/c;

    move-result-object v3

    .line 88
    .local v3, "mOp":Lcom/pengyouwan/sdk/b/c;
    new-instance v4, Lcom/pengyouwan/sdk/utils/l$1;

    invoke-direct {v4, p0}, Lcom/pengyouwan/sdk/utils/l$1;-><init>(Lcom/pengyouwan/sdk/utils/l;)V

    .line 99
    .local v4, "task":Lcom/pengyouwan/sdk/g/s;
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/b/c;->b()Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0, v2}, Lcom/pengyouwan/sdk/utils/l;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "info":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, v1}, Lcom/pengyouwan/sdk/g/s;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/pengyouwan/framework/base/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lcom/pengyouwan/framework/base/a;
    invoke-virtual {v0}, Lcom/pengyouwan/framework/base/a;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 7

    .prologue
    .line 126
    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-object v3, v3, Lcom/pengyouwan/sdk/utils/l$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v3, v3, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 130
    .local v1, "t":J
    iget-object v3, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v3, v3, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 131
    invoke-static {}, Lcom/pengyouwan/sdk/b/c;->a()Lcom/pengyouwan/sdk/b/c;

    move-result-object v0

    .line 132
    .local v0, "mOp":Lcom/pengyouwan/sdk/b/c;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v4, v4, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-object v4, v4, Lcom/pengyouwan/sdk/utils/l$a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/pengyouwan/sdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pengyouwan/sdk/utils/l;->d:Z

    .line 144
    invoke-static {}, Lcom/pengyouwan/sdk/d/h;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pengyouwan/sdk/d/h;->c()Lcom/pengyouwan/sdk/entity/c;

    move-result-object v1

    .line 145
    .local v1, "user":Lcom/pengyouwan/sdk/entity/c;
    if-nez v1, :cond_1

    .line 161
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_1
    invoke-virtual {v1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "account":Ljava/lang/String;
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-object v2, v2, Lcom/pengyouwan/sdk/utils/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iget-wide v4, v4, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->j()V

    .line 154
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 155
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    iput-object v0, v2, Lcom/pengyouwan/sdk/utils/l$a;->a:Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    .line 157
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/utils/l;->e()V

    goto :goto_0

    .line 159
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "user":Lcom/pengyouwan/sdk/entity/c;
    :cond_3
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->j()V

    goto :goto_0
.end method

.method public e()V
    .locals 6

    .prologue
    .line 178
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    .line 179
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->g:Ljava/util/Timer;

    new-instance v1, Lcom/pengyouwan/sdk/utils/l$2;

    invoke-direct {v1, p0}, Lcom/pengyouwan/sdk/utils/l$2;-><init>(Lcom/pengyouwan/sdk/utils/l;)V

    .line 196
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/pengyouwan/sdk/utils/l;->i:I

    int-to-long v4, v4

    .line 179
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 197
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->l:Z

    .line 224
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/utils/l;->c()V

    .line 225
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->j()V

    .line 226
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    .line 227
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->l:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/pengyouwan/sdk/utils/l;->f:Lcom/pengyouwan/sdk/utils/l$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pengyouwan/sdk/utils/l$a;->b:J

    .line 232
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/utils/l;->d()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/utils/l;->l:Z

    .line 235
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/pengyouwan/sdk/utils/l;->j()V

    .line 242
    invoke-static {}, Lcom/pengyouwan/sdk/b/c;->a()Lcom/pengyouwan/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/b/c;->d()V

    .line 243
    const/4 v0, 0x0

    sput-object v0, Lcom/pengyouwan/sdk/utils/l;->j:Lcom/pengyouwan/sdk/utils/l;

    .line 244
    return-void
.end method
