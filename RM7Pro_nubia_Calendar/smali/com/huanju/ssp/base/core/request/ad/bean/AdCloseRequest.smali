.class public Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseRequest;
.super Ljava/lang/Object;
.source "AdCloseRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParams(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseRequest;->serializeJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static serializeJson(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;)Ljava/lang/String;
    .locals 6
    .param p0, "parameter"    # Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    .prologue
    .line 23
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 25
    .local v1, "js":Lorg/json/JSONStringer;
    :try_start_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "api_version"

    .line 26
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "1.3.2"

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "imei"

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "imei_md5"

    .line 28
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "campaign_id"

    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->campaignId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "adslot_id"

    .line 30
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->adSlotId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "reason"

    .line 31
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->reason:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "message"

    .line 32
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
