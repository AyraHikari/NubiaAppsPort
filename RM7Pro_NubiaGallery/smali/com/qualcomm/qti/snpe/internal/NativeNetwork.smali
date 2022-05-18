.class public final Lcom/qualcomm/qti/snpe/internal/NativeNetwork;
.super Ljava/lang/Object;
.source "NativeNetwork.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/NeuralNetwork;


# static fields
.field private static final mRuntimeAvailability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mIsDebugEnabled:Z

.field private mModelVersion:Ljava/lang/String;

.field private mNativeHandle:J

.field private mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 74
    invoke-static/range {v2 .. v13}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 81
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->getNativeAddress()J

    move-result-wide v5

    .line 82
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    .line 81
    invoke-direct {p0, v5, v6, v2, v7}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    if-eqz v0, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network initialization took "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snpe-android"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, p1

    move-object/from16 v3, p3

    .line 92
    invoke-direct {p0, p1, v3, v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    return-void

    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 123
    invoke-static/range {v2 .. v13}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 130
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 130
    invoke-direct {p0, v5, v2, v6}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    if-eqz v0, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network initialization took "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "snpe-android"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, p1

    move-object/from16 v3, p3

    .line 141
    invoke-direct {p0, p1, v3, v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    return-void

    :catch_0
    move-exception v0

    .line 133
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object v0

    throw v0
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 472
    instance-of v0, p2, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v0

    .line 481
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->assertShape(Ljava/lang/String;[I[I)V

    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_INPUT_NETWORK_TENSORS:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 473
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_INSTANCE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 469
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_NULL:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 489
    instance-of p2, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-eqz p2, :cond_1

    .line 493
    iget-object p2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_INPUT_NETWORK_TENSORS:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 490
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_INSTANCE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 486
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_NULL:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1
.end method

.method private assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 503
    instance-of p2, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-eqz p2, :cond_1

    .line 507
    iget-object p2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_OUTPUT_NETWORK_TENSORS:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 504
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_OUTPUT_INSTANCE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 500
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_TENSOR_NULL:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p2, v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1
.end method

.method private static assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p0

    sget-object p1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_SELECTED_LAYER:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private static createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 370
    iget p0, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 371
    iget p0, p3, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 372
    iget p0, p4, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 373
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeStrings(Ljava/util/Collection;)V

    .line 374
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 375
    invoke-virtual {v0, p5}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 376
    invoke-virtual {v0, p6}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 377
    invoke-virtual {v0, p7}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 378
    invoke-virtual {v0, p8}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 379
    invoke-virtual {v0, p9}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p10}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 381
    invoke-interface {p11}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 382
    invoke-interface {p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 384
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doRelease()V
    .locals 5

    .line 328
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 330
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeRelease(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
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

.method private init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 99
    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    .line 104
    invoke-static {v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    .line 105
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 106
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 107
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 108
    iput-boolean p3, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    .line 111
    iget-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V

    return-void

    :catch_0
    move-exception p1

    .line 101
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1
.end method

.method public static declared-synchronized isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .locals 3

    const-class v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iget v2, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-static {v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeIsRuntimeAvailable(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    :try_start_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private native nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J
.end method

.method private native nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nativeIsRuntimeAvailable(I)Z
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private static readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 341
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;

    move-result-object v3

    .line 394
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    .line 410
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 417
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, p1, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .line 400
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v1

    .line 402
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloatArray()[F

    move-result-object p1

    .line 403
    new-instance v2, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {v2, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    .line 404
    array-length v1, p1

    const/4 v3, 0x0

    new-array v4, v3, [I

    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->write([FII[I)V

    .line 405
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 2

    .line 424
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    if-ne v0, v1, :cond_1

    .line 425
    instance-of v0, p2, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    if-eqz v0, :cond_0

    .line 429
    const-class v0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    .line 430
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    .line 431
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_USER_BUFFER_TENSOR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 438
    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 439
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 440
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {p0, p1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 442
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 449
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 450
    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 453
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    return-object p2
.end method

.method private writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)V"
        }
    .end annotation

    .line 459
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 460
    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 461
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    const-class v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {v2}, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 463
    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;
    .locals 4

    if-eqz p1, :cond_2

    .line 223
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 227
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_SHAPE_DIM:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    .line 232
    :cond_1
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    return-object v0

    .line 224
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_TENSOR_SHAPE_NULL_EMPTY:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
    .locals 7

    if-lez p1, :cond_5

    .line 243
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_STRIDE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_1
    if-ltz p3, :cond_4

    const/16 v0, 0xff

    if-gt p3, v0, :cond_4

    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_3

    if-eqz p5, :cond_2

    .line 261
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;-><init>(I[IIFLjava/nio/ByteBuffer;)V

    return-object v0

    .line 258
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_BUFFER_NULL:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    .line 254
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_STEP_VALUE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    .line 250
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_STEP_ZERO:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    .line 240
    :cond_5
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_BUFFER_SIZE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/Tensor;

    .line 154
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V

    .line 155
    const-class v4, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 165
    :try_start_0
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 166
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/nio/ByteBuffer;

    move-object v1, p0

    .line 165
    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 172
    iget-boolean v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network forward took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snpe-android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1

    .line 148
    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_INPUT_TENSOR_NULL_EMPTY:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 186
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_1

    .line 198
    :cond_1
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 200
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 202
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 207
    :try_start_0
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 214
    iget-boolean v4, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v4, :cond_2

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network forward took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snpe-android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 209
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getSnpeNativeError(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$NativeException;

    move-result-object p1

    throw p1

    .line 187
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_OUTPUT_TENSOR_NULL_EMPTY:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1

    .line 183
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INVALID_INPUT_TENSOR_NULL_EMPTY:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getInvalidInputError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$InvalidInputException;

    move-result-object p1

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 321
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 322
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V

    return-void
.end method

.method public getInputTensorsNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorsShapes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputLayers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    return-object v0
.end method

.method public getOutputTensorsNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorsShapes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object v0
.end method

.method public getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/TensorAttributes;

    return-object p1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/TensorAttributes;

    return-object p1

    .line 291
    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_TENSOR_NAME:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 312
    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 313
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->ILLEGAL_NETWORK_RELEASE:Lcom/qualcomm/qti/snpe/SnpeError$Error;

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
