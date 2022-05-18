.class public Lcom/nubia/nucms/network/http/NuCmsHttpClient;
.super Ljava/lang/Object;
.source "NuCmsHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharsetByContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "defCharset"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p1, :cond_2

    .line 203
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "values":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 205
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "charset="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    const-string v2, "charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 211
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "values":[Ljava/lang/String;
    .end local p2    # "defCharset":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 204
    .restart local v0    # "value":Ljava/lang/String;
    .restart local v1    # "values":[Ljava/lang/String;
    .restart local p2    # "defCharset":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "values":[Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    goto :goto_1
.end method

.method private writeDataIfNecessary(Ljava/net/HttpURLConnection;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 5
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<*>;"
    invoke-virtual {p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v1

    .line 216
    .local v1, "method":Lcom/nubia/nucms/network/http/consts/HttpMethods;
    sget-object v3, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Post:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Put:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/nubia/nucms/network/http/consts/HttpMethods;->Patch:Lcom/nubia/nucms/network/http/consts/HttpMethods;

    if-ne v1, v3, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p2}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpBody()Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;

    move-result-object v0

    .line 218
    .local v0, "body":Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    if-eqz v0, :cond_1

    .line 219
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    const-string v3, "Content-Type"

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 222
    .local v2, "outStream":Ljava/io/OutputStream;
    invoke-virtual {v0, v2}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->writeTo(Ljava/io/OutputStream;)V

    .line 223
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 226
    .end local v0    # "body":Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .prologue
    .line 61
    return-void
.end method

.method public connect(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nubia/nucms/network/exception/NuCmsHttpClientException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;,
            Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getRequest()Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    move-result-object v18

    .line 66
    .local v18, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    const/4 v11, 0x0

    .line 67
    .local v11, "inputStream":Ljava/io/InputStream;
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMaxRedirectTimes()I

    move-result v15

    .line 70
    .local v15, "maxRedirectTimes":I
    :try_start_0
    new-instance v22, Ljava/net/URL;

    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->createFullUri()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 78
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 80
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 81
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getSocketTimeout()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getConnectTimeout()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHeaders()Ljava/util/Map;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 87
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHeaders()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 88
    .local v19, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 89
    .local v7, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v22    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v25

    if-eqz v11, :cond_0

    .line 196
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v25

    .line 94
    .restart local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v22    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getMethod()Lcom/nubia/nucms/network/http/consts/HttpMethods;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/nubia/nucms/network/http/consts/HttpMethods;->getMethodName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    const-string v25, "User-Agent"

    sget-object v26, Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->userAgent:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->writeDataIfNecessary(Ljava/net/HttpURLConnection;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V

    .line 101
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v11

    .line 115
    :goto_1
    if-nez v11, :cond_2

    .line 116
    :try_start_3
    new-instance v25, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;

    sget-object v26, Lcom/nubia/nucms/network/exception/NuCmsNetException;->NetworkUnreachable:Lcom/nubia/nucms/network/exception/NuCmsNetException;

    invoke-direct/range {v25 .. v26}, Lcom/nubia/nucms/network/exception/NuCmsHttpNetException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsNetException;)V

    throw v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :catch_0
    move-exception v6

    .line 103
    .local v6, "e":Ljava/net/SocketTimeoutException;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    .end local v6    # "e":Ljava/net/SocketTimeoutException;
    :catchall_1
    move-exception v25

    :try_start_5
    throw v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    :catch_1
    move-exception v6

    .line 105
    .local v6, "e":Ljava/io/InterruptedIOException;
    :try_start_6
    sget-object v25, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " InterruptedIOException "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->cancel()V

    goto :goto_1

    .line 109
    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v6

    .line 110
    .local v6, "e":Ljava/io/IOException;
    sget-object v25, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " IOException "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v11

    goto :goto_1

    .line 120
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 121
    .local v20, "statusCode":I
    new-instance v10, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;-><init>(ILjava/lang/String;)V

    .line 122
    .local v10, "httpStatus":Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setHttpStatus(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V

    .line 125
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v9, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 127
    .local v8, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_3

    .line 128
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 129
    .local v24, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_3

    .line 130
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 131
    .local v23, "value":Ljava/lang/String;
    new-instance v28, Lcom/nubia/nucms/network/http/params/NameValuePair;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    .end local v8    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v23    # "value":Ljava/lang/String;
    .end local v24    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setHeaders(Ljava/util/ArrayList;)V

    .line 137
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setContentLength(J)J

    .line 138
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setContentEncoding(Ljava/lang/String;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    .line 139
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setContentType(Ljava/lang/String;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    .line 142
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v25

    if-eqz v25, :cond_6

    .line 195
    if-eqz v11, :cond_5

    .line 196
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 199
    :cond_5
    :goto_3
    return-void

    .line 147
    :cond_6
    const/16 v25, 0x12b

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    const/16 v25, 0x258

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 149
    :cond_7
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getCharSet()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->getCharsetByContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "charSet":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setCharSet(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getContentLength()J

    move-result-wide v12

    .line 154
    .local v12, "len":J
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;

    move-result-object v16

    .line 155
    .local v16, "parser":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12, v13, v4}, Lcom/nubia/nucms/network/http/parser/DataParser;->readFromNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/Object;

    .line 158
    const/4 v11, 0x0

    .line 161
    invoke-virtual/range {v16 .. v16}, Lcom/nubia/nucms/network/http/parser/DataParser;->getReadedLength()J

    move-result-wide v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setReadedLength(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    .end local v4    # "charSet":Ljava/lang/String;
    .end local v12    # "len":J
    .end local v16    # "parser":Lcom/nubia/nucms/network/http/parser/DataParser;, "Lcom/nubia/nucms/network/http/parser/DataParser<TT;>;"
    :cond_8
    if-eqz v11, :cond_5

    .line 196
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 162
    :cond_9
    const/16 v25, 0x18f

    move/from16 v0, v20

    move/from16 v1, v25

    if-gt v0, v1, :cond_e

    .line 164
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getRedirectTimes()I

    move-result v25

    move/from16 v0, v25

    if-ge v0, v15, :cond_d

    .line 166
    const-string v25, "Location"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "location":Ljava/lang/String;
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_c

    .line 168
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string v26, "http"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 169
    new-instance v21, Ljava/net/URI;

    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->createFullUri()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 170
    .local v21, "uri":Ljava/net/URI;
    new-instance v17, Ljava/net/URI;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v14, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v17, "redirect":Ljava/net/URI;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    .line 173
    .end local v17    # "redirect":Ljava/net/URI;
    .end local v21    # "uri":Ljava/net/URI;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getRedirectTimes()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->setRedirectTimes(I)V

    .line 174
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->setUri(Ljava/lang/String;)Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 175
    sget-object v25, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Redirect to : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 177
    invoke-virtual/range {v18 .. v18}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v25

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getRedirectTimes()I

    move-result v26

    .line 177
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v15, v2}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;->notifyCallRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V

    .line 180
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->connect(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 195
    if-eqz v11, :cond_5

    .line 196
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto/16 :goto_3

    .line 183
    :cond_c
    :try_start_a
    new-instance v25, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;-><init>(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V

    throw v25

    .line 185
    .end local v14    # "location":Ljava/lang/String;
    :cond_d
    new-instance v25, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;

    sget-object v26, Lcom/nubia/nucms/network/exception/NuCmsServerException;->RedirectTooMuch:Lcom/nubia/nucms/network/exception/NuCmsServerException;

    invoke-direct/range {v25 .. v26}, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;-><init>(Lcom/nubia/nucms/network/exception/NuCmsServerException;)V

    throw v25

    .line 187
    :cond_e
    const/16 v25, 0x1f3

    move/from16 v0, v20

    move/from16 v1, v25

    if-gt v0, v1, :cond_f

    .line 189
    new-instance v25, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;-><init>(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V

    throw v25

    .line 190
    :cond_f
    const/16 v25, 0x257

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    .line 192
    new-instance v25, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lcom/nubia/nucms/network/exception/NuCmsHttpServerException;-><init>(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V

    throw v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/nubia/nucms/network/http/NuCmsHttpClient;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 56
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/nubia/nucms/network/http/NuCmsHttpClient;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nubia/nucms/network/http/NuCmsHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 47
    return-object p0
.end method
