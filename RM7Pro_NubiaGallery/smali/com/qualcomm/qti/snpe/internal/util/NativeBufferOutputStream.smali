.class public Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
.super Ljava/lang/Object;
.source "NativeBufferOutputStream.java"


# instance fields
.field private final mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeAllocateBuffer(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->BUFFER_STREAM_INVALID_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public static allocate(J)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .locals 1

    .line 16
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;-><init>(J)V

    return-object v0
.end method

.method private native nativeAllocateBuffer(J)J
.end method

.method private native nativeAsBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeWrite(JLjava/nio/ByteBuffer;I)J
.end method


# virtual methods
.method asBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeAsBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object v0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->release()V

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNativeAddress()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeRelease(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)J
    .locals 3

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->mNativeHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->nativeWrite(JLjava/nio/ByteBuffer;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 37
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1

    .line 31
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->BUFFER_SOURCE_NOT_DIRECT_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method
