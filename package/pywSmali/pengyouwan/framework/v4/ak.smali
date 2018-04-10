.class Lcom/pengyouwan/framework/v4/ak;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method static a(Lcom/pengyouwan/framework/v4/ai;)Landroid/os/Parcelable$Creator;
    .locals 1
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
    .line 24
    .local p0, "callbacks":Lcom/pengyouwan/framework/v4/ai;, "Lcom/pengyouwan/framework/v4/ai<TT;>;"
    new-instance v0, Lcom/pengyouwan/framework/v4/aj;

    invoke-direct {v0, p0}, Lcom/pengyouwan/framework/v4/aj;-><init>(Lcom/pengyouwan/framework/v4/ai;)V

    return-object v0
.end method
