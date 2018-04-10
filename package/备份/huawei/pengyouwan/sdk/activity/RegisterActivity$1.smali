.class Lcom/pengyouwan/sdk/activity/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/RegisterActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "fragmentCode"    # I

    .prologue
    .line 175
    const v0, 0xa000

    if-ne p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->a(Lcom/pengyouwan/sdk/activity/RegisterActivity;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/RegisterActivity$1;->a:Lcom/pengyouwan/sdk/activity/RegisterActivity;

    invoke-static {v0, p1}, Lcom/pengyouwan/sdk/activity/RegisterActivity;->a(Lcom/pengyouwan/sdk/activity/RegisterActivity;I)V

    .line 179
    return-void
.end method
