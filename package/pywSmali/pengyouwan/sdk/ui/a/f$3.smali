.class Lcom/pengyouwan/sdk/ui/a/f$3;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/ui/a/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/f;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/ui/a/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/f$3;->a:Lcom/pengyouwan/sdk/ui/a/f;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Lcom/pengyouwan/sdk/b/a;->a()Lcom/pengyouwan/sdk/b/a;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/pengyouwan/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "behaviorData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/pengyouwan/framework/a/a;->a()Lcom/pengyouwan/framework/a/a;

    move-result-object v3

    .line 156
    const-string v4, "http://dt.pyw.cn/sdk/userActionData"

    .line 155
    invoke-virtual {v3, v4, v2}, Lcom/pengyouwan/framework/a/a;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "sBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v2    # "sBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
