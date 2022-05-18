.class public Lcn/nubia/upgrade/util/encode/HttpRequestor;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parmsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "utf-8"

    iput-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    .line 26
    iput-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    .line 27
    iput-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    .line 28
    iput-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    .line 29
    iput-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    return-void
.end method

.method private genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    if-eqz p2, :cond_7

    .line 122
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 124
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 129
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 130
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 135
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 136
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    if-eqz p1, :cond_2

    .line 138
    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v3, v2, 0x1

    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 142
    const-string v3, "&"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_4
    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 152
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 157
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 163
    iget v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    const-string v1, "Accept-Charset"

    iget-object v2, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 171
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    return-object v0
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 112
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x190

    const/4 v4, 0x0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 44
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 47
    if-eq v1, v3, :cond_1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_1

    .line 48
    new-instance v0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-direct {v0, p0, v1, v4, v4}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    .line 62
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    if-ne v3, v1, :cond_2

    .line 54
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 55
    :goto_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 57
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_3
    new-instance v0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v4}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    goto :goto_0
.end method

.method public doPost(Ljava/lang/String;)Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x0

    .line 73
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    .line 77
    :cond_0
    iget-object v1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    const-string v2, "Content-Length"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 84
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {v3, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 88
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 89
    if-eq v2, v5, :cond_1

    const/16 v0, 0x12c

    if-le v2, v0, :cond_1

    .line 90
    new-instance v0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-direct {v0, p0, v2, v4, v4}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    .line 104
    :goto_0
    return-object v0

    .line 93
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    if-ne v5, v2, :cond_2

    .line 96
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 98
    :goto_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 99
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_3
    new-instance v0, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1, v4}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    goto :goto_0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    return v0
.end method

.method public getHeaderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParmsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    .line 189
    return-void
.end method

.method public setHeaderMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    .line 221
    return-void
.end method

.method public setParmsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    .line 229
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setProxyPort(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    .line 205
    return-void
.end method
