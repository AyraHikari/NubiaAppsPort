.class public Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
.super Ljava/lang/Object;
.source "NuCmsHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected charSet:Ljava/lang/String;

.field protected contentEncoding:Ljava/lang/String;

.field protected contentLength:J

.field protected contentType:Ljava/lang/String;

.field protected exception:Lcom/nubia/nucms/network/exception/NuCmsHttpException;

.field protected headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

.field protected isCacheHit:Z

.field protected readedLength:J

.field protected redirectTimes:I

.field protected request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected retryTimes:I

.field protected tag:Ljava/lang/Object;

.field protected useTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->charSet:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 32
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->exception:Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    return-object v0
.end method

.method public getReadedLength()J
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->readedLength:J

    return-wide v0
.end method

.method public getRedirectTimes()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->redirectTimes:I

    return v0
.end method

.method public getRequest()Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>()TR;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getDataParser()Lcom/nubia/nucms/network/http/parser/DataParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/parser/DataParser;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->retryTimes:I

    return v0
.end method

.method public getUseTime()J
    .locals 2

    .prologue
    .line 120
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->useTime:J

    return-wide v0
.end method

.method public isConnectSuccess()Z
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "^_^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "____________________________ nucms http response info start ____________________________"

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n status         : "

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n url            : "

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n charSet        : "

    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->charSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n useTime        : "

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->useTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n retryTimes     : "

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->retryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n redirectTimes  : "

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->redirectTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n readedLength   : "

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->readedLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n contentLength  : "

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentLength:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n contentEncoding: "

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n contentType    : "

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n tag            : "

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n header         "

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->headers:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 166
    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    const-string v2, "\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n exception      : "

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->exception:Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n."

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n _________________ data-start _________________\n"

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n _________________ data-over _________________\n"

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "____________________________ nucms http response info end ____________________________"

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/network/http/params/NameValuePair;

    .line 169
    .local v0, "nv":Lcom/nubia/nucms/network/http/params/NameValuePair;
    const-string v3, "\n|    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 47
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->charSet:Ljava/lang/String;

    .line 50
    :cond_0
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentEncoding:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setContentLength(J)J
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 65
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-wide p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentLength:J

    .line 66
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentLength:J

    return-wide v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->contentType:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setException(Lcom/nubia/nucms/network/exception/NuCmsHttpException;)V
    .locals 0
    .param p1, "e"    # Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    .prologue
    .line 39
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->exception:Lcom/nubia/nucms/network/exception/NuCmsHttpException;

    .line 40
    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    .local p1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->headers:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public setHttpStatus(Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;)V
    .locals 0
    .param p1, "httpStatus"    # Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    .prologue
    .line 92
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->httpStatus:Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    .line 93
    return-void
.end method

.method public setReadedLength(J)V
    .locals 1
    .param p1, "readedLength"    # J

    .prologue
    .line 116
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-wide p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->readedLength:J

    .line 117
    return-void
.end method

.method public setRedirectTimes(I)V
    .locals 0
    .param p1, "redirectTimes"    # I

    .prologue
    .line 108
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->redirectTimes:I

    .line 109
    return-void
.end method

.method public setRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<TT;>;>(TR;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "TR;"
    iput-object p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 142
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 100
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->retryTimes:I

    .line 101
    return-void
.end method

.method public setUseTime(J)V
    .locals 1
    .param p1, "useTime"    # J

    .prologue
    .line 124
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    iput-wide p1, p0, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->useTime:J

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<TT;>;"
    invoke-virtual {p0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->resToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
