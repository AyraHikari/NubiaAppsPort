.class public Lu/aly/bi;
.super Ljava/lang/Object;
.source "DeflaterHelper.java"


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lu/aly/bi;->b([B)[B

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lu/aly/bk;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lu/aly/bi;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 47
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 52
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 53
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 55
    const/16 v1, 0x2000

    new-array v3, v1, [B

    .line 56
    sput v4, Lu/aly/bi;->a:I

    .line 59
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 62
    sget v4, Lu/aly/bi;->a:I

    add-int/2addr v4, v0

    sput v4, Lu/aly/bi;->a:I

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    throw v0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 70
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 67
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public static b([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 103
    array-length v2, p0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 104
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 109
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v4

    .line 111
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    add-int/2addr v0, v4

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 116
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method
