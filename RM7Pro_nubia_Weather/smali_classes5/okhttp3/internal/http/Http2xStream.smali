.class public final Lokhttp3/internal/http/Http2xStream;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final CONNECTION:Lokio/ByteString;

.field private static final ENCODING:Lokio/ByteString;

.field private static final HOST:Lokio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lokio/ByteString;

.field private static final PROXY_CONNECTION:Lokio/ByteString;

.field private static final SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final TE:Lokio/ByteString;

.field private static final TRANSFER_ENCODING:Lokio/ByteString;

.field private static final UPGRADE:Lokio/ByteString;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final framedConnection:Lokhttp3/internal/framed/FramedConnection;

.field private stream:Lokhttp3/internal/framed/FramedStream;

.field private final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    .line 56
    const-string v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    .line 57
    const-string v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    .line 58
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    .line 59
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    .line 60
    const-string v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    .line 61
    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    .line 62
    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v1, v0, v7

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->HOST:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->KEEP_ALIVE:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->PROXY_CONNECTION:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http/Http2xStream;->TE:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->TRANSFER_ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->ENCODING:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http/Http2xStream;->UPGRADE:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/StreamAllocation;
    .param p3, "framedConnection"    # Lokhttp3/internal/framed/FramedConnection;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    .line 118
    iput-object p2, p0, Lokhttp3/internal/http/Http2xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 119
    iput-object p3, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/http/Http2xStream;)Lokhttp3/internal/connection/StreamAllocation;
    .locals 1
    .param p0, "x0"    # Lokhttp3/internal/http/Http2xStream;

    .prologue
    .line 54
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method public static http2HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 9
    .param p0, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 196
    .local v0, "headers":Lokhttp3/Headers;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    new-instance v5, Lokhttp3/internal/framed/Header;

    sget-object v6, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v5, Lokhttp3/internal/framed/Header;

    sget-object v6, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v5, Lokhttp3/internal/framed/Header;

    sget-object v6, Lokhttp3/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v5, Lokhttp3/internal/framed/Header;

    sget-object v6, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    .line 205
    .local v2, "name":Lokio/ByteString;
    sget-object v5, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Lokhttp3/internal/framed/Header;

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "name":Lokio/ByteString;
    :cond_1
    return-object v3
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v4, 0x0

    .line 251
    .local v4, "status":Ljava/lang/String;
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 252
    .local v0, "headersBuilder":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 253
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/framed/Header;

    iget-object v2, v7, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    .line 255
    .local v2, "name":Lokio/ByteString;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/framed/Header;

    iget-object v7, v7, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v2, v7}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    move-object v4, v6

    .line 252
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    sget-object v7, Lokhttp3/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 259
    sget-object v7, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8, v6}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v2    # "name":Lokio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    const-string v8, "Expected \':status\' header not present"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 264
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v5

    .line 265
    .local v5, "statusLine":Lokhttp3/internal/http/StatusLine;
    new-instance v7, Lokhttp3/Response$Builder;

    invoke-direct {v7}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v8, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 266
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v7

    iget v8, v5, Lokhttp3/internal/http/StatusLine;->code:I

    .line 267
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v7

    iget-object v8, v5, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 268
    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 269
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 265
    return-object v7
.end method

.method public static readSpdy3HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)",
            "Lokhttp3/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 215
    .local v6, "status":Ljava/lang/String;
    const-string v10, "HTTP/1.1"

    .line 216
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 217
    .local v1, "headersBuilder":Lokhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 218
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/framed/Header;

    iget-object v3, v11, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    .line 220
    .local v3, "name":Lokio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/framed/Header;

    iget-object v11, v11, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v11}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 222
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 223
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_0

    .line 224
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 226
    :cond_0
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lokhttp3/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    move-object v6, v8

    .line 234
    :cond_1
    :goto_2
    add-int/lit8 v5, v0, 0x1

    .line 235
    goto :goto_1

    .line 229
    :cond_2
    sget-object v11, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    move-object v10, v8

    goto :goto_2

    .line 231
    :cond_3
    sget-object v11, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 232
    sget-object v11, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12, v8}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "name":Lokio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    new-instance v11, Ljava/net/ProtocolException;

    const-string v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 239
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v7

    .line 240
    .local v7, "statusLine":Lokhttp3/internal/http/StatusLine;
    new-instance v11, Lokhttp3/Response$Builder;

    invoke-direct {v11}, Lokhttp3/Response$Builder;-><init>()V

    sget-object v12, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    .line 241
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v11

    iget v12, v7, Lokhttp3/internal/http/StatusLine;->code:I

    .line 242
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v11

    iget-object v12, v7, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 243
    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 244
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v12

    invoke-virtual {v11, v12}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v11

    .line 240
    return-object v11
.end method

.method public static spdy3HeadersList(Lokhttp3/Request;)Ljava/util/List;
    .locals 13
    .param p0, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 156
    .local v1, "headers":Lokhttp3/Headers;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    new-instance v9, Lokhttp3/internal/framed/Header;

    sget-object v10, Lokhttp3/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v9, Lokhttp3/internal/framed/Header;

    sget-object v10, Lokhttp3/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-static {v11}, Lokhttp3/internal/http/RequestLine;->requestPath(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v9, Lokhttp3/internal/framed/Header;

    sget-object v10, Lokhttp3/internal/framed/Header;->VERSION:Lokio/ByteString;

    const-string v11, "HTTP/1.1"

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v9, Lokhttp3/internal/framed/Header;

    sget-object v10, Lokhttp3/internal/framed/Header;->TARGET_HOST:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v9, Lokhttp3/internal/framed/Header;

    sget-object v10, Lokhttp3/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 164
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v2, v7, :cond_4

    .line 166
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    .line 169
    .local v4, "name":Lokio/ByteString;
    sget-object v9, Lokhttp3/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 174
    new-instance v9, Lokhttp3/internal/framed/Header;

    invoke-direct {v9, v4, v8}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 180
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/framed/Header;

    iget-object v9, v9, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 181
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp3/internal/framed/Header;

    iget-object v9, v9, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lokhttp3/internal/http/Http2xStream;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lokhttp3/internal/framed/Header;

    invoke-direct {v9, v4, v0}, Lokhttp3/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    .end local v3    # "j":I
    .end local v4    # "name":Lokio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedStream;->closeLater(Lokhttp3/internal/framed/ErrorCode;)V

    .line 279
    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 1
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "contentLength"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getSink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 141
    return-void
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 4
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v1}, Lokhttp3/internal/framed/FramedStream;->getSource()Lokio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lokhttp3/internal/http/Http2xStream;Lokio/Source;)V

    .line 274
    .local v0, "source":Lokio/Source;
    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lokhttp3/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->readHttp2HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->readSpdy3HeadersList(Ljava/util/List;)Lokhttp3/Response$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 7
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    if-eqz v3, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    .line 130
    .local v1, "permitsRequestBody":Z
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedConnection;->getProtocol()Lokhttp3/Protocol;

    move-result-object v3

    sget-object v4, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-ne v3, v4, :cond_1

    .line 131
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->http2HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :goto_1
    const/4 v0, 0x1

    .line 134
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v3, v2, v1, v0}, Lokhttp3/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    .line 135
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->readTimeout()Lokio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 136
    iget-object v3, p0, Lokhttp3/internal/http/Http2xStream;->stream:Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {v3}, Lokhttp3/internal/framed/FramedStream;->writeTimeout()Lokio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/Http2xStream;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_0

    .line 132
    .end local v0    # "hasResponseBody":Z
    .end local v2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http/Http2xStream;->spdy3HeadersList(Lokhttp3/Request;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
