.class public interface abstract Lcom/qualcomm/qti/snpe/NeuralNetwork;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;,
        Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;,
        Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    }
.end annotation


# virtual methods
.method public varargs abstract createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;
.end method

.method public abstract createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.end method

.method public abstract execute(Ljava/util/Map;)Ljava/util/Map;
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
.end method

.method public abstract execute(Ljava/util/Map;Ljava/util/Map;)Z
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
.end method

.method public abstract getInputTensorsNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputTensorsShapes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getModelVersion()Ljava/lang/String;
.end method

.method public abstract getOutputLayers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputTensorsNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputTensorsShapes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
.end method

.method public abstract getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;
.end method

.method public abstract release()V
.end method
