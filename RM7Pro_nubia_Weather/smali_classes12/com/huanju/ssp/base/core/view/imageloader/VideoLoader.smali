.class public Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;
.super Ljava/lang/Object;
.source "VideoLoader.java"


# static fields
.field private static final THREAD_POOL_NAME:Ljava/lang/String; = "VIDEO_THREAD_POOL"

.field private static mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "VIDEO_THREAD_POOL"

    invoke-static {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgmd5"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v4, ""

    .line 85
    .local v4, "localPath":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrl url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getDownloadDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrl path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",imgmd5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/FileUtils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "fileMd5":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrl file imgmd5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local file md5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVideoUrl file.getAbsolutePath(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileMd5":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 98
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileMd5":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete file.getAbsolutePath(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 103
    .end local v3    # "fileMd5":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->loadFromNet(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .local v0, "data":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v4

    .line 109
    goto :goto_0
.end method

.method public static getmThreadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->mThreadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    return-object v0
.end method

.method private static loadFromNet(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgmd5"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 119
    .local v6, "curTime":J
    const-string v18, "start connect "

    invoke-static/range {v18 .. v18}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 120
    const/4 v12, 0x0

    .line 122
    .local v12, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :try_start_0
    new-instance v13, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;

    new-instance v18, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader$1;

    sget-object v19, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader$1;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader$1;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .local v13, "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    move-object v12, v13

    .line 152
    .end local v13    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .restart local v12    # "httpResult":Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end connect cast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 154
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .local v17, "stream":Ljava/io/InputStream;
    if-eqz v17, :cond_3

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 156
    const-string v18, "start loadImageDate "

    invoke-static/range {v18 .. v18}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 157
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getDownloadDir()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v14, "localFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 165
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    const/16 v18, 0x400

    :try_start_2
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 169
    .local v4, "buf":[B
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 170
    .local v15, "numread":I
    if-gtz v15, :cond_1

    .line 176
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 177
    invoke-static {v14}, Lcom/huanju/ssp/base/utils/FileUtils;->getFileMD5String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "fileMd5":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "end loadImageDate cast "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",file imgmd5:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", local file md5:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 179
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 180
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v18

    .line 190
    if-eqz v12, :cond_0

    .line 191
    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 197
    .end local v4    # "buf":[B
    .end local v9    # "fileMd5":Ljava/lang/String;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "localFile":Ljava/io/File;
    .end local v15    # "numread":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_2
    return-object v18

    .line 149
    :catch_0
    move-exception v8

    .line 150
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "buf":[B
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "localFile":Ljava/io/File;
    .restart local v15    # "numread":I
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/InputStream;
    :cond_1
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-virtual {v11, v4, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 183
    .end local v4    # "buf":[B
    .end local v15    # "numread":I
    :catch_1
    move-exception v8

    move-object v10, v11

    .line 184
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v5, "delFile":Ljava/io/File;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 186
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 188
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    if-eqz v12, :cond_3

    .line 191
    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 197
    .end local v5    # "delFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "localFile":Ljava/io/File;
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/InputStream;
    :cond_3
    :goto_4
    const-string v18, ""

    goto :goto_2

    .line 190
    .restart local v4    # "buf":[B
    .restart local v9    # "fileMd5":Ljava/lang/String;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "localFile":Ljava/io/File;
    .restart local v15    # "numread":I
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "stream":Ljava/io/InputStream;
    :cond_4
    if-eqz v12, :cond_3

    .line 191
    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    goto :goto_4

    .line 190
    .end local v4    # "buf":[B
    .end local v9    # "fileMd5":Ljava/lang/String;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "numread":I
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v12, :cond_5

    .line 191
    invoke-virtual {v12}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->close()V

    .line 193
    :cond_5
    throw v18

    .line 190
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 183
    :catch_2
    move-exception v8

    goto :goto_3
.end method
