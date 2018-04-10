.class Lcom/pengyouwan/framework/v4/FragmentActivity$2;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/FragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$2;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentActivity$2;->a:Lcom/pengyouwan/framework/v4/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
