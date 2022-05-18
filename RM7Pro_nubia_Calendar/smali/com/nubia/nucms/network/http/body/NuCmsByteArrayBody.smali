.class public Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;
.super Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
.source "NuCmsByteArrayBody.java"


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 14
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0}, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->bytes:[B

    .line 19
    iput-object p2, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->contentType:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->bytes:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteArrayBody{bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->bytes:[B

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
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
    .line 30
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsByteArrayBody;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 31
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 32
    return-void
.end method
