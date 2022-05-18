.class final Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;
.super Lcom/qualcomm/qti/snpe/FloatTensor;
.source ""


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mFloatBufferView:Ljava/nio/FloatBuffer;

.field private mNativeHandle:J


# direct methods
.method constructor <init>([I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/FloatTensor;-><init>([I)V

    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    invoke-static {v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeInit(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->sizeOf([I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    return-void

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->TENSOR_CREATION_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1
.end method

.method private doRelease()V
    .locals 5

    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeRelease(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private native nativeInit(Ljava/nio/ByteBuffer;I)J
.end method

.method private native nativeRelease(J)V
.end method

.method private static writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V
    .locals 3

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V

    return-void
.end method

.method getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public varargs read([I)F
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p1

    return p1
.end method

.method public varargs read([FII[I)I
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p4, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p1, p2, p3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    return p3
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->TENSOR_RELEASE_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

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

.method public varargs write(F[I)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public varargs write([FII[I)V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p4, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method
