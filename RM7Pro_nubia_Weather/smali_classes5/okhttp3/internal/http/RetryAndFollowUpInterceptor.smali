.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 70
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 13
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 190
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 191
    .local v7, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 193
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 194
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 197
    :cond_0
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 198
    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 199
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 197
    return-object v0
.end method

.method private followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 12
    .param p1, "userResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 264
    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 265
    :cond_0
    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v10}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 266
    .local v0, "connection":Lokhttp3/Connection;
    if-eqz v0, :cond_2

    .line 267
    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v5

    .line 269
    .local v5, "route":Lokhttp3/Route;
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v4

    .line 271
    .local v4, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "method":Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    .line 344
    :cond_1
    :goto_1
    return-object v9

    .end local v2    # "method":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "route":Lokhttp3/Route;
    :cond_2
    move-object v5, v9

    .line 267
    goto :goto_0

    .line 274
    .restart local v2    # "method":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v5    # "route":Lokhttp3/Route;
    :sswitch_0
    if-eqz v5, :cond_3

    .line 275
    invoke-virtual {v5}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v7

    .line 277
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_2
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_4

    .line 278
    new-instance v9, Ljava/net/ProtocolException;

    const-string v10, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 275
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_3
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 276
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v7

    goto :goto_2

    .line 280
    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_4
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v9

    invoke-interface {v9, v5, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v9

    goto :goto_1

    .line 283
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_1
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v9

    invoke-interface {v9, v5, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v9

    goto :goto_1

    .line 289
    :sswitch_2
    const-string v10, "GET"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "HEAD"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 298
    :cond_5
    :sswitch_3
    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 300
    const-string v10, "Location"

    invoke-virtual {p1, v10}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v8

    .line 305
    .local v8, "url":Lokhttp3/HttpUrl;
    if-eqz v8, :cond_1

    .line 308
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 309
    .local v6, "sameScheme":Z
    if-nez v6, :cond_6

    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 312
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    .line 313
    .local v3, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 314
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 315
    const-string v10, "GET"

    invoke-virtual {v3, v10, v9}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 319
    :goto_3
    const-string v9, "Transfer-Encoding"

    invoke-virtual {v3, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 320
    const-string v9, "Content-Length"

    invoke-virtual {v3, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 321
    const-string v9, "Content-Type"

    invoke-virtual {v3, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 327
    :cond_7
    invoke-direct {p0, p1, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 328
    const-string v9, "Authorization"

    invoke-virtual {v3, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 331
    :cond_8
    invoke-virtual {v3, v8}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    goto/16 :goto_1

    .line 317
    :cond_9
    invoke-virtual {v3, v2, v9}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_3

    .line 337
    .end local v1    # "location":Ljava/lang/String;
    .end local v3    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v6    # "sameScheme":Z
    .end local v8    # "url":Lokhttp3/HttpUrl;
    :sswitch_4
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v10

    instance-of v10, v10, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v10, :cond_1

    .line 341
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    goto/16 :goto_1

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
        0x198 -> :sswitch_4
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 235
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 240
    :cond_3
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_4

    .line 243
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_0

    .line 247
    :cond_4
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_0

    move v1, v0

    .line 255
    goto :goto_0
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z
    .param p3, "userRequest"    # Lokhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 211
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_0

    .line 217
    :cond_2
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .locals 3
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "followUp"    # Lokhttp3/HttpUrl;

    .prologue
    .line 353
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 354
    .local v0, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 356
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    .line 356
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 83
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 84
    .local v0, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 85
    :cond_0
    return-void
.end method

.method public client()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 108
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v6

    .line 110
    .local v6, "request":Lokhttp3/Request;
    new-instance v8, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 111
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v9

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-direct {p0, v10}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    iput-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "followUpCount":I
    const/4 v4, 0x0

    .line 116
    .local v4, "priorResponse":Lokhttp3/Response;
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v8, :cond_1

    .line 117
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 118
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Canceled"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 121
    :cond_1
    const/4 v7, 0x0

    .line 122
    .local v7, "response":Lokhttp3/Response;
    const/4 v5, 0x1

    .line 124
    .local v5, "releaseConnection":Z
    :try_start_0
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    move-object v8, v0

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v10, v11}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;)Lokhttp3/Response;
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 125
    const/4 v5, 0x0

    .line 138
    if-eqz v5, :cond_2

    .line 139
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 145
    :cond_2
    if-eqz v4, :cond_3

    .line 146
    invoke-virtual {v7}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v8

    .line 147
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    .line 148
    invoke-virtual {v9, v12}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 149
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v9

    .line 147
    invoke-virtual {v8, v9}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v8

    .line 150
    invoke-virtual {v8}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    .line 153
    :cond_3
    invoke-direct {p0, v7}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v2

    .line 155
    .local v2, "followUp":Lokhttp3/Request;
    if-nez v2, :cond_8

    .line 156
    iget-boolean v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v8, :cond_4

    .line 157
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 159
    :cond_4
    return-object v7

    .line 126
    .end local v2    # "followUp":Lokhttp3/Request;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Lokhttp3/internal/connection/RouteException;
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_5

    .line 139
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v9, v12}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v9}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_5
    throw v8

    .line 129
    .restart local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :cond_6
    const/4 v5, 0x0

    .line 138
    if-eqz v5, :cond_0

    .line 139
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 131
    .end local v1    # "e":Lokhttp3/internal/connection/RouteException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v1, v8, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v8

    if-nez v8, :cond_7

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_7
    const/4 v5, 0x0

    .line 138
    if-eqz v5, :cond_0

    .line 139
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v12}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "followUp":Lokhttp3/Request;
    :cond_8
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x14

    if-le v3, v8, :cond_9

    .line 165
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 166
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many follow-up requests: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 169
    :cond_9
    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    instance-of v8, v8, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v8, :cond_a

    .line 170
    new-instance v8, Ljava/net/HttpRetryException;

    const-string v9, "Cannot retry streamed HTTP body"

    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v10

    invoke-direct {v8, v9, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 173
    :cond_a
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 174
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 175
    new-instance v8, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 176
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v9

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-direct {p0, v10}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    iput-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 182
    :cond_b
    move-object v6, v2

    .line 183
    move-object v4, v7

    .line 184
    goto/16 :goto_0

    .line 177
    :cond_c
    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->stream()Lokhttp3/internal/http/HttpStream;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 178
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Closing the body of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public isForWebSocket()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return v0
.end method

.method public setForWebSocket(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 97
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
