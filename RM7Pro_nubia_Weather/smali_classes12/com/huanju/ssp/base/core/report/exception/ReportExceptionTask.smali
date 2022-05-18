.class Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;
.super Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.source "ReportExceptionTask.java"


# instance fields
.field private mExceptionData:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-direct {p0, v0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;-><init>(Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;)V

    .line 25
    return-void
.end method

.method private getExceptionData()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getInstance()Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionManager;->getExceptionCaches()Ljava/util/Map;

    move-result-object v3

    .line 77
    .local v3, "exceptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 92
    .end local v3    # "exceptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 81
    .restart local v3    # "exceptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 82
    .local v4, "jsonStringer":Lorg/json/JSONStringer;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v5

    const-string v7, "exception"

    invoke-virtual {v5, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 83
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 84
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "exceptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "jsonStringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 92
    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "exceptionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "jsonStringer":Lorg/json/JSONStringer;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 88
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected getEntity()[B
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;->mExceptionData:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;->ADD_NEW:Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/HttpUrlSetting;->getReportExceptionUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SSP_SDK"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/huanju/ssp/base/core/common/ParameterInfoProducer;->appendCommonParameter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 54
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;->getExceptionData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;->mExceptionData:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/huanju/ssp/base/core/report/exception/ReportExceptionTask;->mExceptionData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "\u6ca1\u6709\u5f02\u5e38\u65e5\u5fd7\u4e0a\u62a5"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;->run()V

    goto :goto_0
.end method
