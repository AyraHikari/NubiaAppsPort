.class Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "ReportTrackerProcessor.java"


# instance fields
.field private isReportHistory:Z

.field private isSuccess:Z

.field private mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

.field private mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Z)V
    .locals 1
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;
    .param p3, "isHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 37
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    .line 38
    iput-boolean p3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 40
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-direct {v0, p1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;ZZ)V
    .locals 1
    .param p2, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;
    .param p3, "isHistory"    # Z
    .param p4, "isAdhub"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 30
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    .line 31
    iput-boolean p3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 33
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-direct {v0, p1, p4}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;-><init>(Ljava/util/Set;Z)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    .line 34
    return-void
.end method

.method constructor <init>(ZLjava/util/Set;Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;Z)V
    .locals 1
    .param p1, "isAddtrack"    # Z
    .param p3, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;
    .param p4, "isHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;",
            ">;",
            "Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "trackUrls":Ljava/util/Set;, "Ljava/util/Set<Lcom/huanju/ssp/base/core/request/host/bean/DnsBean;>;"
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 43
    iput-object p3, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    .line 44
    iput-boolean p4, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    .line 46
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-direct {v0, p1, p2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;-><init>(ZLjava/util/Set;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    .line 47
    return-void
.end method

.method private onTrackersReturn()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/listeners/TrackerTaskListener;->onTrackersReturn()V

    goto :goto_0
.end method

.method private reportError(ILjava/lang/String;)V
    .locals 2
    .param p1, "error_code"    # I
    .param p2, "error_msg"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v0

    new-instance v1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-direct {v1}, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;-><init>()V

    invoke-virtual {v0, v1, p1, p2}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->reportError(Lcom/huanju/ssp/base/core/report/error/ErrorInfo;ILjava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 4
    .param p1, "httpResult"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u76d1\u64ad\u53d1\u9001\u7ed3\u679c ,   httpCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , URL\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 82
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    and-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 83
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->deletebyId(J)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  httpCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    goto :goto_0

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    if-eqz v0, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->onTrackersReturn()V

    .line 101
    :cond_3
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrackerCache()V

    goto :goto_1
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 3
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 112
    const/16 v0, -0xb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76d1\u64ad\u53d1\u9001\u5931\u8d25, error_msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \nURL\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->reportError(ILjava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 117
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isReportHistory:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->isLastRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->getInstance()Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerManager;->reportTrackerCache()V

    .line 120
    :cond_0
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->isSuccess:Z

    .line 130
    return-void
.end method

.method public setEntity([B)V
    .locals 1
    .param p1, "entity"    # [B

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setEntity([B)V

    .line 60
    :cond_0
    return-void
.end method

.method public setIsGzip(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setIsGzip(Z)V

    .line 64
    return-void
.end method

.method public setReqType(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V
    .locals 1
    .param p1, "reqType"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportTrackerProcessor;->mTask:Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;

    invoke-virtual {v0, p1}, Lcom/huanju/ssp/base/core/report/track/ReportTrackerTask;->setReqType(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 53
    :cond_0
    return-void
.end method
