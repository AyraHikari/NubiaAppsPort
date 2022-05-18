.class public Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/SNPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeuralNetworkBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;
    }
.end annotation


# instance fields
.field private mDlCachePath:Ljava/lang/String;

.field private mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field private final mInputDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsCpuFallbackEnabled:Z

.field private mIsDLCacheAvailable:Z

.field private mIsDebugEnabled:Z

.field private mIsInitCacheEnabled:Z

.field private mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

.field private mModelFile:Ljava/io/File;

.field private final mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field private mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field private mStorageDirectory:Ljava/lang/String;

.field private mUseUserSuppliedBuffers:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    sget-object v2, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->access$000(Landroid/app/Application;)V

    return-void
.end method

.method private handleDLCaching()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snpe-android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private resetFileModel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    return-void
.end method

.method private resetModel()V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetFileModel()V

    return-void
.end method

.method private resetStreamModel()V
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    :cond_0
    return-void
.end method

.method private selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 5

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->RUNTIME_TARGET_NOT_SUPPORTED_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public build()Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 15

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->handleDLCaching()V

    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    iget-object v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-boolean v10, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    iget-boolean v11, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    iget-object v12, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    iget-object v13, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    iget-object v14, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    iget-object v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-boolean v10, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    iget-boolean v11, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDLCacheAvailable:Z

    iget-object v12, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    iget-object v13, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    iget-object v14, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;-><init>()V

    throw v0
.end method

.method public isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .locals 0

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result p1

    return p1
.end method

.method public setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    return-object p0
.end method

.method public setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    return-object p0
.end method

.method public setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->EXECUTION_PRIORITY_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setInitCacheEnabled(ZLjava/lang/String;Landroid/content/Context;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".dlc"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mDlCachePath:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsInitCacheEnabled:Z

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->CONTEXT_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->CACHE_TAG_EMPTY_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object p2, Lcom/qualcomm/qti/snpe/SnpeError$Error;->CACHE_TAG_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setInputDimensions(Ljava/util/Map;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->INPUT_DIMEN_NULL_OR_EMPTY_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->FILE_READ_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->FILE_EXISTENCE_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->MODEL_FILE_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    invoke-static {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/IOUtil;->bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    return-object p0
.end method

.method public varargs setOutputLayers([Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->OUTPUT_LAYER_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setPerformanceProfile(Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->PERFORMANCE_PROFILE_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public varargs setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->RUNTIME_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1

    :cond_1
    array-length v0, p1

    new-array v0, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->RUNTIME_ORDER_NULL_OR_EMPTY_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIllegalError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$IllegalArgsOrStateException;

    move-result-object p1

    throw p1
.end method

.method public setStorageDirectory(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mStorageDirectory:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->FILE_WRITE_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->FILE_READ_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->NOT_A_DIRECTORY_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v1, Lcom/qualcomm/qti/snpe/SnpeError$Error;->DIRECTORY_EXISTENCE_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->DIRECTORY_PATH_EMPTY_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {}, Lcom/qualcomm/qti/snpe/SnpeError;->getInstance()Lcom/qualcomm/qti/snpe/SnpeError;

    move-result-object p1

    sget-object v0, Lcom/qualcomm/qti/snpe/SnpeError$Error;->DIRECTORY_PATH_NULL_ERROR:Lcom/qualcomm/qti/snpe/SnpeError$Error;

    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/SnpeError;->getIOError(Lcom/qualcomm/qti/snpe/SnpeError$Error;)Lcom/qualcomm/qti/snpe/SnpeError$SnpeIOException;

    move-result-object p1

    throw p1
.end method

.method public setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    return-object p0
.end method
