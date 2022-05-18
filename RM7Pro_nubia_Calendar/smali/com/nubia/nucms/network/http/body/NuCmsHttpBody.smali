.class public abstract Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
.super Ljava/lang/Object;
.source "NuCmsHttpBody.java"


# static fields
.field public static final OUTPUT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected contentEncoding:Ljava/lang/String;

.field protected contentType:Ljava/lang/String;

.field protected httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

.field protected request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getContentLength()J
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    return-object v0
.end method

.method public getRequest()Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    return-object v0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->contentEncoding:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->contentType:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public setHttpListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)V
    .locals 0
    .param p1, "httpListener"    # Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->httpListener:Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    .line 45
    return-void
.end method

.method public setRequest(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    .line 53
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->getHttpListener()Lcom/nubia/nucms/network/frame/NuCmsNetListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;->setHttpListener(Lcom/nubia/nucms/network/frame/NuCmsNetListener;)V

    .line 54
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
