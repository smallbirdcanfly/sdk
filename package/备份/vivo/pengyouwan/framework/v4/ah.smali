.class public Lcom/pengyouwan/framework/v4/ah;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pengyouwan/framework/v4/ah$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pengyouwan/framework/v4/ai;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pengyouwan/framework/v4/ai",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "callbacks":Lcom/pengyouwan/framework/v4/ai;, "Lcom/pengyouwan/framework/v4/ai<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/pengyouwan/framework/v4/ak;->a(Lcom/pengyouwan/framework/v4/ai;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_0
    new-instance v0, Lcom/pengyouwan/framework/v4/ah$a;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/ah$a;-><init>(Lcom/pengyouwan/framework/v4/ai;)V

    return-object v0
.end method
