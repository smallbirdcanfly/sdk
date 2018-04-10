.class public Lcom/pengyouwan/sdk/d/h;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/sdk/d/h$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/pengyouwan/sdk/entity/c;

.field private c:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/h;->c:Lorg/json/JSONArray;

    .line 22
    return-void
.end method

.method public static final a()Lcom/pengyouwan/sdk/d/h;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/pengyouwan/sdk/d/h$a;->a()Lcom/pengyouwan/sdk/d/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "changeType"    # I

    .prologue
    .line 92
    invoke-static {p1}, Lcom/pengyouwan/sdk/f/a;->a(I)V

    .line 93
    iput p1, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    .line 94
    return-void
.end method

.method public a(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 1
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/pengyouwan/sdk/d/h;->a(Lcom/pengyouwan/sdk/entity/c;Z)V

    .line 46
    return-void
.end method

.method public a(Lcom/pengyouwan/sdk/entity/c;Z)V
    .locals 0
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;
    .param p2, "isSave"    # Z

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/h;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/pengyouwan/sdk/d/h;->b(Lcom/pengyouwan/sdk/entity/c;)V

    .line 54
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "userList"    # Lorg/json/JSONArray;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/pengyouwan/sdk/d/h;->c:Lorg/json/JSONArray;

    .line 118
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_0

    const v0, 0xa002

    :goto_0
    iput v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    .line 98
    iget v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    invoke-static {v0}, Lcom/pengyouwan/sdk/f/a;->a(I)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/pengyouwan/sdk/open/User;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/h;->b:Lcom/pengyouwan/sdk/entity/c;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/h;->b:Lcom/pengyouwan/sdk/entity/c;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/entity/c;->k()Lcom/pengyouwan/sdk/open/User;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/pengyouwan/sdk/entity/c;)V
    .locals 3
    .param p1, "user"    # Lcom/pengyouwan/sdk/entity/c;

    .prologue
    .line 76
    new-instance v0, Lcom/pengyouwan/sdk/entity/c;

    invoke-direct {v0}, Lcom/pengyouwan/sdk/entity/c;-><init>()V

    .line 77
    .local v0, "userDb":Lcom/pengyouwan/sdk/entity/c;
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->h()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->c(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/pengyouwan/sdk/b/d;->a()Lcom/pengyouwan/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pengyouwan/sdk/b/d;->b(Lcom/pengyouwan/sdk/entity/c;)J

    .line 84
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/pengyouwan/sdk/entity/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/entity/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/pengyouwan/sdk/entity/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/h;->b:Lcom/pengyouwan/sdk/entity/c;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/pengyouwan/sdk/f/a;->a()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    .line 88
    iget v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/pengyouwan/sdk/f/a;->a()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    .line 104
    iget v0, p0, Lcom/pengyouwan/sdk/d/h;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/h;->b:Lcom/pengyouwan/sdk/entity/c;

    .line 110
    return-void
.end method

.method public g()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pengyouwan/sdk/d/h;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pengyouwan/sdk/d/h;->c:Lorg/json/JSONArray;

    .line 123
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/pengyouwan/sdk/d/h;->f()V

    .line 128
    const/4 v0, 0x3

    .line 129
    .local v0, "code":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/d/g;->b(ILandroid/os/Bundle;)V

    .line 130
    return-void
.end method
