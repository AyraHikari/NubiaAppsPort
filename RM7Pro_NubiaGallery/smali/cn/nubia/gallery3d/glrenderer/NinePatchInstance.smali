.class Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# static fields
.field private static final INDEX_BUFFER_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "NinePatchInstance"

.field private static final VERTEX_BUFFER_SIZE:I = 0x20


# instance fields
.field private mIdxCount:I

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mIndexBufferName:I

.field private mUvBuffer:Ljava/nio/FloatBuffer;

.field private mUvBufferName:I

.field private mXyBuffer:Ljava/nio/FloatBuffer;

.field private mXyBufferName:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 10

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    .line 209
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getNinePatchChunk()Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;

    move-result-object v0

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 218
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    array-length v1, v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    new-array v3, v1, [F

    new-array v4, v1, [F

    new-array v5, v1, [F

    new-array v6, v1, [F

    .line 227
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v2

    invoke-static {v3, v5, v1, v2, p2}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v7

    .line 228
    iget-object p2, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result p1

    invoke-static {v4, v6, p2, p1, p3}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v8

    .line 230
    iget-object v9, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchChunk;->mColor:[I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->prepareVertexData([F[F[F[FII[I)V

    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported nine patch"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "invalid dimension"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 397
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private prepareBuffers(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    .line 402
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    .line 403
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 407
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 408
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private prepareVertexData([F[F[F[FII[I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    const/16 v3, 0x20

    new-array v4, v3, [F

    new-array v3, v3, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_0

    add-int/lit8 v9, v7, 0x1

    shl-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v7, 0x1

    .line 342
    aget v11, p1, v8

    aput v11, v4, v7

    .line 343
    aget v11, p2, v6

    aput v11, v4, v10

    .line 344
    aget v11, p3, v8

    aput v11, v3, v7

    .line 345
    aget v7, p4, v6

    aput v7, v3, v10

    add-int/lit8 v8, v8, 0x1

    move v7, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x18

    new-array v6, v6, [B

    const/4 v8, 0x1

    move v10, v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v12, v2, -0x1

    if-ge v9, v12, :cond_6

    add-int/lit8 v10, v10, -0x1

    xor-int/2addr v11, v8

    const/4 v12, -0x1

    if-eqz v11, :cond_2

    move v12, v1

    move v13, v8

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v1, -0x1

    move v14, v13

    move v13, v12

    :goto_3
    move v15, v14

    :goto_4
    if-eq v15, v12, :cond_5

    mul-int v16, v9, v1

    add-int v8, v16, v15

    if-eq v15, v14, :cond_4

    add-int/lit8 v16, v1, -0x1

    mul-int v16, v16, v9

    add-int v16, v16, v15

    if-eqz v11, :cond_3

    add-int/lit8 v16, v16, -0x1

    .line 372
    :cond_3
    aget v16, p7, v16

    if-nez v16, :cond_4

    add-int/lit8 v16, v10, -0x1

    .line 373
    aget-byte v16, v6, v16

    aput-byte v16, v6, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v16, v10, 0x1

    int-to-byte v5, v8

    .line 375
    aput-byte v5, v6, v10

    move/from16 v10, v16

    :cond_4
    add-int/lit8 v5, v10, 0x1

    int-to-byte v2, v8

    .line 379
    aput-byte v2, v6, v10

    add-int/lit8 v10, v5, 0x1

    add-int/2addr v8, v1

    int-to-byte v2, v8

    .line 380
    aput-byte v2, v6, v5

    add-int/2addr v15, v13

    move/from16 v2, p6

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p6

    const/4 v8, 0x1

    goto :goto_2

    .line 384
    :cond_6
    iput v10, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v1, v7, 0x4

    .line 387
    invoke-static {v1}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 388
    invoke-static {v1}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 389
    iget v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    invoke-static {v1}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 391
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v7}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 392
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3, v2, v7}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 393
    iget-object v1, v0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6, v2, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static stretch([F[F[III)I
    .locals 10

    .line 267
    invoke-static {p3}, Lcn/nubia/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    int-to-float v1, p3

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 271
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v2, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 272
    aget v7, p2, v7

    aget v8, p2, v5

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    sub-int p3, p4, p3

    int-to-float p3, p3

    add-float/2addr p3, v6

    .line 280
    aput v4, p0, v3

    .line 281
    aput v4, p1, v3

    .line 282
    array-length v2, p2

    move v7, v3

    move v5, v4

    :goto_1
    if-ge v7, v2, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 286
    aget v9, p2, v7

    int-to-float v9, v9

    sub-float/2addr v9, v5

    add-float/2addr v4, v9

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    aput v4, p0, v8

    .line 287
    aget v4, p2, v7

    int-to-float v4, v4

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, p1, v8

    .line 290
    aget v4, p2, v8

    aget v9, p2, v7

    sub-int/2addr v4, v9

    int-to-float v4, v4

    mul-float v9, p3, v4

    div-float/2addr v9, v6

    sub-float/2addr p3, v9

    sub-float/2addr v6, v4

    .line 295
    aget v4, p0, v8

    add-float/2addr v4, v9

    .line 296
    aget v8, p2, v8

    int-to-float v8, v8

    add-int/lit8 v7, v7, 0x2

    sub-float v9, v4, v5

    .line 297
    aput v9, p0, v7

    sub-float v5, v8, v5

    div-float/2addr v5, v0

    .line 298
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, p1, v7

    move v5, v8

    goto :goto_1

    .line 301
    :cond_1
    array-length p3, p2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    int-to-float p4, p4

    aput p4, p0, p3

    .line 302
    array-length p3, p2

    add-int/2addr p3, v0

    aput v1, p1, p3

    .line 306
    array-length p2, p2

    add-int/lit8 p2, p2, 0x2

    move p3, v0

    :goto_2
    if-ge p3, p2, :cond_3

    .line 307
    aget p4, p0, p3

    aget v1, p0, v3

    sub-float/2addr p4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p4, p4, v1

    if-gez p4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 308
    aget p4, p0, p3

    aput p4, p0, v3

    .line 309
    aget p4, p1, p3

    aput p4, p1, v3

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v3, v0

    return v3
.end method


# virtual methods
.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 10

    .line 412
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 413
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->prepareBuffers(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 415
    :cond_0
    iget v6, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    iget v7, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    iget v8, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    iget v9, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v2 .. v9}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawMesh(Lcn/nubia/gallery3d/glrenderer/BasicTexture;IIIIII)V

    return-void
.end method

.method public recycle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 420
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    .line 421
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    .line 422
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    const/4 p1, -0x1

    .line 423
    iput p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    :cond_0
    return-void
.end method
