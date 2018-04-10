.class public Lcom/pengyouwan/sdk/g/s$a;
.super Lcom/pengyouwan/sdk/e/c;
.source "LoginTimeUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/g/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/g/s;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/g/s;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/s$a;->a:Lcom/pengyouwan/sdk/g/s;

    invoke-direct {p0}, Lcom/pengyouwan/sdk/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/pengyouwan/sdk/g/s$a;->b:Ljava/lang/String;

    .line 156
    return-void
.end method
