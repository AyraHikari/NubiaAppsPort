.class final Lokhttp3/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    .line 114
    new-instance v0, Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    .line 116
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 250
    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_GOAWAY length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 251
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 252
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 253
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    .line 254
    .local v0, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-nez v0, :cond_1

    .line 255
    const-string v3, "TYPE_GOAWAY unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 257
    :cond_1
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, v2, v0, v3}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 258
    return-void
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 227
    .local v7, "w1":I
    const v0, 0x7fffffff

    and-int v3, v7, v0

    .line 228
    .local v3, "streamId":I
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 229
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 230
    return-void
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 6
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 243
    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_PING length: %d != 4"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 244
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 245
    .local v1, "id":I
    iget-boolean v4, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v0, :cond_1

    move v3, v0

    :goto_0
    if-ne v4, v3, :cond_2

    .line 246
    .local v0, "ack":Z
    :goto_1
    invoke-interface {p1, v0, v1, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 247
    return-void

    .end local v0    # "ack":Z
    :cond_1
    move v3, v2

    .line 245
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 7
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    const/16 v3, 0x8

    if-eq p3, v3, :cond_0

    const-string v3, "TYPE_RST_STREAM length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 216
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 217
    .local v2, "streamId":I
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 218
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    .line 219
    .local v0, "errorCode":Lokhttp3/internal/framed/ErrorCode;
    if-nez v0, :cond_1

    .line 220
    const-string v3, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 222
    :cond_1
    invoke-interface {p1, v2, v0}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    .line 223
    return-void
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 12
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 261
    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 262
    .local v4, "numberOfEntries":I
    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v9, v9, 0x4

    if-eq p3, v9, :cond_0

    .line 263
    const-string v9, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 265
    :cond_0
    new-instance v5, Lokhttp3/internal/framed/Settings;

    invoke-direct {v5}, Lokhttp3/internal/framed/Settings;-><init>()V

    .line 266
    .local v5, "settings":Lokhttp3/internal/framed/Settings;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 267
    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 268
    .local v7, "w1":I
    iget-object v9, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readInt()I

    move-result v6

    .line 269
    .local v6, "value":I
    const/high16 v9, -0x1000000

    and-int/2addr v9, v7

    ushr-int/lit8 v3, v9, 0x18

    .line 270
    .local v3, "idFlags":I
    const v9, 0xffffff

    and-int v2, v7, v9

    .line 271
    .local v2, "id":I
    invoke-virtual {v5, v2, v3, v6}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "id":I
    .end local v3    # "idFlags":I
    .end local v6    # "value":I
    .end local v7    # "w1":I
    :cond_1
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_2

    .line 274
    .local v0, "clearPrevious":Z
    :goto_1
    invoke-interface {p1, v0, v5}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    .line 275
    return-void

    .end local v0    # "clearPrevious":Z
    :cond_2
    move v0, v8

    .line 273
    goto :goto_1
.end method

.method private readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 8
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 208
    .local v7, "w1":I
    const v0, 0x7fffffff

    and-int v3, v7, v0

    .line 209
    .local v3, "streamId":I
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0x4

    invoke-virtual {v0, v4}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 210
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 211
    .local v2, "inFinished":Z
    :goto_0
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 212
    return-void

    .end local v2    # "inFinished":Z
    :cond_0
    move v2, v1

    .line 210
    goto :goto_0
.end method

.method private readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v9, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 193
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 194
    .local v7, "w1":I
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v8

    .line 195
    .local v8, "w2":I
    and-int v3, v7, v9

    .line 196
    .local v3, "streamId":I
    and-int v4, v8, v9

    .line 197
    .local v4, "associatedStreamId":I
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    .line 198
    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v9, p3, -0xa

    invoke-virtual {v6, v9}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lokhttp3/internal/framed/Header;>;"
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    move v2, v1

    .line 201
    .local v2, "inFinished":Z
    :goto_0
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_1

    .line 202
    .local v1, "outFinished":Z
    :goto_1
    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    .line 204
    return-void

    .end local v1    # "outFinished":Z
    .end local v2    # "inFinished":Z
    :cond_0
    move v2, v0

    .line 200
    goto :goto_0

    .restart local v2    # "inFinished":Z
    :cond_1
    move v1, v0

    .line 201
    goto :goto_1
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .locals 10
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    const/16 v5, 0x8

    if-eq p3, v5, :cond_0

    const-string v5, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 234
    :cond_0
    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 235
    .local v3, "w1":I
    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 236
    .local v4, "w2":I
    and-int v2, v3, v6

    .line 237
    .local v2, "streamId":I
    and-int v5, v4, v6

    int-to-long v0, v5

    .line 238
    .local v0, "increment":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    const-string v5, "windowSizeIncrement was 0"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 239
    :cond_1
    invoke-interface {p1, v2, v0, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 240
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->close()V

    .line 283
    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .locals 14
    .param p1, "handler"    # Lokhttp3/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 129
    :try_start_0
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v11}, Lokio/BufferedSource;->readInt()I

    move-result v8

    .line 130
    .local v8, "w1":I
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v11}, Lokio/BufferedSource;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 135
    .local v9, "w2":I
    const/high16 v11, -0x80000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_0

    move v0, v10

    .line 136
    .local v0, "control":Z
    :goto_0
    const/high16 v11, -0x1000000

    and-int/2addr v11, v9

    ushr-int/lit8 v2, v11, 0x18

    .line 137
    .local v2, "flags":I
    const v11, 0xffffff

    and-int v4, v9, v11

    .line 139
    .local v4, "length":I
    if-eqz v0, :cond_2

    .line 140
    const/high16 v11, 0x7fff0000

    and-int/2addr v11, v8

    ushr-int/lit8 v7, v11, 0x10

    .line 141
    .local v7, "version":I
    const v11, 0xffff

    and-int v6, v8, v11

    .line 143
    .local v6, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_1

    .line 144
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "version != 3: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 131
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v4    # "length":I
    .end local v6    # "type":I
    .end local v7    # "version":I
    .end local v8    # "w1":I
    .end local v9    # "w2":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v10, v3

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v10

    .restart local v8    # "w1":I
    .restart local v9    # "w2":I
    :cond_0
    move v0, v3

    .line 135
    goto :goto_0

    .line 147
    .restart local v0    # "control":Z
    .restart local v2    # "flags":I
    .restart local v4    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "version":I
    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 181
    :pswitch_0
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v12, v4

    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->skip(J)V

    goto :goto_1

    .line 149
    :pswitch_1
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 157
    :pswitch_3
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 161
    :pswitch_4
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 165
    :pswitch_5
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 169
    :pswitch_6
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 173
    :pswitch_7
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 177
    :pswitch_8
    invoke-direct {p0, p1, v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_1

    .line 185
    .end local v6    # "type":I
    .end local v7    # "version":I
    :cond_2
    const v11, 0x7fffffff

    and-int v5, v8, v11

    .line 186
    .local v5, "streamId":I
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_3

    move v3, v10

    .line 187
    .local v3, "inFinished":Z
    :cond_3
    iget-object v11, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v3, v5, v11, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    goto :goto_1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
