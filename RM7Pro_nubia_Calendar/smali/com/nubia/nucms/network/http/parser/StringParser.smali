.class public Lcom/nubia/nucms/network/http/parser/StringParser;
.super Lcom/nubia/nucms/network/http/parser/DataParser;
.source "StringParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nubia/nucms/network/http/parser/DataParser",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/nubia/nucms/network/http/parser/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nubia/nucms/network/http/parser/StringParser;->parseNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNetStream(Ljava/io/InputStream;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "len"    # J
    .param p4, "charSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .local v2, "swapStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget v3, p0, Lcom/nubia/nucms/network/http/parser/StringParser;->buffSize:I

    new-array v0, v3, [B

    .line 18
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 19
    .local v1, "l":I
    :goto_0
    iget-object v3, p0, Lcom/nubia/nucms/network/http/parser/StringParser;->request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;->isCancelledOrInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 20
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21
    iget-wide v4, p0, Lcom/nubia/nucms/network/http/parser/StringParser;->readLength:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nubia/nucms/network/http/parser/StringParser;->readLength:J

    .line 22
    iget-wide v4, p0, Lcom/nubia/nucms/network/http/parser/StringParser;->readLength:J

    invoke-virtual {p0, p2, p3, v4, v5}, Lcom/nubia/nucms/network/http/parser/StringParser;->notifyReading(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    .end local v0    # "buff":[B
    .end local v1    # "l":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v3

    .line 24
    .restart local v0    # "buff":[B
    .restart local v1    # "l":I
    :cond_0
    :try_start_1
    invoke-virtual {v2, p4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nubia/nucms/network/http/parser/StringParser;->translateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 24
    return-object v3
.end method

.method protected translateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 38
    return-object p1
.end method
