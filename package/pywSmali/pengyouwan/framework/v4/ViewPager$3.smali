.class Lcom/pengyouwan/framework/v4/ViewPager$3;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/v4/ViewPager;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/ViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/ViewPager$3;->a:Lcom/pengyouwan/framework/v4/ViewPager;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager$3;->a:Lcom/pengyouwan/framework/v4/ViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pengyouwan/framework/v4/ViewPager;->a(Lcom/pengyouwan/framework/v4/ViewPager;I)V

    .line 238
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ViewPager$3;->a:Lcom/pengyouwan/framework/v4/ViewPager;

    invoke-virtual {v0}, Lcom/pengyouwan/framework/v4/ViewPager;->b()V

    .line 239
    return-void
.end method
