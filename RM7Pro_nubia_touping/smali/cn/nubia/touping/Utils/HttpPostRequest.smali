.class public Lcn/nubia/touping/Utils/HttpPostRequest;
.super Ljava/lang/Object;
.source "HttpPostRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpPostRequest"

.field private static final timeOutTime:I = 0x1388

.field private static final urlForLeborMorrira2PC:Ljava/lang/String; = "http://userapi.hpplay.cn/user/user-server/api/v1/user/queryUserEvent/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dealResponseResult(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 122
    .local v4, "resultData":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 124
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 126
    .local v3, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 127
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "resultData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 133
    .restart local v4    # "resultData":Ljava/lang/String;
    return-object v4
.end method

.method public static getDataByLeBoGet(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/TouPCUtils/NubiaIdentityImpl;->getUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "udid":Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://userapi.hpplay.cn/user/user-server/api/v1/user/queryUserEvent/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 73
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    const/16 v9, 0x1388

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 75
    const/16 v9, 0x1388

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 80
    .local v4, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 81
    .local v0, "b":[B
    const/4 v5, 0x0

    .line 82
    .local v5, "len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 84
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "b":[B
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v7    # "udid":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    return-object v6

    .line 86
    .restart local v0    # "b":[B
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "udid":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v6, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    .local v6, "result":Ljava/lang/String;
    const-string v9, "HttpPostRequest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getLeboVip(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/Utils/HttpPostRequest$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/Utils/HttpPostRequest$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method public static getLeboVip(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qrString"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/touping/Utils/HttpPostRequest$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/touping/Utils/HttpPostRequest$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method private static getRequestData(Ljava/util/Map;)Ljava/lang/StringBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "="

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "&"

    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
