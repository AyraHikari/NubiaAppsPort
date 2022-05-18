.class public Lcom/hpplay/common/asyncmanager/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private count:I

.field private mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

.field private parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;Lcom/hpplay/common/asyncmanager/AsyncHttpJob;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "HttpRequest"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    .line 27
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    .line 28
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    .line 29
    return-void
.end method


# virtual methods
.method public doGet()Lcom/hpplay/common/asyncmanager/HttpResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 32
    new-instance v1, Lcom/hpplay/common/asyncmanager/HttpResult;

    invoke-direct {v1}, Lcom/hpplay/common/asyncmanager/HttpResult;-><init>()V

    .line 33
    iput v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    .line 34
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    :goto_1
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    if-ge v0, v3, :cond_5

    .line 48
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 50
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->connectTimeout:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 51
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 54
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0, v3}, Lcom/hpplay/common/asyncmanager/HttpRequest;->setHeaders(Ljava/net/URLConnection;Ljava/util/Map;)Z

    move-result v3

    .line 56
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 58
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    invoke-virtual {v4}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->cancelTimeOut()V

    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 63
    iput v4, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->responseCode:I

    .line 64
    const-string v5, "HttpRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doGet responseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 66
    invoke-virtual {p0, v0, v3}, Lcom/hpplay/common/asyncmanager/HttpRequest;->readHttpResult(Ljava/net/URLConnection;Z)Ljava/lang/String;

    move-result-object v0

    .line 67
    const/4 v3, 0x0

    iput v3, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->resultType:I

    .line 68
    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 90
    :goto_2
    return-object v0

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->trySpace:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v0, :cond_4

    .line 75
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->trySpace:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    :cond_4
    :goto_3
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    goto/16 :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_3
    const-string v3, "HttpRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when doGet retry sleep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 81
    :catch_1
    move-exception v0

    .line 82
    const-string v3, "HttpRequest"

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 83
    :catch_2
    move-exception v0

    .line 84
    const-string v3, "HttpRequest"

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 88
    :cond_5
    iput v8, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->resultType:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->result:Ljava/lang/String;

    move-object v0, v1

    .line 90
    goto :goto_2
.end method

.method public doPost()Lcom/hpplay/common/asyncmanager/HttpResult;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 94
    new-instance v1, Lcom/hpplay/common/asyncmanager/HttpResult;

    invoke-direct {v1}, Lcom/hpplay/common/asyncmanager/HttpResult;-><init>()V

    .line 95
    iput v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    .line 96
    :goto_0
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    if-ge v0, v2, :cond_4

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestUrl:Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v3, "HttpRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  path post"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 103
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->connectTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 106
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 110
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->requestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0, v2}, Lcom/hpplay/common/asyncmanager/HttpRequest;->setHeaders(Ljava/net/URLConnection;Ljava/util/Map;)Z

    move-result v2

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 114
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->mHttpJob:Lcom/hpplay/common/asyncmanager/AsyncHttpJob;

    invoke-virtual {v3}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->cancelTimeOut()V

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->params:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 122
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 126
    iput v3, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->responseCode:I

    .line 127
    const-string v4, "HttpRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doPost responseCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 129
    invoke-virtual {p0, v0, v2}, Lcom/hpplay/common/asyncmanager/HttpRequest;->readHttpResult(Ljava/net/URLConnection;Z)Ljava/lang/String;

    move-result-object v0

    .line 130
    const/4 v2, 0x0

    iput v2, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->resultType:I

    .line 131
    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->result:Ljava/lang/String;

    move-object v0, v1

    .line 151
    :goto_1
    return-object v0

    .line 135
    :cond_2
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->tryCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->trySpace:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v0, :cond_3

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->parameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->trySpace:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    :cond_3
    :goto_2
    iget v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/common/asyncmanager/HttpRequest;->count:I

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_2
    const-string v2, "HttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when doPost retry sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 142
    :catch_1
    move-exception v0

    .line 143
    const-string v2, "HttpRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 144
    :catch_2
    move-exception v0

    .line 145
    const-string v2, "HttpRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 149
    :cond_4
    iput v7, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->resultType:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/hpplay/common/asyncmanager/HttpResult;->result:Ljava/lang/String;

    move-object v0, v1

    .line 151
    goto :goto_1
.end method

.method public readHttpResult(Ljava/net/URLConnection;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 171
    .line 173
    if-eqz p2, :cond_0

    .line 174
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v1

    .line 178
    :goto_0
    if-eqz v3, :cond_4

    .line 179
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v4, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    .line 182
    :goto_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 183
    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->read()I

    move-result v2

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 187
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 190
    :goto_2
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const-string v0, ""

    .line 197
    :cond_3
    return-object v0

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method public setHeaders(Ljava/net/URLConnection;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 157
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 158
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    const-string v4, "gzip"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    const/4 v1, 0x1

    .line 164
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 167
    :cond_2
    return v0
.end method
