.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lokhttp3/internal/framed/FramedConnection;

.field private handshake:Lokhttp3/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lokhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lokhttp3/Route;

.field public sink:Lokio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lokio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lokhttp3/Route;)V
    .locals 2
    .param p1, "route"    # Lokhttp3/Route;

    .prologue
    .line 85
    invoke-direct {p0}, Lokhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 87
    return-void
.end method

.method private buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 174
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 175
    return-void
.end method

.method private buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->createTunnelRequest()Lokhttp3/Request;

    move-result-object v2

    .line 146
    .local v2, "tunnelRequest":Lokhttp3/Request;
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    .line 147
    .local v3, "url":Lokhttp3/HttpUrl;
    const/4 v0, 0x0

    .line 148
    .local v0, "attemptedConnections":I
    const/16 v1, 0x15

    .line 150
    .local v1, "maxAttempts":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 151
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many tunnel connections attempted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_0
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->connectSocket(II)V

    .line 155
    invoke-direct {p0, p2, p3, v2, v3}, Lokhttp3/internal/connection/RealConnection;->createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    move-result-object v2

    .line 157
    if-nez v2, :cond_1

    .line 167
    invoke-direct {p0, p2, p3, p4}, Lokhttp3/internal/connection/RealConnection;->establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 168
    return-void

    .line 161
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 162
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 163
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 164
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    goto :goto_0
.end method

.method private connectSocket(II)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 179
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 181
    .local v0, "address":Lokhttp3/Address;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    .line 182
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 185
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lokhttp3/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 192
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 193
    return-void

    .line 182
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v5}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v10, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v10}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    .line 225
    .local v1, "address":Lokhttp3/Address;
    invoke-virtual {v1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 226
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    .line 227
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 230
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v10, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 231
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->port()I

    move-result v12

    const/4 v13, 0x1

    .line 230
    invoke-virtual {v7, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    move-result-object v3

    .line 235
    .local v3, "connectionSpec":Lokhttp3/ConnectionSpec;
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 236
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v10

    .line 237
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v12

    .line 236
    invoke-virtual {v10, v6, v11, v12}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 241
    :cond_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 242
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-static {v10}, Lokhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v9

    .line 245
    .local v9, "unverifiedHandshake":Lokhttp3/Handshake;
    invoke-virtual {v1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 246
    invoke-virtual {v9}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 247
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hostname "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not verified:\n    certificate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 248
    invoke-static {v2}, Lokhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    DN: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 249
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    subjectAltNames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 250
    invoke-static {v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v9    # "unverifiedHandshake":Lokhttp3/Handshake;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v4}, Lokhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_1

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v11

    invoke-virtual {v11, v6}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_1
    if-nez v8, :cond_2

    .line 277
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v10

    .line 254
    .restart local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .restart local v9    # "unverifiedHandshake":Lokhttp3/Handshake;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v10

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-virtual {v9}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v12

    .line 254
    invoke-virtual {v10, v11, v12}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 258
    invoke-virtual {v3}, Lokhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 259
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_0
    iput-object v6, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 262
    iget-object v10, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v10

    iput-object v10, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 263
    iget-object v10, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v10

    invoke-static {v10}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v10

    iput-object v10, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 264
    iput-object v9, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 265
    if-eqz v5, :cond_7

    .line 266
    invoke-static {v5}, Lokhttp3/Protocol;->get(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object v10

    :goto_1
    iput-object v10, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    const/4 v8, 0x1

    .line 273
    if-eqz v6, :cond_4

    .line 274
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lokhttp3/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 276
    :cond_4
    if-nez v8, :cond_5

    .line 277
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 280
    :cond_5
    return-void

    .line 259
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 266
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_7
    :try_start_3
    sget-object v10, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 271
    .end local v3    # "connectionSpec":Lokhttp3/ConnectionSpec;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v9    # "unverifiedHandshake":Lokhttp3/Handshake;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_8
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 11
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lokhttp3/Request;
    .param p4, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p4, v8}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    new-instance v5, Lokhttp3/internal/http/Http1xStream;

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v5, v6, v6, v7, v8}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 292
    .local v5, "tunnelConnection":Lokhttp3/internal/http/Http1xStream;
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v7

    int-to-long v8, p1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 293
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v7

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 294
    invoke-virtual {p3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lokhttp3/internal/http/Http1xStream;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v5}, Lokhttp3/internal/http/Http1xStream;->finishRequest()V

    .line 296
    invoke-virtual {v5}, Lokhttp3/internal/http/Http1xStream;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 299
    .local v4, "response":Lokhttp3/Response;
    invoke-static {v4}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v2

    .line 300
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 301
    const-wide/16 v2, 0x0

    .line 303
    :cond_1
    invoke-virtual {v5, v2, v3}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    .line 304
    .local v0, "body":Lokio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8}, Lokhttp3/internal/Util;->skipAll(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 305
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 307
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 328
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 329
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 313
    :sswitch_0
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v7}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_4

    .line 314
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 319
    :sswitch_1
    iget-object v7, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v7}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v7

    iget-object v8, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-interface {v7, v8, v4}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p3

    .line 320
    if-nez p3, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    :cond_3
    const-string v7, "close"

    const-string v8, "Connection"

    invoke-virtual {v4, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, p3

    .line 323
    :cond_4
    return-object v6

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lokhttp3/Request;
    .locals 4

    .prologue
    .line 340
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 341
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 342
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 343
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 344
    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method private establishProtocol(IILokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 6
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lokhttp3/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 197
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/connection/RealConnection;->connectTls(IILokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 204
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v1, v2, :cond_2

    .line 205
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    new-instance v1, Lokhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {v1, v3}, Lokhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 208
    invoke-virtual {v3}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-virtual {v1, v2, v3, v4, v5}, Lokhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 209
    invoke-virtual {v1, v2}, Lokhttp3/internal/framed/FramedConnection$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1, p0}, Lokhttp3/internal/framed/FramedConnection$Builder;->listener(Lokhttp3/internal/framed/FramedConnection$Listener;)Lokhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedConnection$Builder;->build()Lokhttp3/internal/framed/FramedConnection;

    move-result-object v0

    .line 212
    .local v0, "framedConnection":Lokhttp3/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->start()V

    .line 215
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 216
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    .line 220
    .end local v0    # "framedConnection":Lokhttp3/internal/framed/FramedConnection;
    :goto_1
    return-void

    .line 200
    :cond_1
    sget-object v1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 201
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 218
    :cond_2
    iput v3, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 355
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 8
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    const/4 v5, 0x0

    .line 91
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "already connected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_0
    const/4 v3, 0x0

    .line 94
    .local v3, "routeException":Lokhttp3/internal/connection/RouteException;
    new-instance v0, Lokhttp3/internal/connection/ConnectionSpecSelector;

    invoke-direct {v0, p4}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 96
    .local v0, "connectionSpecSelector":Lokhttp3/internal/connection/ConnectionSpecSelector;
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-nez v4, :cond_2

    .line 97
    sget-object v4, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    new-instance v4, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    const-string v6, "CLEARTEXT communication not enabled for client"

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 101
    :cond_1
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "host":Ljava/lang/String;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v4, v2}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    new-instance v4, Lokhttp3/internal/connection/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEARTEXT communication to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not permitted by network security policy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 108
    .end local v2    # "host":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-nez v4, :cond_6

    .line 110
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v4}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/connection/RealConnection;->buildTunneledConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 118
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 120
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 121
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    .line 122
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    .line 123
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 124
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 126
    if-nez v3, :cond_5

    .line 127
    new-instance v3, Lokhttp3/internal/connection/RouteException;

    .end local v3    # "routeException":Lokhttp3/internal/connection/RouteException;
    invoke-direct {v3, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 132
    .restart local v3    # "routeException":Lokhttp3/internal/connection/RouteException;
    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    :cond_3
    throw v3

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/connection/RealConnection;->buildConnection(IIILokhttp3/internal/connection/ConnectionSpecSelector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    return-void
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public isHealthy(Z)Z
    .locals 6
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 363
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 390
    :cond_1
    :goto_0
    return v2

    .line 367
    :cond_2
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-nez v4, :cond_1

    .line 371
    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 375
    .local v1, "readTimeout":I
    :try_start_1
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    :try_start_2
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v2, v3

    .line 377
    goto :goto_0

    .line 381
    :cond_3
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 383
    .end local v1    # "readTimeout":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 381
    .restart local v1    # "readTimeout":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 385
    .end local v1    # "readTimeout":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 386
    goto :goto_0
.end method

.method public isMultiplexed()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettings(Lokhttp3/internal/framed/FramedConnection;)V
    .locals 1
    .param p1, "connection"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 400
    invoke-virtual {p1}, Lokhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 401
    return-void
.end method

.method public onStream(Lokhttp3/internal/framed/FramedStream;)V
    .locals 1
    .param p1, "stream"    # Lokhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V

    .line 396
    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v0

    goto :goto_0
.end method

.method public route()Lokhttp3/Route;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 425
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 427
    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 429
    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 431
    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    return-object v0

    .line 431
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
