.class Lcom/pengyouwan/sdk/ui/a/e$a;
.super Ljava/lang/Object;
.source "DownloadProgressDialog.java"

# interfaces
.implements Lcom/pengyouwan/sdk/utils/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/sdk/ui/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/ui/a/e;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/FileOutputStream;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/pengyouwan/sdk/ui/a/e;Ljava/lang/String;)V
    .locals 1
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->a:Lcom/pengyouwan/sdk/ui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->d:Z

    .line 168
    iput-object p2, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->b:Ljava/lang/String;

    .line 169
    return-void
.end method

.method static synthetic a(Lcom/pengyouwan/sdk/ui/a/e$a;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->d:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a([BIII)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "progress"    # I

    .prologue
    .line 174
    :try_start_0
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->c:Ljava/io/FileOutputStream;

    if-nez v4, :cond_2

    .line 175
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 178
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 181
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 183
    .end local v3    # "parent":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->c:Ljava/io/FileOutputStream;

    .line 185
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 187
    .local v2, "msg":Landroid/os/Message;
    iput p4, v2, Landroid/os/Message;->arg1:I

    .line 188
    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    .line 189
    iget-object v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->a:Lcom/pengyouwan/sdk/ui/a/e;

    invoke-static {v4}, Lcom/pengyouwan/sdk/ui/a/e;->a(Lcom/pengyouwan/sdk/ui/a/e;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pengyouwan/sdk/ui/a/e$a;->d:Z

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
