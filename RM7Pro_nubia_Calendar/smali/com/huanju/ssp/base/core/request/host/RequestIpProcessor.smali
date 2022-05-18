.class Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "RequestIpProcessor.java"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 25
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/huanju/ssp/base/core/request/host/RequestIpTask;

    invoke-direct {v0}, Lcom/huanju/ssp/base/core/request/host/RequestIpTask;-><init>()V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 10
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "mapping"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "hostMapping":Ljava/lang/String;
    const-string v5, "interval"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 42
    .local v2, "interval":J
    iget-object v5, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "host_key"

    .line 43
    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "host_interval"

    .line 44
    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "host_last_request"

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 46
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    invoke-static {}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->getInstance()Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->setHostData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "hostMapping":Ljava/lang/String;
    .end local v2    # "interval":J
    .end local v4    # "object":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 2
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 59
    const-string v0, "----- onErrorReceived -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 60
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

    .line 61
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

    .line 62
    return-void
.end method

.method public onNetworkError()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "----- onNetworkError -----"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public process()V
    .locals 6

    .prologue
    .line 77
    const-string v0, "host_last_request"

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "host_interval"

    const-wide/32 v4, 0x5265c00

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/huanju/ssp/base/utils/Utils;->checkIntervalTime(Ljava/lang/String;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->getInstance()Lcom/huanju/ssp/base/core/request/host/RequestIpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/host/RequestIpProcessor;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "host_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/request/host/RequestIpManager;->setHostData(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;->process()V

    goto :goto_0
.end method
