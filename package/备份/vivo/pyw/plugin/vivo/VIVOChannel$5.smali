.class Lcom/pyw/plugin/vivo/VIVOChannel$5;
.super Lcom/android/volley/toolbox/StringRequest;
.source "VIVOChannel.java"


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

.field private final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/vivo/VIVOChannel;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 1
    .local p4, "$anonymous2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pyw/plugin/vivo/VIVOChannel$5;->this$0:Lcom/pyw/plugin/vivo/VIVOChannel;

    iput-object p6, p0, Lcom/pyw/plugin/vivo/VIVOChannel$5;->val$params:Ljava/util/HashMap;

    .line 263
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/pyw/plugin/vivo/VIVOChannel$5;->val$params:Ljava/util/HashMap;

    return-object v0
.end method
