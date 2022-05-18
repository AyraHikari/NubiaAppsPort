.class public Lcn/nubia/upgrade/util/encode/HttpRequestor;
.super Ljava/lang/Object;
.source "HttpRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/util/encode/HttpRequestor$1;,
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

    .line 237
    return-void
.end method

.method private genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "isGet"    # Z
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
    .line 126
    .local p2, "parmsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v4, "parameterBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    .line 128
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 135
    .local v5, "value":Ljava/lang/Object;
    instance-of v8, v5, Ljava/util/Collection;

    if-eqz v8, :cond_1

    .line 136
    check-cast v5, Ljava/util/Collection;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 139
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 140
    check-cast v5, [Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    .line 141
    .local v6, "valueArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 142
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "valueItem":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 144
    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v8, v1, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 148
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v1    # "i":I
    .end local v6    # "valueArray":[Ljava/lang/Object;
    .end local v7    # "valueItem":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 158
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 163
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "localURL":Ljava/net/URL;
    invoke-direct {p0, v3}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 169
    .local v1, "httpURLConnection":Ljava/net/HttpURLConnection;
    iget v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 171
    const-string v4, "Accept-Charset"

    iget-object v5, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v1
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 6
    .param p1, "localURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 116
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 118
    .local v1, "proxy":Ljava/net/Proxy;
    invoke-virtual {p1, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .line 122
    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v0, "connection":Ljava/net/URLConnection;
    :goto_0
    return-object v0

    .line 120
    .end local v0    # "connection":Ljava/net/URLConnection;
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .restart local v0    # "connection":Ljava/net/URLConnection;
    goto :goto_0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x190

    const/4 v10, 0x0

    .line 41
    const/4 v8, 0x1

    iget-object v9, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    invoke-direct {p0, v8, v9}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "parameterStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 47
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 50
    .local v6, "statuCode":I
    if-eq v6, v11, :cond_1

    const/16 v8, 0x12c

    if-le v6, v8, :cond_1

    .line 51
    new-instance v8, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-direct {v8, p0, v6, v10, v10}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    .line 65
    :goto_0
    return-object v8

    .line 54
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v5, "resultBuffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 56
    .local v7, "tempLine":Ljava/lang/String;
    if-ne v11, v6, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 58
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 56
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    .line 65
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    new-instance v8, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v6, v9, v10}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    goto :goto_0
.end method

.method public doPost(Ljava/lang/String;)Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v10, 0x0

    iget-object v11, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    invoke-direct {p0, v10, v11}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "parameterStr":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    if-nez v10, :cond_0

    .line 81
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v10, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    const-string v11, "Content-Length"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/upgrade/util/encode/HttpRequestor;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 86
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 87
    const-string v10, "POST"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 90
    .local v3, "outputStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .local v4, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 95
    .local v8, "statuCode":I
    const/16 v10, 0x190

    if-eq v8, v10, :cond_1

    const/16 v10, 0x12c

    if-le v8, v10, :cond_1

    .line 96
    new-instance v10, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, p0, v8, v11, v12}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    .line 110
    :goto_0
    return-object v10

    .line 99
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v7, "resultBuffer":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 101
    .local v9, "tempLine":Ljava/lang/String;
    const/16 v10, 0x190

    if-ne v10, v8, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 104
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 107
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 101
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    .line 110
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_3
    new-instance v10, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, p0, v8, v11, v12}, Lcn/nubia/upgrade/util/encode/HttpRequestor$HttpRequestorResult;-><init>(Lcn/nubia/upgrade/util/encode/HttpRequestor;ILjava/lang/String;Lcn/nubia/upgrade/util/encode/HttpRequestor$1;)V

    goto :goto_0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 190
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
    .line 222
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
    .line 230
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->charset:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 194
    iput p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->connectTimeout:I

    .line 195
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
    .line 226
    .local p1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->headerMap:Ljava/util/Map;

    .line 227
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
    .line 234
    .local p1, "parmsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->parmsMap:Ljava/util/Map;

    .line 235
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyHost:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setProxyPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "proxyPort"    # Ljava/lang/Integer;

    .prologue
    .line 210
    iput-object p1, p0, Lcn/nubia/upgrade/util/encode/HttpRequestor;->proxyPort:Ljava/lang/Integer;

    .line 211
    return-void
.end method
