.class Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;
.super Ljava/lang/Object;
.source "UserCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/UserCenterActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    .line 153
    iget-object v1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    .line 154
    const-string v2, "pyw_networkunavilable"

    .line 152
    invoke-static {v1, v2}, Lcom/pengyouwan/sdk/utils/j;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$1;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;I)V

    goto :goto_0
.end method
