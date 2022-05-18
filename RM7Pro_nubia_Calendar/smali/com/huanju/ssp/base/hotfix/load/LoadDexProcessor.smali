.class public Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "LoadDexProcessor.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private getTempDexFile()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "tempDexPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ssp_dex.jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "tempDexFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "tempDexFileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 196
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 197
    const-string v5, "\u4e3a\u81ea\u5347\u7ea7dex\u5305\u521b\u5efa\u76ee\u5f55\u65f6\u5931\u8d25\uff0c\u4e2d\u65ad\u4efb\u52a1"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    move-object v0, v4

    .line 211
    :cond_1
    :goto_0
    return-object v0

    .line 202
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "tempDexFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    const-string v5, "\u4e3adex\u5305\u521b\u5efa\u6587\u4ef6\u5bf9\u8c61\u65f6\u5931\u8d25\uff0c\u4e2d\u65ad\u4efb\u52a1"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    move-object v0, v4

    .line 207
    goto :goto_0
.end method

.method private replaceDexFromTemp()V
    .locals 14

    .prologue
    .line 127
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ssp_dex.jar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v9, "tempFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 129
    const-string v10, "dex\u4e34\u65f6\u6587\u4ef6\u4e0d\u5b58\u5728,\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    const-string v12, "dex"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/huanju/ssp/base/hotfix/DexManager;->DEX_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "dexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_1

    .line 137
    const-string v10, "\u65e7\u7684dex\u6587\u4ef6\u65e0\u6cd5\u88ab\u5220\u9664,\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v5, 0x0

    .line 142
    .local v5, "fos":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 144
    .local v3, "fis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .end local v3    # "fis":Ljava/io/BufferedInputStream;
    .local v4, "fis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .end local v5    # "fos":Ljava/io/BufferedOutputStream;
    .local v6, "fos":Ljava/io/BufferedOutputStream;
    const/16 v10, 0x400

    :try_start_2
    new-array v0, v10, [B

    .line 152
    .local v0, "buffer":[B
    const/4 v8, 0x0

    .line 153
    .local v8, "pos":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 154
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 175
    .end local v0    # "buffer":[B
    .end local v8    # "pos":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 176
    .end local v6    # "fos":Ljava/io/BufferedOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/BufferedOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/BufferedInputStream;
    .end local v5    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "pos":I
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    iget-object v10, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huanju/ssp/base/hotfix/DexManager;->isDexCurrent()Z

    move-result v10

    if-nez v10, :cond_3

    .line 162
    const-string v10, "dex\u6587\u4ef6\u5904\u4e8e\u5f02\u5e38\u72b6\u6001,\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 167
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "dex_vr"

    sget-object v12, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "newVersion":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f53\u524ddex\u5347\u7ea7\u540e\u7248\u672c\u53f7 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "sdk_version"

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "dex_need_update"

    const/4 v12, 0x0

    .line 170
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-object v10, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/huanju/ssp/base/hotfix/DexManager;->loadDexLoader()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 178
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 179
    .end local v6    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 178
    .end local v0    # "buffer":[B
    .end local v7    # "newVersion":Ljava/lang/String;
    .end local v8    # "pos":I
    :catchall_0
    move-exception v10

    :goto_3
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 179
    throw v10

    .line 178
    .end local v3    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/BufferedInputStream;
    .end local v5    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 175
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/BufferedInputStream;
    .restart local v4    # "fis":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/huanju/ssp/base/hotfix/load/LoadDexTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/hotfix/load/LoadDexTask;-><init>()V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 11
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 43
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->getTempDexFile()Ljava/io/File;

    move-result-object v6

    .line 45
    .local v6, "tempDexFile":Ljava/io/File;
    if-nez v6, :cond_0

    .line 72
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    .local v2, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 52
    .local v4, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .local v3, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 56
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .local v1, "i":I
    if-lez v1, :cond_1

    .line 57
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 60
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_2
    new-array v8, v8, [Ljava/io/Closeable;

    aput-object v2, v8, v9

    aput-object v4, v8, v10

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 61
    throw v7

    .line 60
    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_1
    new-array v7, v8, [Ljava/io/Closeable;

    aput-object v3, v7, v9

    aput-object v5, v7, v10

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 64
    iget-object v7, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkFile(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 65
    const-string v7, "\u4e0b\u8f7d\u7684dex\u6587\u4ef6\u548c\u670d\u52a1\u5668\u8fd4\u56de\u7684MD5\u4e0d\u5339\u914d\uff0c\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->replaceDexFromTemp()V

    goto :goto_0

    .line 60
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    goto :goto_2

    .end local v2    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 87
    const-string v0, "----- onErrorReceived -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- eroCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- eroMsg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "----- onNetworkError -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public process()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "dex_need_update"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "\u81ea\u5347\u7ea7\u5f00\u5173 \u5173\u95ed"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->isDexCurrent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "dex\u6587\u4ef6\u5904\u4e8e\u6b63\u5e38\u72b6\u6001"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/hotfix/DexManager;->isTempFileCurrent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/load/LoadDexProcessor;->replaceDexFromTemp()V

    goto :goto_0

    .line 120
    :cond_2
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    goto :goto_0
.end method
