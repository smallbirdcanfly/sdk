.class Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;
.super Ljava/lang/Object;
.source "UserCenterActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/UserCenterActivity;->j()V
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
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    invoke-static {v0}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;)Lcom/pengyouwan/sdk/ui/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/ui/a/k;->dismiss()V

    .line 290
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/UserCenterActivity$2;->a:Lcom/pengyouwan/sdk/activity/UserCenterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/sdk/activity/UserCenterActivity;->a(Lcom/pengyouwan/sdk/activity/UserCenterActivity;Z)V

    .line 291
    return-void
.end method
