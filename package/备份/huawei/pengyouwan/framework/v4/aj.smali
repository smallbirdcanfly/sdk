.class Lcom/pengyouwan/framework/v4/aj;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/pengyouwan/framework/v4/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pengyouwan/framework/v4/ai",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pengyouwan/framework/v4/ai;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pengyouwan/framework/v4/ai",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/pengyouwan/framework/v4/aj;, "Lcom/pengyouwan/framework/v4/aj<TT;>;"
    .local p1, "callbacks":Lcom/pengyouwan/framework/v4/ai;, "Lcom/pengyouwan/framework/v4/ai<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/aj;->a:Lcom/pengyouwan/framework/v4/ai;

    .line 33
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/pengyouwan/framework/v4/aj;, "Lcom/pengyouwan/framework/v4/aj<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aj;->a:Lcom/pengyouwan/framework/v4/ai;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pengyouwan/framework/v4/ai;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/pengyouwan/framework/v4/aj;, "Lcom/pengyouwan/framework/v4/aj<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aj;->a:Lcom/pengyouwan/framework/v4/ai;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/ai;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/pengyouwan/framework/v4/aj;, "Lcom/pengyouwan/framework/v4/aj<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/aj;->a:Lcom/pengyouwan/framework/v4/ai;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/v4/ai;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
