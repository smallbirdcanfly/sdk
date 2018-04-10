.class public final Lcom/pengyouwan/pywsdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/pywsdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final gridPasswordView:[I

.field public static final gridPasswordView_gridColor:I = 0x3

.field public static final gridPasswordView_lineColor:I = 0x2

.field public static final gridPasswordView_lineWidth:I = 0x4

.field public static final gridPasswordView_passwordLength:I = 0x5

.field public static final gridPasswordView_passwordTransformation:I = 0x6

.field public static final gridPasswordView_passwordType:I = 0x7

.field public static final gridPasswordView_textColor:I = 0x0

.field public static final gridPasswordView_textSize:I = 0x1

.field public static final pyw_waveframelayout:[I

.field public static final pyw_waveframelayout_waveFillColor:I = 0x1

.field public static final pyw_waveframelayout_waveFrameColor:I = 0x0

.field public static final pyw_waveframelayout_whichFrame:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 764
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pengyouwan/pywsdk/R$styleable;->gridPasswordView:[I

    .line 773
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/pengyouwan/pywsdk/R$styleable;->pyw_waveframelayout:[I

    .line 776
    return-void

    .line 764
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data

    .line 773
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
