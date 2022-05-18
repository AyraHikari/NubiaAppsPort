.class public Lcom/bluestareffects/sdk/materials/shader/NativeBufferConverter;
.super Ljava/lang/Object;
.source "NativeBufferConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static floatToString([F)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # [F

    .prologue
    .line 91
    const-string v1, "Value = ["

    .line 92
    .local v1, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    return-object v1
.end method

.method public static getFloatBuffer(Ljava/util/List;)Ljava/nio/FloatBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)",
            "Ljava/nio/FloatBuffer;"
        }
    .end annotation

    .prologue
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v10, 0x0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_0

    const/4 v3, 0x0

    .line 51
    :goto_0
    return-object v3

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 31
    .local v2, "count":I
    new-array v5, v2, [I

    .line 32
    .local v5, "length":[I
    const/4 v7, 0x0

    .line 33
    .local v7, "totalLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 34
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    array-length v8, v8

    aput v8, v5, v4

    .line 35
    aget v8, v5, v4

    add-int/2addr v7, v8

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 38
    :cond_1
    const/4 v6, 0x0

    .line 39
    .local v6, "pos":I
    new-array v0, v7, [F

    .line 40
    .local v0, "all":[F
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    .line 41
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aget v9, v5, v4

    invoke-static {v8, v10, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    aget v8, v5, v4

    add-int/2addr v6, v8

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 46
    :cond_2
    mul-int/lit8 v8, v7, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 49
    .local v3, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 50
    invoke-virtual {v3, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static getFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "source"    # [F

    .prologue
    .line 15
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 18
    .local v1, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 19
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    return-object v1
.end method
