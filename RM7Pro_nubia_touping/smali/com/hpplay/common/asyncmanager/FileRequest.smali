.class public Lcom/hpplay/common/asyncmanager/FileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;
    }
.end annotation


# static fields
.field public static final TASKDONWLOADED:I = 0x1

.field public static final TASKDONWLOADING:I = 0x0

.field public static final TASKDOWNLOADCANCEL:I = 0x3

.field public static final TASKDOWNLOADERROR:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cacheName:Ljava/lang/String;

.field private isShutDown:Z

.field private mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

.field private mDownloadPercent:I

.field private mDownloadedSize:J

.field private mLocalPath:Ljava/lang/String;

.field private mTaskCode:I

.field private mTotalSize:J

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "FileRequest"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    .line 26
    iput v2, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    .line 28
    iput-boolean v2, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->isShutDown:Z

    .line 30
    const-string v0, ".cache"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->cacheName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mURL:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private renameToNewFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 178
    return v0
.end method


# virtual methods
.method protected download()Z
    .locals 17

    .prologue
    .line 41
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 44
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    .line 48
    :goto_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    :cond_0
    const-string v2, "FileRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mURL, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mURL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " downloadedSize, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    const/4 v3, 0x0

    .line 57
    :try_start_0
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mURL:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    const-string v3, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v2, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v8, v3

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    .line 61
    const-string v3, "FileRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalSize, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/common/asyncmanager/FileRequest;->makeDownLoadError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 64
    const/4 v3, 0x0

    .line 81
    if-eqz v2, :cond_1

    .line 82
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move v2, v3

    .line 172
    :cond_2
    :goto_2
    return v2

    .line 46
    :cond_3
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    .line 67
    const/4 v3, 0x1

    .line 81
    if-eqz v2, :cond_5

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_3
    move v2, v3

    .line 67
    goto :goto_2

    .line 84
    :catch_1
    move-exception v2

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 68
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_8

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_8

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/common/asyncmanager/FileRequest;->makeDownLoadError()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 71
    const/4 v3, 0x0

    .line 81
    if-eqz v2, :cond_7

    .line 82
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_4
    move v2, v3

    .line 71
    goto :goto_2

    .line 84
    :catch_2
    move-exception v2

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_4

    .line 74
    :cond_8
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 81
    if-eqz v2, :cond_9

    .line 82
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 89
    :cond_9
    :goto_5
    const/4 v5, 0x0

    .line 90
    const/4 v4, 0x0

    .line 93
    :try_start_9
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 94
    :try_start_a
    const-string v2, "Accept"

    const-string v3, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "Referer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mURL:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/16 v2, 0x7530

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v11

    .line 109
    :try_start_b
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".cache"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v10, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 111
    :try_start_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    const/4 v2, 0x0

    .line 115
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    long-to-int v3, v4

    div-int/lit16 v3, v3, 0x400

    div-int/lit8 v13, v3, 0x64

    .line 116
    const/16 v3, 0x400

    new-array v14, v3, [B

    .line 117
    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v11, v14, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->isShutDown:Z

    if-nez v3, :cond_f

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v10, v14, v3, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    if-ne v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    .line 121
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadPercent:I

    .line 123
    const/4 v12, 0x0

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    if-eqz v2, :cond_a

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;->onDownLoad(IJJI)V

    :cond_a
    move v2, v12

    .line 130
    :cond_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    int-to-long v6, v15

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    .line 151
    :catch_3
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    .line 152
    :goto_7
    :try_start_d
    const-string v5, "FileRequest"

    invoke-static {v5, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 153
    const-string v5, "FileRequest"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/common/asyncmanager/FileRequest;->makeDownLoadError()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 155
    const/4 v2, 0x0

    .line 158
    if-eqz v4, :cond_c

    .line 159
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_c
    if-eqz v9, :cond_d

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_d
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_2

    .line 167
    :catch_4
    move-exception v3

    .line 168
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_2

    .line 84
    :catch_5
    move-exception v3

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_5

    .line 75
    :catch_6
    move-exception v2

    .line 76
    :goto_8
    :try_start_f
    const-string v4, "FileRequest"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/hpplay/common/asyncmanager/FileRequest;->makeDownLoadError()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 78
    const/4 v2, 0x0

    .line 81
    if-eqz v3, :cond_2

    .line 82
    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_2

    .line 84
    :catch_7
    move-exception v3

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_2

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    :goto_9
    if-eqz v3, :cond_e

    .line 82
    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 86
    :cond_e
    :goto_a
    throw v2

    .line 84
    :catch_8
    move-exception v3

    .line 85
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_a

    .line 133
    :cond_f
    const/4 v12, 0x1

    .line 134
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->isShutDown:Z

    if-eqz v2, :cond_13

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    if-eqz v2, :cond_10

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const/4 v8, 0x3

    invoke-interface/range {v2 .. v8}, Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;->onDownLoad(IJJI)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 139
    :cond_10
    const/4 v2, 0x0

    .line 158
    :goto_b
    if-eqz v11, :cond_11

    .line 159
    :try_start_13
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_11
    if-eqz v9, :cond_12

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_12
    if-eqz v10, :cond_2

    .line 165
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_2

    .line 167
    :catch_9
    move-exception v3

    .line 168
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_2

    .line 141
    :cond_13
    :try_start_14
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_14

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mLocalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/hpplay/common/asyncmanager/FileRequest;->renameToNewFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    if-eqz v2, :cond_15

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;->onDownLoad(IJJI)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :cond_15
    move v2, v12

    goto :goto_b

    .line 157
    :catchall_1
    move-exception v3

    move-object v10, v4

    move-object v11, v5

    move-object v9, v2

    move-object v2, v3

    .line 158
    :goto_c
    if-eqz v11, :cond_16

    .line 159
    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    :cond_16
    if-eqz v9, :cond_17

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_17
    if-eqz v10, :cond_18

    .line 165
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 169
    :cond_18
    :goto_d
    throw v2

    .line 167
    :catch_a
    move-exception v3

    .line 168
    const-string v4, "FileRequest"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_d

    .line 157
    :catchall_2
    move-exception v2

    move-object v10, v4

    move-object v11, v5

    goto :goto_c

    :catchall_3
    move-exception v2

    move-object v10, v4

    goto :goto_c

    :catchall_4
    move-exception v2

    goto :goto_c

    :catchall_5
    move-exception v2

    move-object v10, v3

    move-object v11, v4

    goto :goto_c

    .line 151
    :catch_b
    move-exception v3

    move-object v9, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :catch_c
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :catch_d
    move-exception v2

    move-object v3, v4

    move-object v4, v11

    goto/16 :goto_7

    .line 80
    :catchall_6
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_9

    .line 75
    :catch_e
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_8
.end method

.method public makeDownLoadError()V
    .locals 7

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    iget v1, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    iget-wide v2, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadedSize:J

    iget-wide v4, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTotalSize:J

    const/4 v6, 0x2

    invoke-interface/range {v0 .. v6}, Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;->onDownLoad(IJJI)V

    .line 185
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mDownloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    .line 190
    return-void
.end method

.method public setTaskCode(I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->mTaskCode:I

    .line 194
    return-void
.end method

.method public shutDown()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/common/asyncmanager/FileRequest;->isShutDown:Z

    .line 202
    return-void
.end method
