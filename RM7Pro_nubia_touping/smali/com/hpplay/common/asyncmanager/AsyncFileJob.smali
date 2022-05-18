.class public Lcom/hpplay/common/asyncmanager/AsyncFileJob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private downloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

.field private fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

.field private fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

.field public id:I

.field private requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 14
    const-string v0, "AsyncFileJob"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncFileJob$1;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncFileJob$1;-><init>(Lcom/hpplay/common/asyncmanager/AsyncFileJob;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->downloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    .line 31
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    .line 32
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/hpplay/common/asyncmanager/AsyncFileJob;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/hpplay/common/asyncmanager/FileRequest;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;->fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$In;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

    .line 38
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->downloadListener:Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;

    invoke-virtual {v0, v1}, Lcom/hpplay/common/asyncmanager/FileRequest;->setDownloadListener(Lcom/hpplay/common/asyncmanager/FileRequest$DownloadListener;)V

    .line 39
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/FileRequest;->download()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 84
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileRequest:Lcom/hpplay/common/asyncmanager/FileRequest;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/FileRequest;->shutDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    const/4 v1, 0x6

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;->resultType:I

    .line 94
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    invoke-virtual {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;->onDownloadFinish(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;)V

    .line 96
    :cond_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    .line 48
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    iput v0, v1, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;->resultType:I

    .line 55
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    invoke-virtual {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;->onDownloadFinish(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;)V

    .line 57
    :cond_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x7

    goto :goto_1
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 67
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 68
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    const/4 v5, 0x5

    iput v5, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;->resultType:I

    .line 75
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    iput-wide v2, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;->currentSize:J

    .line 76
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->fileParameter:Lcom/hpplay/common/asyncmanager/AsyncFileParameter;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;

    iput-wide v0, v4, Lcom/hpplay/common/asyncmanager/AsyncFileParameter$Out;->totalSize:J

    .line 77
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;->onDownloadUpdate(JJ)V

    .line 79
    :cond_0
    return-void

    .line 69
    :catch_0
    move-exception v2

    move-object v4, v2

    move-wide v2, v0

    .line 70
    :goto_1
    iget-object v5, p0, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .line 69
    :catch_1
    move-exception v4

    goto :goto_1
.end method
