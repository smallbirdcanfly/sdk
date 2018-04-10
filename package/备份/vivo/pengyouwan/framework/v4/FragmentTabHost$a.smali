.class final Lcom/pengyouwan/framework/v4/FragmentTabHost$a;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Bundle;

.field private d:Lcom/pengyouwan/framework/v4/Fragment;


# direct methods
.method static synthetic a(Lcom/pengyouwan/framework/v4/FragmentTabHost$a;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentTabHost$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    return-object v0
.end method

.method static synthetic a(Lcom/pengyouwan/framework/v4/FragmentTabHost$a;Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/FragmentTabHost$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    return-void
.end method

.method static synthetic b(Lcom/pengyouwan/framework/v4/FragmentTabHost$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentTabHost$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/pengyouwan/framework/v4/FragmentTabHost$a;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentTabHost$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic d(Lcom/pengyouwan/framework/v4/FragmentTabHost$a;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentTabHost$a;->c:Landroid/os/Bundle;

    return-object v0
.end method
