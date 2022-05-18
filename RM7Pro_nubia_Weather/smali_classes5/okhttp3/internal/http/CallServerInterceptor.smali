.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 34
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v9, p1

    check-cast v9, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v9}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpStream;

    move-result-object v2

    .local v2, "httpStream":Lokhttp3/internal/http/HttpStream;
    move-object v9, p1

    .line 38
    check-cast v9, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v9}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v8

    .line 39
    .local v8, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    .line 41
    .local v3, "request":Lokhttp3/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 42
    .local v6, "sentRequestMillis":J
    invoke-interface {v2, v3}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 44
    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 45
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-interface {v2, v3, v10, v11}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v4

    .line 46
    .local v4, "requestBodyOut":Lokio/Sink;
    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 47
    .local v0, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v9, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 48
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 51
    .end local v0    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v4    # "requestBodyOut":Lokio/Sink;
    :cond_0
    invoke-interface {v2}, Lokhttp3/internal/http/HttpStream;->finishRequest()V

    .line 53
    invoke-interface {v2}, Lokhttp3/internal/http/HttpStream;->readResponseHeaders()Lokhttp3/Response$Builder;

    move-result-object v9

    .line 54
    invoke-virtual {v9, v3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 55
    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 56
    invoke-virtual {v9, v6, v7}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 60
    .local v5, "response":Lokhttp3/Response;
    iget-boolean v9, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0x65

    if-eq v9, v10, :cond_2

    .line 61
    :cond_1
    invoke-virtual {v5}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v9

    .line 62
    invoke-interface {v2, v5}, Lokhttp3/internal/http/HttpStream;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v9, v10}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v9

    .line 63
    invoke-virtual {v9}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 66
    :cond_2
    const-string v9, "close"

    invoke-virtual {v5}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    const-string v11, "Connection"

    invoke-virtual {v10, v11}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "close"

    const-string v10, "Connection"

    .line 67
    invoke-virtual {v5, v10}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 68
    :cond_3
    invoke-virtual {v8}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 71
    :cond_4
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v1

    .line 72
    .local v1, "code":I
    const/16 v9, 0xcc

    if-eq v1, v9, :cond_5

    const/16 v9, 0xcd

    if-ne v1, v9, :cond_6

    :cond_5
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 73
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 74
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 77
    :cond_6
    return-object v5
.end method
