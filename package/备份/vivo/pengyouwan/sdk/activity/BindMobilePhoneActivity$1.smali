.class Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity$1;
.super Ljava/lang/Object;
.source "BindMobilePhoneActivity.java"

# interfaces
.implements Lcom/pengyouwan/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "fragmentCode"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity$1;->a:Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;

    invoke-static {v0, p1}, Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;->a(Lcom/pengyouwan/sdk/activity/BindMobilePhoneActivity;I)V

    .line 103
    return-void
.end method
