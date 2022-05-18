.class public final Lcom/qualcomm/qti/snpe/internal/util/IOUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHUNK_SIZE:I = 0x100000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .locals 13

    if-eqz p0, :cond_4

    if-lez p1, :cond_3

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->allocate(J)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-array v3, v3, [B

    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    int-to-long v9, v8

    sub-long v11, v0, v5

    cmp-long v7, v9, v11

    const/4 v9, 0x0

    if-lez v7, :cond_0

    long-to-int v7, v5

    sub-int v7, p1, v7

    invoke-virtual {v4, v3, v9, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->write(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p0

    sget-object p1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->IO_SIZE_MISMATCH_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p0

    sget-object p1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->IO_MODEL_SIZE_INVALID_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p0

    sget-object p1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->IO_STREAM_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p0

    throw p0
.end method
