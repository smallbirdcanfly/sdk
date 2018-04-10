.class public Lcom/pengyouwan/framework/volley/d;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/pengyouwan/framework/volley/r;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x1f40

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/pengyouwan/framework/volley/d;-><init>(IIF)V

    .line 52
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0
    .param p1, "initialTimeoutMs"    # I
    .param p2, "maxNumRetries"    # I
    .param p3, "backoffMultiplier"    # F

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/pengyouwan/framework/volley/d;->a:I

    .line 62
    iput p2, p0, Lcom/pengyouwan/framework/volley/d;->c:I

    .line 63
    iput p3, p0, Lcom/pengyouwan/framework/volley/d;->d:F

    .line 64
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/pengyouwan/framework/volley/d;->a:I

    return v0
.end method

.method public a(Lcom/pengyouwan/framework/volley/u;)V
    .locals 3
    .param p1, "error"    # Lcom/pengyouwan/framework/volley/u;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pengyouwan/framework/volley/u;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lcom/pengyouwan/framework/volley/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pengyouwan/framework/volley/d;->b:I

    .line 96
    iget v0, p0, Lcom/pengyouwan/framework/volley/d;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pengyouwan/framework/volley/d;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pengyouwan/framework/volley/d;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pengyouwan/framework/volley/d;->a:I

    .line 97
    invoke-virtual {p0}, Lcom/pengyouwan/framework/volley/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    throw p1

    .line 100
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/pengyouwan/framework/volley/d;->b:I

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/pengyouwan/framework/volley/d;->b:I

    iget v1, p0, Lcom/pengyouwan/framework/volley/d;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
