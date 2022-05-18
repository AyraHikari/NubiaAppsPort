.class public Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "ReportErrorProcessor.java"


# instance fields
.field private mJsonData:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mJsonData:Ljava/lang/String;

    .line 29
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/HttpUrlSetting;->getReportErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mJsonData:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/error/ReportErrorTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 3
    .param p1, "httpResult"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 52
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mJsonData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->addEroHistory(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->saveEroSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 73
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mJsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->addEroHistory(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onNetworkError()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->getInstance()Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/error/ReportErrorProcessor;->mJsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->addEroHistory(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public process()V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/huanju/ssp/base/core/report/error/ReportErrorManager;->sErrorSwitch:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    goto :goto_0
.end method
