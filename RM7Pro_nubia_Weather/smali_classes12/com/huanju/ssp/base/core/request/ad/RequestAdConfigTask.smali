.class public Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "RequestAdConfigTask.java"


# instance fields
.field private mAdSlotId:Ljava/lang/String;

.field mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .param p2, "adSlotId"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mAdSlotId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mAdSlotId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mPkgName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v4, "reqjson":Lorg/json/JSONObject;
    const-string v5, "api_version"

    const-string v6, "1.3.2"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mPkgName:Ljava/lang/String;

    .line 42
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mPkgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 44
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 47
    :cond_0
    const-string v5, "bundle"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v5, "adslot_id"

    iget-object v6, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdConfigTask;->mAdSlotId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, "curTime":J
    const-string v5, "timestamp"

    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string v5, "model"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v5, "device_type"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceType()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v5, "os_version"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOSVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v5, "vendor"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v5, "android_id"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v5, "vaid"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getVaid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v5, "oaid"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOaid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v5, "udid"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getUdid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v5, "imei"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdConfig reqjson:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "jsonData":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/HttpUrlSetting;->getAdConfigUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "945471662e93b6a62222a794a080a378"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "utf-8"

    invoke-static {v2, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 66
    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    return-object v5
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 72
    return-void
.end method
