.class public Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# static fields
.field private static final httpCode3XXs:[Ljava/lang/String;

.field private static final httpCode4XXs:[Ljava/lang/String;

.field private static final httpCode5XXs:[Ljava/lang/String;


# instance fields
.field private mCode:I

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mIn:Ljava/io/InputStream;

.field private mStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u591a\u9009\u9879"

    aput-object v1, v0, v3

    const-string v1, "\u6c38\u4e45\u79fb\u52a8"

    aput-object v1, v0, v4

    const-string v1, "\u4e34\u65f6\u79fb\u52a8"

    aput-object v1, v0, v5

    const-string v1, "\u53c2\u89c1\u5176\u4ed6"

    aput-object v1, v0, v6

    const-string v1, "\u672a\u6539\u52a8"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u4f7f\u7528\u4ee3\u7406"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6682\u65f6\u91cd\u5b9a\u5411"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode3XXs:[Ljava/lang/String;

    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9519\u8bef\u8bf7\u6c42"

    aput-object v1, v0, v3

    const-string v1, "\u672a\u6388\u6743"

    aput-object v1, v0, v4

    const-string v1, "\u8981\u6c42\u4ed8\u8d39"

    aput-object v1, v0, v5

    const-string v1, "\u7981\u6b62"

    aput-object v1, v0, v6

    const-string v1, "\u672a\u627e\u5230"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u4e0d\u5141\u8bb8\u7684\u65b9\u6cd5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e0d\u88ab\u91c7\u7eb3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8981\u6c42\u4ee3\u7406\u6388\u6743"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u51b2\u7a81"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8fc7\u671f\u7684"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u8981\u6c42\u7684\u957f\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u524d\u63d0\u4e0d\u6210\u7acb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u8bf7\u6c42\u5b9e\u4f8b\u592a\u5927"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u8bf7\u6c42URI\u592a\u5927"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u4e0d\u652f\u6301\u7684\u5a92\u4f53\u7c7b\u578b"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u65e0\u6cd5\u6ee1\u8db3\u7684\u8bf7\u6c42\u8303\u56f4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5931\u8d25\u7684\u9884\u671f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode4XXs:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5185\u90e8\u670d\u52a1\u5668\u9519\u8bef"

    aput-object v1, v0, v3

    const-string v1, "\u672a\u88ab\u4f7f\u7528"

    aput-object v1, v0, v4

    const-string v1, "\u7f51\u5173\u9519\u8bef"

    aput-object v1, v0, v5

    const-string v1, "\u4e0d\u53ef\u7528\u7684\u670d\u52a1"

    aput-object v1, v0, v6

    const-string v1, "\u7f51\u5173\u8d85\u65f6"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "HTTP\u7248\u672c\u672a\u88ab\u652f\u6301"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode5XXs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    .line 37
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mCode:I

    .line 38
    return-void
.end method

.method public static getMsgByErrorCode(I)Ljava/lang/String;
    .locals 6
    .param p0, "statusCode"    # I

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, 0x190

    .line 46
    const-string v1, ""

    .line 47
    .local v1, "resultMsg":Ljava/lang/String;
    const/16 v2, 0x12c

    if-gt v2, p0, :cond_0

    if-ge p0, v4, :cond_0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u5b9a\u5411:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    add-int/lit16 v0, p0, -0x12c

    .line 50
    .local v0, "code":I
    sget-object v2, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode3XXs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode3XXs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .end local v0    # "code":I
    :cond_0
    if-gt v4, p0, :cond_2

    if-ge p0, v5, :cond_2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5ba2\u6237\u7aef\u9519\u8bef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    add-int/lit16 v0, p0, -0x190

    .line 57
    .restart local v0    # "code":I
    sget-object v2, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode4XXs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode4XXs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .end local v0    # "code":I
    :cond_1
    :goto_0
    return-object v1

    .line 60
    :cond_2
    if-gt v5, p0, :cond_1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u9519\u8bef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    add-int/lit16 v0, p0, -0x1f4

    .line 63
    .restart local v0    # "code":I
    sget-object v2, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode5XXs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->httpCode5XXs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mIn:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 132
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_0
    return-void
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mCode:I

    return v0
.end method

.method public getHttpResponse()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mIn:Ljava/io/InputStream;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mIn:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mIn:Ljava/io/InputStream;

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 110
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v3

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 88
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "contentEncoding":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, v0}, Lcom/huanju/ssp/base/utils/Utils;->decodeInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/Utils;->parseInputString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;->mStr:Ljava/lang/String;

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
