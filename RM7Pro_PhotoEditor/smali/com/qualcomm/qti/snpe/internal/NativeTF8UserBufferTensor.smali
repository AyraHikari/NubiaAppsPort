.class final Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;
.super Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.source ""

# interfaces
.implements Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;


# static fields
.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mNativeHandle:J

.field private mQuantizedStepSize:F

.field private mStepExactly0:I


# direct methods
.method constructor <init>(I[IIFLjava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;-><init>(I[I)V

    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    invoke-virtual {p0, p4}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    iput-object p5, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    invoke-virtual {v0, p3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    invoke-virtual {v0, p4}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeFloat(F)V

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-direct {p0, p1, p2, p5}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->TENSOR_CREATION_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->BYTE_BUFFER_ORDER_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->BYTE_BUFFER_DIRECT_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method private doRelease()V
    .locals 5

    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeRelease(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    goto :goto_0

    :catch_0
    move-exception v0

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

.method private native nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method asDirectByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public getQuantizedStepSize()F
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    return v0
.end method

.method public getStepExactly0()I
    .locals 1

    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    return v0
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->USER_BUFFER_RELEASE_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuantizedStepSize(F)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    return-void
.end method

.method public setStepExactly0(I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    return-void
.end method
