.class Lcom/pyw/plugin/excutecallback/InitCallback$4$1;
.super Ljava/lang/Object;
.source "InitCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pyw/plugin/excutecallback/InitCallback$4;->onResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pyw/plugin/excutecallback/InitCallback$4;


# direct methods
.method constructor <init>(Lcom/pyw/plugin/excutecallback/InitCallback$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pyw/plugin/excutecallback/InitCallback$4$1;->this$1:Lcom/pyw/plugin/excutecallback/InitCallback$4;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    invoke-static {}, Lcom/pengyouwan/sdk/b/a;->a()Lcom/pengyouwan/sdk/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pengyouwan/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "behaviorData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/pengyouwan/framework/a/a;->a()Lcom/pengyouwan/framework/a/a;

    move-result-object v3

    .line 138
    const-string v4, "http://dt.pyw.cn/sdk/userActionData"

    .line 137
    invoke-virtual {v3, v4, v2}, Lcom/pengyouwan/framework/a/a;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v2    # "sBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v2    # "sBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
