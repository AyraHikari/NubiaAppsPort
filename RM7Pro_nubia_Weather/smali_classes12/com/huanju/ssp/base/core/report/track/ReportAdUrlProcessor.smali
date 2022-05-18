.class public Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "ReportAdUrlProcessor.java"


# instance fields
.field iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iHttpListener"    # Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->url:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    .line 19
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlTask;

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->url:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;)V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 2
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onNetworkError()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 39
    return-void
.end method
