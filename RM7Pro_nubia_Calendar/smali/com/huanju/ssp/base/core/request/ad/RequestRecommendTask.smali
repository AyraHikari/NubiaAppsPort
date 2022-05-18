.class public Lcom/huanju/ssp/base/core/request/ad/RequestRecommendTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "RequestRecommendTask.java"


# instance fields
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
.method public constructor <init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;Ljava/util/List;)V
    .locals 0
    .param p1, "type"    # Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;",
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
    .line 26
    .local p2, "packageInfos":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 27
    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendTask;->mPackageInfos:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method protected getEntity()[B
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->REPLACE_OLD:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
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
    .line 37
    const-string v1, ""

    .line 39
    .local v1, "jsonData":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestRecommendTask;->mPackageInfos:Ljava/util/List;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/request/ad/bean/AdRequest;->getParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "params":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestAdTask params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAESRecommend(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/HttpUrlSetting;->getRecommendUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "utf-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .end local v2    # "params":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const-string v3, ""

    goto :goto_0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 53
    return-void
.end method
