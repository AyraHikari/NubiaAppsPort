.class public Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;
.super Ljava/lang/Object;
.source "ClientHttpRequestor.java"


# instance fields
.field private final authId:Ljava/lang/String;

.field private final authIv:Ljava/lang/String;

.field private final authKey:Ljava/lang/String;

.field private final formatData:Lcn/nubia/upgrade/util/encode/format/FormatData;

.field private final host:Ljava/lang/String;

.field private final requestor:Lcn/nubia/upgrade/util/encode/HttpRequestor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/nubia/upgrade/util/encode/format/FormatData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "formatData"    # Lcn/nubia/upgrade/util/encode/format/FormatData;
    .param p3, "authId"    # Ljava/lang/String;
    .param p4, "authKey"    # Ljava/lang/String;

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;-><init>(Ljava/lang/String;Lcn/nubia/upgrade/util/encode/format/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/nubia/upgrade/util/encode/format/FormatData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "formatData"    # Lcn/nubia/upgrade/util/encode/format/FormatData;
    .param p3, "authId"    # Ljava/lang/String;
    .param p4, "authKey"    # Ljava/lang/String;
    .param p5, "iv"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcn/nubia/upgrade/util/encode/HttpRequestor;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/encode/HttpRequestor;-><init>()V

    iput-object v0, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->requestor:Lcn/nubia/upgrade/util/encode/HttpRequestor;

    .line 27
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 30
    :cond_0
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->host:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authKey:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authIv:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->formatData:Lcn/nubia/upgrade/util/encode/format/FormatData;

    .line 35
    return-void
.end method

.method private genApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p1, "api"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 49
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .restart local p2    # "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v1, "auth_token_id"

    iget-object v2, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authId:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->formatData:Lcn/nubia/upgrade/util/encode/format/FormatData;

    iget-object v2, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authKey:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authIv:Ljava/lang/String;

    invoke-interface {v1, p2, v2, v3}, Lcn/nubia/upgrade/util/encode/format/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->requestor:Lcn/nubia/upgrade/util/encode/HttpRequestor;

    invoke-virtual {v1, p2}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->setParmsMap(Ljava/util/Map;)V

    .line 56
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->requestor:Lcn/nubia/upgrade/util/encode/HttpRequestor;

    invoke-virtual {v1, p3}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->setHeaderMap(Ljava/util/Map;)V

    .line 57
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->requestor:Lcn/nubia/upgrade/util/encode/HttpRequestor;

    invoke-direct {p0, p1}, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->genApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->doPost(Ljava/lang/String;)Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    move-result-object v0

    .line 58
    .local v0, "requestorResult":Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    invoke-virtual {v0}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    .line 59
    new-instance v1, Lcn/nubia/upgrade/util/encode/InterceptorClientException;

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 63
    :cond_1
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->formatData:Lcn/nubia/upgrade/util/encode/format/FormatData;

    invoke-virtual {v0}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authKey:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authIv:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcn/nubia/upgrade/util/encode/format/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthIv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authIv:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->authKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/ClientHttpRequestor;->host:Ljava/lang/String;

    return-object v0
.end method
