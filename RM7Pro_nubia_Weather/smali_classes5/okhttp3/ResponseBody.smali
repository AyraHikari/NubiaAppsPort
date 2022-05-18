.class public abstract Lokhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 159
    .local v0, "contentType":Lokhttp3/MediaType;
    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;
    .locals 3
    .param p0, "contentType"    # Lokhttp3/MediaType;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lokio/BufferedSource;

    .prologue
    .line 192
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Lokhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/ResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V

    return-object v0
.end method

.method public static create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lokhttp3/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 172
    .local v1, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset=utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    .line 179
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, p1, v1}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 180
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static create(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;
    .locals 4
    .param p0, "contentType"    # Lokhttp3/MediaType;
    .param p1, "content"    # [B

    .prologue
    .line 185
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    .line 186
    .local v0, "buffer":Lokio/Buffer;
    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 121
    .local v2, "contentLength":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 122
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot buffer entire body for content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_0
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 128
    .local v1, "source":Lokio/BufferedSource;
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 130
    .local v0, "bytes":[B
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 133
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content-Length and stream length disagree"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 135
    .restart local v0    # "bytes":[B
    :cond_1
    return-object v0
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    .line 145
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_0

    .end local v0    # "r":Ljava/io/Reader;
    :goto_0
    return-object v0

    .restart local v0    # "r":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0    # "r":Ljava/io/Reader;
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/MediaType;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
