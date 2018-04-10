.class Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;
.super Ljava/lang/Object;
.source "FastRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pengyouwan/sdk/d/a;->c:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 150
    const/4 v3, 0x0

    .line 152
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 155
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 157
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 159
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-virtual {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 160
    const/4 v8, 0x0

    .line 158
    invoke-static {v6, v7, v2, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    new-instance v7, Landroid/content/Intent;

    .line 163
    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 164
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    invoke-virtual {v6, v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8d26\u53f7\u5bc6\u7801\u5df2\u622a\u56fe\u81f3:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :try_start_2
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 174
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_1
    if-eqz v4, :cond_2

    .line 178
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 185
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 166
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v6, "\u521b\u5efa\u622a\u56fe\u6587\u4ef6\u5931\u8d25"

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    :try_start_4
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_3
    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "\u4fdd\u5b58\u622a\u56fe\u6587\u4ef6\u5931\u8d25"

    invoke-static {v6}, Lcom/pengyouwan/sdk/utils/n;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    :try_start_6
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 174
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_4
    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 180
    :catch_3
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 173
    :goto_3
    :try_start_7
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 174
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v6}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v6, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_5
    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 180
    :catch_5
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 173
    :goto_4
    :try_start_8
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 174
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    invoke-static {v7}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->h(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    iget-object v7, p0, Lcom/pengyouwan/sdk/activity/FastRegisterActivity$2;->a:Lcom/pengyouwan/sdk/activity/FastRegisterActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/pengyouwan/sdk/activity/FastRegisterActivity;->a(Lcom/pengyouwan/sdk/activity/FastRegisterActivity;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_6
    if-eqz v3, :cond_7

    .line 178
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 183
    :cond_7
    :goto_5
    throw v6

    .line 180
    :catch_6
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 170
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 168
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 166
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method
