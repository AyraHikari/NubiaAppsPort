.class public Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "RequestAdConfigProcessor.java"


# instance fields
.field iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

.field mPkgName:Ljava/lang/String;

.field mSlotId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iHttpListener"    # Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;
    .param p2, "slotId"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    .line 18
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->mSlotId:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->mPkgName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->mSlotId:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->mPkgName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
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
    .line 29
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public onNetworkError()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigProcessor;->iHttpListener:Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;->onReceive(Ljava/lang/String;)V

    .line 40
    return-void
.end method
