.class public Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;
.super Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;
.source "NuCmsInputStreamBody.java"


# instance fields
.field protected instream:Ljava/io/InputStream;

.field protected length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 19
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;J)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 1
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "length"    # J

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nubia/nucms/network/http/body/NuCmsHttpBody;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    .line 24
    if-eqz p2, :cond_0

    .end local p2    # "contentType":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->contentType:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->length:J

    .line 26
    return-void

    .line 24
    .restart local p2    # "contentType":Ljava/lang/String;
    :cond_0
    const-string p2, "application/octet-stream"

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->length:J

    return-wide v0
.end method

.method public getInstream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStreamBody{instream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, -0x1

    .line 39
    iget-object v4, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    if-nez v4, :cond_0

    .line 66
    :goto_0
    return-void

    .line 43
    :cond_0
    const/16 v4, 0x1000

    :try_start_0
    new-array v0, v4, [B

    .line 45
    .local v0, "buffer":[B
    iget-wide v4, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->length:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_1

    .line 47
    :goto_1
    iget-object v4, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-eq v1, v8, :cond_2

    .line 48
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 64
    .end local v0    # "buffer":[B
    .end local v1    # "l":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v4

    .line 52
    .restart local v0    # "buffer":[B
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->length:J

    .line 53
    .local v2, "remaining":J
    :goto_2
    cmp-long v4, v2, v10

    if-lez v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 55
    .restart local v1    # "l":I
    if-ne v1, v8, :cond_3

    .line 62
    .end local v1    # "l":I
    .end local v2    # "remaining":J
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    iget-object v4, p0, Lcom/nubia/nucms/network/http/body/NuCmsInputStreamBody;->instream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 58
    .restart local v1    # "l":I
    .restart local v2    # "remaining":J
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_2
.end method
