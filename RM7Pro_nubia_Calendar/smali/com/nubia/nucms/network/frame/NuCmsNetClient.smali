.class public Lcom/nubia/nucms/network/frame/NuCmsNetClient;
.super Ljava/lang/Object;
.source "NuCmsNetClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final lock:Ljava/lang/Object;

.field mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V
    .locals 1
    .param p1, "mConfig"    # Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->lock:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->initConfig(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V

    .line 48
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    invoke-direct {v0, p0}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private check(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<*>;"
    if-nez p1, :cond_0

    .line 69
    const-string v0, "request is null ,return!"

    invoke-static {v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connectWithRetries(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p2, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    const/4 v4, 0x0

    .local v4, "times":I
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMaxRetryTimes()I

    move-result v2

    .line 300
    .local v2, "maxRetryTimes":I
    const/4 v3, 0x1

    .line 301
    .local v3, "retry":Z
    const/4 v0, 0x0

    .line 302
    .local v0, "cause":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 304
    const/4 v0, 0x0

    .line 305
    const/4 v3, 0x0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    :cond_1
    return-void

    .line 310
    :cond_2
    iget-object v5, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v5, v5, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->httpClient:Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    invoke-virtual {v5, p2}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->connect(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_0
    .catch Lcom/nubia/nucms/network/exception/NuCmsHttpServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nubia/nucms/network/exception/NuCmsHttpNetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 321
    :goto_1
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 326
    iget-object v5, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v5, v5, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->retryHandler:Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;

    iget-object v6, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .line 327
    invoke-virtual {v6}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 326
    invoke-virtual {v5, v0, v4, v2, v6}, Lcom/nubia/nucms/network/frame/NuCmsRetryHandler;->retryRequest(Ljava/io/IOException;IILandroid/content/Context;)Z

    move-result v3

    .line 328
    if-eqz v3, :cond_0

    .line 329
    invoke-virtual {p2, v4}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setRetryTimes(I)V

    .line 330
    sget-object v5, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LiteHttp retry request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v5

    invoke-virtual {v5, p1, v2, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :goto_2
    throw v1

    .line 313
    .end local v1    # "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :catch_1
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v5, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v6, Lcom/nubia/nucms/network/exception/NuCmsClientException;->PermissionDenied:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v5, v1, v6}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Ljava/lang/Throwable;Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v5

    .line 316
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 317
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 320
    goto :goto_1

    .line 318
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    invoke-direct {v5, v1}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v0, :cond_1

    .line 340
    new-instance v5, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    invoke-direct {v5, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 311
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public delete(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Delete:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->handleRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v4

    .line 154
    .local v4, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v3

    .line 157
    .local v3, "listener":Lcom/nubia/nucms/network/frame/NuCmsNetListener;, "Lcom/nubia/nucms/network/frame/NuCmsNetListener<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 159
    .local v5, "t":Ljava/lang/Thread;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lite http request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 160
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->createFullUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 161
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 163
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_0
    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {v3, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    .line 168
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->tryToConnectNetwork(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)Z
    :try_end_0
    .catch Lcom/nubia/nucms/network/exception/NuCmsHttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :try_start_1
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 181
    .restart local v5    # "t":Ljava/lang/Thread;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lite http response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_2
    if-eqz v3, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 194
    :goto_0
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 200
    :cond_3
    :goto_1
    return-object v4

    .line 189
    :cond_4
    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v3, v1, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwable 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :try_start_3
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    const-string v7, "NuCmsHttpException"

    invoke-static {v6, v7, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 171
    move-object v1, v0

    .line 172
    invoke-virtual {v4, v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setException(Lcom/nubia/nucms/network/exception/NuCmsHttpException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :try_start_4
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 181
    .restart local v5    # "t":Ljava/lang/Thread;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lite http response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_6
    if-eqz v3, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 188
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 194
    :goto_2
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwable 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 189
    .local v0, "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :cond_7
    if-eqz v1, :cond_8

    .line 190
    :try_start_5
    invoke-virtual {v3, v1, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    goto :goto_2

    .line 192
    :cond_8
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 173
    .end local v0    # "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :catch_3
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_6
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwable 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    invoke-direct {v2, v0}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    .end local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .local v2, "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :try_start_7
    invoke-virtual {v4, v2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setException(Lcom/nubia/nucms/network/exception/NuCmsHttpException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 179
    :try_start_8
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 181
    .restart local v5    # "t":Ljava/lang/Thread;
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lite http response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , method: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 182
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 183
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , thread name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_9
    if-eqz v3, :cond_a

    .line 187
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 188
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 194
    :goto_3
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    :cond_a
    move-object v1, v2

    .line 198
    .end local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    goto/16 :goto_1

    .line 189
    .end local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :cond_b
    if-eqz v2, :cond_c

    .line 190
    invoke-virtual {v3, v2, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 196
    :catch_4
    move-exception v0

    .line 197
    sget-object v6, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Throwable 2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 199
    .end local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    goto/16 :goto_1

    .line 192
    .end local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :cond_c
    :try_start_9
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :catchall_0
    move-exception v6

    .line 179
    :goto_4
    :try_start_a
    invoke-static {}, Lcom/nubia/nucms/utils/NuCmsLog;->isEnable()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 181
    .restart local v5    # "t":Ljava/lang/Thread;
    sget-object v7, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lite http response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 182
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , thread ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 183
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , thread name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 181
    invoke-static {v7, v8}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_d
    if-eqz v3, :cond_e

    .line 187
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 188
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 194
    :goto_5
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 198
    :cond_e
    :goto_6
    throw v6

    .line 189
    :cond_f
    if-eqz v1, :cond_10

    .line 190
    :try_start_b
    invoke-virtual {v3, v1, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    .line 196
    :catch_5
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Throwable 2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 192
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_10
    :try_start_c
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_5

    .line 178
    .end local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .restart local v1    # "httpException":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    goto/16 :goto_4
.end method

.method public executeAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->check(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->smartExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;

    invoke-direct {v1, p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetClient;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public executeOrThrow(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->check(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v3, Lcom/nubia/nucms/network/exception/NuCmsClientException;->RequestIsNull:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v2

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v1

    .line 115
    .local v1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-virtual {v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getException()Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    move-result-object v0

    .line 116
    .local v0, "e":Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    if-eqz v0, :cond_1

    .line 117
    throw v0

    .line 119
    :cond_1
    return-object v1
.end method

.method public get(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;

    invoke-direct {v0, p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Get:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    .line 129
    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getConfig()Lcom/nubia/nucms/network/frame/NuCmsNetConfig;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    return-object v0
.end method

.method protected getCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->commonHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->addHeader(Ljava/util/Map;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getCharSet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultCharSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setCharSet(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultHttpMethod:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 217
    :cond_2
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMaxRedirectTimes()I

    move-result v0

    if-gez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRedirectTimes:I

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMaxRedirectTimes(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMaxRetryTimes()I

    move-result v0

    if-gez v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->defaultMaxRetryTimes:I

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMaxRetryTimes(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getSocketTimeout()I

    move-result v0

    if-gez v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->socketTimeout:I

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setSocketTimeout(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getConnectTimeout()I

    move-result v0

    if-gez v0, :cond_6

    .line 227
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v0, v0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->connectTimeout:I

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setConnectTimeout(I)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 229
    :cond_6
    new-instance v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-direct {v0, p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;-><init>(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    return-object v0
.end method

.method public head(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Head:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initConfig(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V
    .locals 2
    .param p1, "mConfig"    # Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .line 56
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->check(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public performAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->check(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;

    invoke-direct {v1, p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;-><init>(Lcom/nubia/nucms/network/frame/NuCmsNetClient;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 105
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v1, v1, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->smartExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public performOrThrow(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpException;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->executeOrThrow(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Post:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    sget-object v0, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Put:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    invoke-virtual {p1, v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setMethod(Lcom/nubia/nucms/network/http/consts/HttpMethods;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->perform(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected tryToConnectNetwork(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    .local p2, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->tryToDetectNetwork()V

    .line 284
    sget-object v0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lite http connect network...  url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->connectWithRetries(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected tryToDetectNetwork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-boolean v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    if-lez v2, :cond_6

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 240
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v3, Lcom/nubia/nucms/network/exception/NuCmsClientException;->ContextNeeded:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v2

    .line 244
    :cond_1
    const/4 v1, 0x0

    .line 245
    .local v1, "type":Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    :try_start_0
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-boolean v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->detectNetwork:Z

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    move-result-object v1

    .line 247
    sget-object v2, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->None:Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    if-ne v1, v2, :cond_2

    .line 248
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    sget-object v3, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkNotAvilable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-direct {v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;

    sget-object v3, Lcom/nubia/nucms/network/exception/NuCmsClientException;->PermissionDenied:Lcom/nubia/nucms/network/exception/NuCmsClientException;

    invoke-direct {v2, v0, v3}, Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;-><init>(Ljava/lang/Throwable;Lcom/nubia/nucms/network/exception/NuCmsClientException;)V

    throw v2

    .line 252
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->disableNetworkFlags:I

    if-lez v2, :cond_6

    .line 253
    if-nez v1, :cond_3

    .line 254
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget-object v2, v2, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->context:Landroid/content/Context;

    .line 255
    invoke-static {v2}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    move-result-object v1

    .line 257
    :cond_3
    if-eqz v1, :cond_5

    .line 258
    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    invoke-virtual {v2}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->isDisableAllNetwork()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->mConfig:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    iget v3, v1, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->value:I

    .line 259
    invoke-virtual {v2, v3}, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->isDisableNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    :cond_4
    new-instance v2, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    sget-object v3, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkDisabled:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-direct {v2, v3}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V

    throw v2

    .line 264
    :cond_5
    sget-object v2, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->TAG:Ljava/lang/String;

    const-string v3, "DisableNetwork but cant get network type !!!"

    invoke-static {v2, v3}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .end local v1    # "type":Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    :cond_6
    return-void
.end method
