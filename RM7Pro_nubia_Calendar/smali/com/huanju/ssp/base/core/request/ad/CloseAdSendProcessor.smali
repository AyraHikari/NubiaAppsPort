.class public Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "CloseAdSendProcessor.java"


# instance fields
.field private mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

.field private mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

.field private mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;)V
    .locals 0
    .param p1, "adParameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;
    .param p2, "errorInfo"    # Lcom/huanju/ssp/base/core/report/error/ErrorInfo;
    .param p3, "listener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 44
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    .line 45
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    .line 46
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    .line 47
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/CloseAdTask;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdTask;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;)V

    return-object v0
.end method

.method public onAdError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;->onAdCloseSendError(Ljava/lang/String;I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 4
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "json \u4e3a\u7a7a\uff01"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x0

    .line 112
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    const-string v3, "request_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->request_id:Ljava/lang/String;

    .line 114
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "error_code":I
    if-eqz v0, :cond_2

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "business_error_code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->onAdError(Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mListener:Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;

    invoke-interface {v2}, Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;->onAdSendSuccess()V

    goto :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 4
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->onAdError(Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public onNetworkError()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->returnTime:J

    .line 52
    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    const/16 v1, -0x500

    invoke-virtual {p0, v0, v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->onAdError(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public process()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "\u65e0\u7f51\u7edc"

    const/16 v1, -0x500

    invoke-virtual {p0, v0, v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->onAdError(Ljava/lang/String;I)V

    .line 91
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->adSlotId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "\u5e7f\u544a id \u4e3a\u7a7a"

    const/16 v1, -0x501

    invoke-virtual {p0, v0, v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->onAdError(Ljava/lang/String;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    .line 86
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    .line 87
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->adSlotId:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->ad_slot_id:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mAdParameter:Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->campaignId:Ljava/lang/String;

    iput-object v1, v0, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->app_id:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e7f\u544a\u5f00\u59cb\u8bf7\u6c42:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->mErrorInfo:Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    iget-wide v2, v1, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;->requestTime:J

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/utils/LogUtils;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
