.class public Lcom/huanju/ssp/base/core/download/DownloadProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "DownloadProcessor.java"


# instance fields
.field private mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

.field private mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 0
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 33
    return-void
.end method

.method private onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 178
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-interface {v0, v1, p1, p2}, Lcom/huanju/ssp/base/core/download/listener/DownloadListener;->onError(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;ILjava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method private onFinish(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "downloadItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 151
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 152
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadListener;->onFinish(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 155
    :cond_0
    return-void
.end method

.method private onProcessing(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadListener;->onProcessing(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 161
    :cond_0
    return-void
.end method

.method private onStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "downItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadListener;->onStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 168
    :cond_0
    return-void
.end method

.method private onStop(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "downItem"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/download/listener/DownloadListener;->onStop(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/huanju/ssp/base/core/download/DownloadTask;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/download/DownloadTask;-><init>(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 20
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v8, 0x0

    .line 55
    .local v8, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    const-string v5, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .local v5, "eTag":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getHttpResponse()Ljava/net/HttpURLConnection;

    move-result-object v13

    const-string v16, "ETag"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 61
    :goto_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getLength()J

    move-result-wide v6

    .line 63
    .local v6, "fileSize":J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v5

    .line 66
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_5

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13, v6, v7}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentFileSize(J)V

    .line 69
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->seteTag(Ljava/lang/String;)V

    .line 81
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v13

    const/16 v16, 0xce

    move/from16 v0, v16

    if-eq v13, v0, :cond_2

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setLocalFileSize(J)V

    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13, v6, v7}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentFileSize(J)V

    .line 85
    :cond_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v11, "saveFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_3

    .line 87
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 88
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 89
    const-string v13, "\u5220\u9664\u6587\u4ef6\u6210\u529f"

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 95
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onStart(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentState(I)V

    .line 97
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v13, "rwd"

    invoke-direct {v2, v11, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v2, "accessFile":Ljava/io/RandomAccessFile;
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v8    # "inputStream":Ljava/io/BufferedInputStream;
    .local v9, "inputStream":Ljava/io/BufferedInputStream;
    const/16 v13, 0x800

    :try_start_3
    new-array v3, v13, [B

    .line 100
    .local v3, "buffer":[B
    const-wide/16 v14, 0x0

    .line 102
    .local v14, "updateUiTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {v9, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v13

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_7

    .line 104
    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v16

    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setLocalFileSize(J)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x3e8

    cmp-long v13, v16, v18

    if-lez v13, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onProcessing(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v14

    goto :goto_2

    .line 58
    .end local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v3    # "buffer":[B
    .end local v6    # "fileSize":J
    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "len":I
    .end local v11    # "saveFile":Ljava/io/File;
    .end local v14    # "updateUiTime":J
    .restart local v8    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 122
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "eTag":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 123
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const/4 v13, -0x8

    :try_start_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u4e0b\u8f7d\u5931\u8d25 : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->getThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onError(ILjava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v8, v13, v16

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 72
    .restart local v5    # "eTag":Ljava/lang/String;
    .restart local v6    # "fileSize":J
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->geteTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setCurrentFileSize(J)V

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setLocalFileSize(J)V

    .line 75
    const-string v13, "reDownLoad"

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->process()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v8, v13, v16

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_4

    .line 91
    .restart local v11    # "saveFile":Ljava/io/File;
    :cond_6
    :try_start_7
    const-string v13, "\u5220\u9664\u6587\u4ef6\u5931\u8d25"

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 126
    .end local v5    # "eTag":Ljava/lang/String;
    .end local v6    # "fileSize":J
    .end local v11    # "saveFile":Ljava/io/File;
    :catchall_0
    move-exception v13

    :goto_5
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 127
    throw v13

    .line 111
    .end local v8    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "accessFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "buffer":[B
    .restart local v5    # "eTag":Ljava/lang/String;
    .restart local v6    # "fileSize":J
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "len":I
    .restart local v11    # "saveFile":Ljava/io/File;
    .restart local v14    # "updateUiTime":J
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentState()I

    move-result v12

    .line 112
    .local v12, "state":I
    const/4 v13, 0x3

    if-eq v12, v13, :cond_8

    const/4 v13, 0x4

    if-eq v12, v13, :cond_8

    const/4 v13, 0x7

    if-ne v12, v13, :cond_9

    .line 114
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onStop(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 126
    :goto_6
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v9, v13, v16

    invoke-static {v13}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v8, v9

    .line 127
    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 115
    .end local v8    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v13}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v18

    cmp-long v13, v16, v18

    if-nez v13, :cond_a

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onFinish(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V

    goto :goto_6

    .line 122
    .end local v3    # "buffer":[B
    .end local v10    # "len":I
    .end local v12    # "state":I
    .end local v14    # "updateUiTime":J
    :catch_2
    move-exception v4

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 120
    .end local v8    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "len":I
    .restart local v12    # "state":I
    .restart local v14    # "updateUiTime":J
    :cond_a
    const/4 v13, -0x8

    const-string v16, "File Size Cannot Match !"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onError(ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    .line 126
    .end local v3    # "buffer":[B
    .end local v10    # "len":I
    .end local v12    # "state":I
    .end local v14    # "updateUiTime":J
    :catchall_1
    move-exception v13

    move-object v8, v9

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 132
    const-string v0, "----- onErrorReceived -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 133
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

    .line 134
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

    .line 136
    const/4 v0, -0x8

    invoke-direct {p0, v0, p1}, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->onError(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 141
    const-string v0, "----- onNetworkError -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setListener(Lcom/huanju/ssp/base/core/download/listener/DownloadListener;)V
    .locals 0
    .param p1, "downloadListener"    # Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownloadProcessor;->mListener:Lcom/huanju/ssp/base/core/download/listener/DownloadListener;

    .line 37
    return-void
.end method
