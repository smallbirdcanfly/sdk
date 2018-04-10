.class final Lcom/pengyouwan/framework/v4/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pengyouwan/framework/v4/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Lcom/pengyouwan/framework/v4/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/pengyouwan/framework/v4/FragmentState$1;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/FragmentState$1;-><init>()V

    .line 117
    sput-object v0, Lcom/pengyouwan/framework/v4/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->b:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->c:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->d:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->e:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->f:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->g:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->h:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    .line 67
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v0, v2

    .line 63
    goto :goto_1

    :cond_2
    move v1, v2

    .line 64
    goto :goto_2
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/v4/Fragment;)V
    .locals 1
    .param p1, "frag"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->a:Ljava/lang/String;

    .line 46
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->b:I

    .line 47
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->c:Z

    .line 48
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->d:I

    .line 49
    iget v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    iput v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->e:I

    .line 50
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->f:Ljava/lang/String;

    .line 51
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->E:Z

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->g:Z

    .line 52
    iget-boolean v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    iput-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->h:Z

    .line 53
    iget-object v0, p1, Lcom/pengyouwan/framework/v4/Fragment;->k:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/FragmentActivity;Lcom/pengyouwan/framework/v4/Fragment;)Lcom/pengyouwan/framework/v4/Fragment;
    .locals 3
    .param p1, "activity"    # Lcom/pengyouwan/framework/v4/FragmentActivity;
    .param p2, "parent"    # Lcom/pengyouwan/framework/v4/Fragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    .line 97
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/pengyouwan/framework/v4/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/pengyouwan/framework/v4/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    .line 80
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/pengyouwan/framework/v4/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 82
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->g:Landroid/os/Bundle;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->b:I

    invoke-virtual {v0, v1, p2}, Lcom/pengyouwan/framework/v4/Fragment;->a(ILcom/pengyouwan/framework/v4/Fragment;)V

    .line 85
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->c:Z

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->r:Z

    .line 86
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->t:Z

    .line 87
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->d:I

    iput v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->z:I

    .line 88
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->e:I

    iput v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->A:I

    .line 89
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->B:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->g:Z

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->E:Z

    .line 91
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-boolean v1, p0, Lcom/pengyouwan/framework/v4/FragmentState;->h:Z

    iput-boolean v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->D:Z

    .line 92
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    iget-object v1, p1, Lcom/pengyouwan/framework/v4/FragmentActivity;->b:Lcom/pengyouwan/framework/v4/u;

    iput-object v1, v0, Lcom/pengyouwan/framework/v4/Fragment;->v:Lcom/pengyouwan/framework/v4/u;

    .line 94
    sget-boolean v0, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiated fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->k:Lcom/pengyouwan/framework/v4/Fragment;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->h:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/FragmentState;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 115
    return-void

    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1

    :cond_2
    move v1, v2

    .line 112
    goto :goto_2
.end method
