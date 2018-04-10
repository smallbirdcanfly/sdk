.class final Lcom/pengyouwan/framework/v4/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pengyouwan/framework/v4/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/pengyouwan/framework/v4/BackStackState$1;

    invoke-direct {v0}, Lcom/pengyouwan/framework/v4/BackStackState$1;-><init>()V

    .line 156
    sput-object v0, Lcom/pengyouwan/framework/v4/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->b:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->c:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->f:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->g:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->h:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->i:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/pengyouwan/framework/v4/u;Lcom/pengyouwan/framework/v4/n;)V
    .locals 8
    .param p1, "fm"    # Lcom/pengyouwan/framework/v4/u;
    .param p2, "bse"    # Lcom/pengyouwan/framework/v4/n;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "numRemoved":I
    iget-object v3, p2, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 42
    .local v3, "op":Lcom/pengyouwan/framework/v4/n$a;
    :goto_0
    if-nez v3, :cond_0

    .line 46
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->d:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    .line 48
    iget-boolean v6, p2, Lcom/pengyouwan/framework/v4/n;->k:Z

    if-nez v6, :cond_2

    .line 49
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 44
    :cond_1
    iget-object v3, v3, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    goto :goto_0

    .line 52
    :cond_2
    iget-object v3, p2, Lcom/pengyouwan/framework/v4/n;->b:Lcom/pengyouwan/framework/v4/n$a;

    .line 53
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 54
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-nez v3, :cond_3

    .line 72
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->i:I

    iput v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->b:I

    .line 73
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->j:I

    iput v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->c:I

    .line 74
    iget-object v6, p2, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    iput-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->d:Ljava/lang/String;

    .line 75
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->o:I

    iput v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->e:I

    .line 76
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->p:I

    iput v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->f:I

    .line 77
    iget-object v6, p2, Lcom/pengyouwan/framework/v4/n;->q:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->g:Ljava/lang/CharSequence;

    .line 78
    iget v6, p2, Lcom/pengyouwan/framework/v4/n;->r:I

    iput v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->h:I

    .line 79
    iget-object v6, p2, Lcom/pengyouwan/framework/v4/n;->s:Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->i:Ljava/lang/CharSequence;

    .line 80
    return-void

    .line 55
    :cond_3
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/pengyouwan/framework/v4/n$a;->c:I

    aput v7, v6, v5

    .line 56
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    iget v6, v6, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    :goto_2
    aput v6, v7, v4

    .line 57
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/pengyouwan/framework/v4/n$a;->e:I

    aput v7, v6, v5

    .line 58
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Lcom/pengyouwan/framework/v4/n$a;->f:I

    aput v7, v6, v4

    .line 59
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Lcom/pengyouwan/framework/v4/n$a;->g:I

    aput v7, v6, v5

    .line 60
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Lcom/pengyouwan/framework/v4/n$a;->h:I

    aput v7, v6, v4

    .line 61
    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 62
    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 63
    .local v0, "N":I
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_3
    if-lt v1, v0, :cond_5

    move v4, v5

    .line 70
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_4
    iget-object v3, v3, Lcom/pengyouwan/framework/v4/n$a;->a:Lcom/pengyouwan/framework/v4/n$a;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 56
    :cond_4
    const/4 v6, -0x1

    goto :goto_2

    .line 65
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pengyouwan/framework/v4/Fragment;

    iget v6, v6, Lcom/pengyouwan/framework/v4/Fragment;->i:I

    aput v6, v7, v5

    .line 64
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_3

    .line 68
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    iget-object v6, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/pengyouwan/framework/v4/u;)Lcom/pengyouwan/framework/v4/n;
    .locals 14
    .param p1, "fm"    # Lcom/pengyouwan/framework/v4/u;

    .prologue
    const/4 v13, 0x1

    .line 95
    new-instance v1, Lcom/pengyouwan/framework/v4/n;

    invoke-direct {v1, p1}, Lcom/pengyouwan/framework/v4/n;-><init>(Lcom/pengyouwan/framework/v4/u;)V

    .line 96
    .local v1, "bse":Lcom/pengyouwan/framework/v4/n;
    const/4 v7, 0x0

    .line 97
    .local v7, "pos":I
    const/4 v5, 0x0

    .line 98
    .local v5, "num":I
    :goto_0
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    array-length v10, v10

    if-lt v7, v10, :cond_0

    .line 127
    iget v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->b:I

    iput v10, v1, Lcom/pengyouwan/framework/v4/n;->i:I

    .line 128
    iget v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->c:I

    iput v10, v1, Lcom/pengyouwan/framework/v4/n;->j:I

    .line 129
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->d:Ljava/lang/String;

    iput-object v10, v1, Lcom/pengyouwan/framework/v4/n;->m:Ljava/lang/String;

    .line 130
    iget v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->e:I

    iput v10, v1, Lcom/pengyouwan/framework/v4/n;->o:I

    .line 131
    iput-boolean v13, v1, Lcom/pengyouwan/framework/v4/n;->k:Z

    .line 132
    iget v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->f:I

    iput v10, v1, Lcom/pengyouwan/framework/v4/n;->p:I

    .line 133
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v10, v1, Lcom/pengyouwan/framework/v4/n;->q:Ljava/lang/CharSequence;

    .line 134
    iget v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->h:I

    iput v10, v1, Lcom/pengyouwan/framework/v4/n;->r:I

    .line 135
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v10, v1, Lcom/pengyouwan/framework/v4/n;->s:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {v1, v13}, Lcom/pengyouwan/framework/v4/n;->a(I)V

    .line 137
    return-object v1

    .line 99
    :cond_0
    new-instance v6, Lcom/pengyouwan/framework/v4/n$a;

    invoke-direct {v6}, Lcom/pengyouwan/framework/v4/n$a;-><init>()V

    .line 100
    .local v6, "op":Lcom/pengyouwan/framework/v4/n$a;
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/pengyouwan/framework/v4/n$a;->c:I

    .line 101
    sget-boolean v10, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v10, :cond_1

    const-string v10, "FragmentManager"

    .line 102
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Instantiate "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " op #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " base fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 101
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v3, v10, v8

    .line 104
    .local v3, "findex":I
    if-ltz v3, :cond_3

    .line 105
    iget-object v10, p1, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pengyouwan/framework/v4/Fragment;

    .line 106
    .local v2, "f":Lcom/pengyouwan/framework/v4/Fragment;
    iput-object v2, v6, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    .line 110
    .end local v2    # "f":Lcom/pengyouwan/framework/v4/Fragment;
    :goto_1
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/pengyouwan/framework/v4/n$a;->e:I

    .line 111
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Lcom/pengyouwan/framework/v4/n$a;->f:I

    .line 112
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v10, v10, v7

    iput v10, v6, Lcom/pengyouwan/framework/v4/n$a;->g:I

    .line 113
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v10, v10, v8

    iput v10, v6, Lcom/pengyouwan/framework/v4/n$a;->h:I

    .line 114
    iget-object v10, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    aget v0, v10, v7

    .line 115
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 116
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v6, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    .line 117
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v0, :cond_4

    .end local v4    # "i":I
    :cond_2
    move v7, v8

    .line 124
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    invoke-virtual {v1, v6}, Lcom/pengyouwan/framework/v4/n;->a(Lcom/pengyouwan/framework/v4/n$a;)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 108
    .end local v0    # "N":I
    :cond_3
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/pengyouwan/framework/v4/n$a;->d:Lcom/pengyouwan/framework/v4/Fragment;

    goto :goto_1

    .line 118
    .end local v7    # "pos":I
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "pos":I
    :cond_4
    sget-boolean v10, Lcom/pengyouwan/framework/v4/u;->a:Z

    if-eqz v10, :cond_5

    const-string v10, "FragmentManager"

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Instantiate "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " set remove fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    aget v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 118
    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_5
    iget-object v10, p1, Lcom/pengyouwan/framework/v4/u;->f:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    aget v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pengyouwan/framework/v4/Fragment;

    .line 121
    .local v9, "r":Lcom/pengyouwan/framework/v4/Fragment;
    iget-object v10, v6, Lcom/pengyouwan/framework/v4/n$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 146
    iget v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    iget v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 154
    return-void
.end method
