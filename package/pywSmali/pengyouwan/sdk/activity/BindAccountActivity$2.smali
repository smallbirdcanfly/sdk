.class Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;
.super Ljava/lang/Object;
.source "BindAccountActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/BindAccountActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/BindAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    const v1, 0xd007

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->setResult(I)V

    .line 174
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindAccountActivity$2;->a:Lcom/pengyouwan/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/activity/BindAccountActivity;->finish()V

    .line 175
    return-void
.end method
