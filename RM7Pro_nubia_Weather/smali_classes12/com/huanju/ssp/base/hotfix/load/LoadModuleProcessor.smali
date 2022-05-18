.class public Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "LoadModuleProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 31
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

    .line 171
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 172
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

    .line 173
    .local v2, "tempDexFilePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempDexFilePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 174
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "tempDexFileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    const-string v5, "\u4e3a\u81ea\u5347\u7ea7dex\u5305\u521b\u5efa\u76ee\u5f55\u65f6\u5931\u8d25\uff0c\u4e2d\u65ad\u4efb\u52a1"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    move-object v0, v4

    .line 192
    :cond_1
    :goto_0
    return-object v0

    .line 183
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "tempDexFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    const-string v5, "\u4e3adex\u5305\u521b\u5efa\u6587\u4ef6\u5bf9\u8c61\u65f6\u5931\u8d25\uff0c\u4e2d\u65ad\u4efb\u52a1"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    move-object v0, v4

    .line 188
    goto :goto_0
.end method

.method private replaceDexFromTemp()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/huanju/ssp/base/hotfix/load/LoadModuleTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/hotfix/load/LoadModuleTask;-><init>()V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 12
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 35
    const-string v8, "LoadModuleProcessor onDataReceived:"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/huanju/ssp/base/hotfix/load/LoadModuleProcessor;->getTempDexFile()Ljava/io/File;

    move-result-object v7

    .line 38
    .local v7, "tempDexFile":Ljava/io/File;
    if-nez v7, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    .local v3, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 45
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .local v4, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v6, "outputStream":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v1, v8, [B

    .line 49
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "i":I
    if-lez v2, :cond_2

    .line 50
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 53
    .end local v1    # "buffer":[B
    .end local v2    # "i":I
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_2
    new-array v9, v9, [Ljava/io/Closeable;

    aput-object v3, v9, v10

    aput-object v5, v9, v11

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 54
    throw v8

    .line 53
    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_2
    new-array v8, v9, [Ljava/io/Closeable;

    aput-object v4, v8, v10

    aput-object v6, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 57
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/huanju/ssp/base/hotfix/DexManager;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 58
    const-string v8, "\u4e0b\u8f7d\u7684dex\u6587\u4ef6\u548c\u670d\u52a1\u5668\u8fd4\u56de\u7684MD5\u4e0d\u5339\u914d\uff0c\u4efb\u52a1\u4e2d\u65ad"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "module update tempDexFile.getAbsolutePath():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huanju/ssp/base/hotfix/DexManager;->getmAdUpgradeListener()Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;

    move-result-object v0

    .line 63
    .local v0, "adUpgradeListener":Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;
    if-eqz v0, :cond_0

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adUpgradeListener:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/huanju/ssp/base/hotfix/DexManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/DexManager;

    move-result-object v10

    iget v10, v10, Lcom/huanju/ssp/base/hotfix/DexManager;->mCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;->upgradeAvailable(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    .end local v0    # "adUpgradeListener":Lcom/huanju/ssp/sdk/inf/AdUpgradeListener;
    .end local v1    # "buffer":[B
    .end local v2    # "i":I
    .end local v4    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    goto/16 :goto_2

    .end local v3    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 85
    const-string v0, "----- onErrorReceived -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 86
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

    .line 87
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

    .line 88
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "----- onNetworkError -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public process()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    .line 102
    return-void
.end method
