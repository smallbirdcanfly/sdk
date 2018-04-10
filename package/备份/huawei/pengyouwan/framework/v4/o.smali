.class Lcom/pengyouwan/framework/v4/o;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final a:[I

.field static final b:[J

.field static final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Lcom/pengyouwan/framework/v4/o;->a:[I

    .line 21
    new-array v0, v1, [J

    sput-object v0, Lcom/pengyouwan/framework/v4/o;->b:[J

    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/pengyouwan/framework/v4/o;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/pengyouwan/framework/v4/o;->b(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method static a([III)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 49
    .local v0, "hi":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 61
    xor-int/lit8 v2, v1, -0x1

    :cond_0
    return v2

    .line 50
    :cond_1
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 51
    .local v2, "mid":I
    aget v3, p0, v2

    .line 53
    .local v3, "midVal":I
    if-ge v3, p2, :cond_2

    .line 54
    add-int/lit8 v1, v2, 0x1

    .line 55
    goto :goto_0

    :cond_2
    if-le v3, p2, :cond_0

    .line 56
    add-int/lit8 v0, v2, -0x1

    .line 57
    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 37
    .end local p0    # "need":I
    :goto_1
    return p0

    .line 34
    .restart local p0    # "need":I
    :cond_0
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 35
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
