.class Lcom/huanju/ssp/base/core/download/DownloadTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "DownloadTask.java"


# instance fields
.field private downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/download/bean/DownloadItem;)V
    .locals 1
    .param p1, "item"    # Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .prologue
    .line 17
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 18
    iput-object p1, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    .line 19
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getDownLoadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    const-wide/16 v4, 0x0

    .line 44
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getCurrentFileSize()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setLocalFileSize(J)V

    .line 52
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->getLocalFileSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 49
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/huanju/ssp/base/core/download/DownloadTask;->downloadItem:Lcom/huanju/ssp/base/core/download/bean/DownloadItem;

    invoke-virtual {v1, v4, v5}, Lcom/huanju/ssp/base/core/download/bean/DownloadItem;->setLocalFileSize(J)V

    goto :goto_0
.end method
