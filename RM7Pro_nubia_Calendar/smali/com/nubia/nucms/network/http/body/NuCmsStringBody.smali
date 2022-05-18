.class public Lcom/nubia/nucms/network/http/body/NuCmsStringBody;
.super Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
.source "NuCmsStringBody.java"


# instance fields
.field protected charset:Ljava/lang/String;

.field protected content:[B

.field protected mimeType:Ljava/lang/String;

.field protected string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v0}, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;-><init>()V

    .line 22
    if-nez p2, :cond_0

    .line 23
    const-string p2, "text/plain"

    .line 25
    :cond_0
    if-nez p3, :cond_1

    .line 26
    const-string p3, "UTF-8"

    .line 28
    :cond_1
    iput-object p3, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->charset:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->string:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->mimeType:Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->content:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->contentType:Ljava/lang/String;

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->content:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringBody{charset=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", string=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsStringBody;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 48
    return-void
.end method
