.class public Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;
.source "RequestRecommendProcessor.java"


# instance fields
.field iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

.field private mPackageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/sdk/inf/IRecommendListener;Ljava/util/List;)V
    .locals 0
    .param p1, "iRecommendListener"    # Lcom/huanju/ssp/sdk/inf/IRecommendListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/IRecommendListener;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetProcessor;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    .line 30
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->mPackageInfos:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method protected createNetTask()Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendTask;

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->mPackageInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/util/List;)V

    return-object v0
.end method

.method public onAdStatusChange(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .locals 11
    .param p1, "result"    # Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 40
    if-nez p1, :cond_2

    .line 41
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    if-eqz v8, :cond_0

    .line 42
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    const-string v9, "result errorr"

    invoke-interface {v8, v9, v10}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->onErrorr(Ljava/lang/String;I)V

    .line 44
    :cond_0
    const-string v8, "RequestRecommendProcessor result null:"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getString()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "strResult":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RequestRecommendProcessor onDataReceived strResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 49
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, "resultJson":Lorg/json/JSONObject;
    if-nez v6, :cond_4

    .line 51
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    if-eqz v8, :cond_3

    .line 52
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    const-string v9, "result errorr"

    invoke-interface {v8, v9, v10}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->onErrorr(Ljava/lang/String;I)V

    .line 54
    :cond_3
    const-string v8, "RequestRecommendProcessor result errorr:"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "commonRepositories":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonRepository;>;"
    const-string v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 59
    const-string v8, "data"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 60
    .local v2, "data":Lorg/json/JSONArray;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_15

    .line 61
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_15

    .line 62
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    .local v4, "object":Lorg/json/JSONObject;
    new-instance v5, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;

    invoke-direct {v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;-><init>()V

    .line 64
    .local v5, "repositoryInfo":Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;
    invoke-virtual {v5, v7}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setJson(Ljava/lang/String;)V

    .line 65
    if-eqz v4, :cond_14

    .line 66
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 67
    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setId(I)V

    .line 69
    :cond_5
    const-string v8, "app_source"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 70
    const-string v8, "app_source"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setApp_source(Ljava/lang/String;)V

    .line 72
    :cond_6
    const-string v8, "package_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 73
    const-string v8, "package_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setPackage_name(Ljava/lang/String;)V

    .line 75
    :cond_7
    const-string v8, "app_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 76
    const-string v8, "app_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setApp_name(Ljava/lang/String;)V

    .line 78
    :cond_8
    const-string v8, "apk_url"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 79
    const-string v8, "apk_url"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setApk_url(Ljava/lang/String;)V

    .line 81
    :cond_9
    const-string v8, "version_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 82
    const-string v8, "version_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setVersion_name(Ljava/lang/String;)V

    .line 84
    :cond_a
    const-string v8, "version_code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 85
    const-string v8, "version_code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setVersion_code(I)V

    .line 87
    :cond_b
    const-string v8, "apk_md5"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 88
    const-string v8, "apk_md5"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setApk_md5(Ljava/lang/String;)V

    .line 90
    :cond_c
    const-string v8, "apk_size"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 91
    const-string v8, "apk_size"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setApk_size(J)V

    .line 93
    :cond_d
    const-string v8, "developer"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 94
    const-string v8, "developer"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setDeveloper(Ljava/lang/String;)V

    .line 96
    :cond_e
    const-string v8, "extend"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 97
    const-string v8, "extend"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setExtend(Ljava/lang/String;)V

    .line 99
    :cond_f
    const-string v8, "imptrackers"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 100
    const-string v8, "imptrackers"

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setImptrackers([Ljava/lang/String;)V

    .line 102
    :cond_10
    const-string v8, "clktrackers"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 103
    const-string v8, "clktrackers"

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setClktrackers([Ljava/lang/String;)V

    .line 105
    :cond_11
    const-string v8, "dwnlst"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 106
    const-string v8, "dwnlst"

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setDwnlst([Ljava/lang/String;)V

    .line 108
    :cond_12
    const-string v8, "dwnltrackers"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 109
    const-string v8, "dwnltrackers"

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setDwnltrackers([Ljava/lang/String;)V

    .line 111
    :cond_13
    const-string v8, "intltrackers"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 112
    const-string v8, "intltrackers"

    invoke-static {v4, v8}, Lcom/huanju/ssp/sdk/AdManager;->add2List(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->setIntltrackers([Ljava/lang/String;)V

    .line 115
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RequestRecommendProcessor result repositoryInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;

    invoke-direct {v0, v5}, Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;-><init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;)V

    .line 117
    .local v0, "appRepository":Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 122
    .end local v0    # "appRepository":Lcom/huanju/ssp/base/core/sdk/CommonAd/AppRepository;
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "repositoryInfo":Lcom/huanju/ssp/base/core/sdk/CommonAd/RepositoryInfo;
    :cond_15
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    if-eqz v8, :cond_1

    .line 123
    iget-object v8, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    invoke-interface {v8, v1}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->recommendResult(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onErrorReceived(Ljava/lang/String;I)V
    .locals 1
    .param p1, "eroMsg"    # Ljava/lang/String;
    .param p2, "eroCode"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->onErrorr(Ljava/lang/String;I)V

    .line 132
    :cond_0
    return-void
.end method

.method public onNetworkError()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendProcessor;->iRecommendListener:Lcom/huanju/ssp/sdk/inf/IRecommendListener;

    const-string v1, "network errorr"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/sdk/inf/IRecommendListener;->onErrorr(Ljava/lang/String;I)V

    .line 139
    :cond_0
    return-void
.end method
