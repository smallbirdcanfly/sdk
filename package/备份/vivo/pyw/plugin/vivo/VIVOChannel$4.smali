.class Lcom/pyw/plugin/vivo/VIVOChannel$4;
.super Ljava/lang/Object;
.source "VIVOChannel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/vivo/VIVOChannel;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pyw/plugin/vivo/VIVOChannel;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/vivo/VIVOChannel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$4;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$4;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    invoke-static {v0}, Lcom/pyw/plugin/vivo/VIVOChannel;->access$1(Lcom/pyw/plugin/vivo/VIVOChannel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u53c2\u6570\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    return-void
.end method
