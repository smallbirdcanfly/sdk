.class Lcom/pengyouwan/framework/volley/v$a$a;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/volley/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "thread"    # J
    .param p4, "time"    # J

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/pengyouwan/framework/volley/v$a$a;->a:Ljava/lang/String;

    .line 121
    iput-wide p2, p0, Lcom/pengyouwan/framework/volley/v$a$a;->b:J

    .line 122
    iput-wide p4, p0, Lcom/pengyouwan/framework/volley/v$a$a;->c:J

    .line 123
    return-void
.end method
