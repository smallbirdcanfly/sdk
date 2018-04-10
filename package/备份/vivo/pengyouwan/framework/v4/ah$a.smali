.class Lcom/pengyouwan/framework/v4/ah$a;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/pengyouwan/framework/v4/ai;
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
    .line 45
    .local p0, "this":Lcom/pengyouwan/framework/v4/ah$a;, "Lcom/pengyouwan/framework/v4/ah$a<TT;>;"
    .local p1, "callbacks":Lcom/pengyouwan/framework/v4/ai;, "Lcom/pengyouwan/framework/v4/ai<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/ah$a;->a:Lcom/pengyouwan/framework/v4/ai;

    .line 47
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/pengyouwan/framework/v4/ah$a;, "Lcom/pengyouwan/framework/v4/ah$a<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ah$a;->a:Lcom/pengyouwan/framework/v4/ai;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/pengyouwan/framework/v4/ai;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

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
    .line 56
    .local p0, "this":Lcom/pengyouwan/framework/v4/ah$a;, "Lcom/pengyouwan/framework/v4/ah$a<TT;>;"
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/ah$a;->a:Lcom/pengyouwan/framework/v4/ai;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/v4/ai;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
