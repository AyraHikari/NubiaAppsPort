.class public Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;
.super Ljava/lang/Object;
.source "BaseShaderImpl.java"

# interfaces
.implements Lcom/bluestareffects/sdk/materials/shader/BaseShader;
.implements Lcom/bluestareffects/sdk/core/IShader$Impl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;
    }
.end annotation


# instance fields
.field private final mAlphaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private final mDrawCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:I

.field private mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

.field private final mMatrixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/util/BSMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final mReporter:Lcom/bluestareffects/sdk/core/DrawCallReporter;

.field private final mTextureCoorsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private final mTextureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bluestareffects/sdk/core/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

.field private final mVertexCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private final maAlphaHandle:I

.field private final maPositionHandle:I

.field private final maTexCoorHandle:I

.field private final muMVPMatrixHandle:I

.field private final muTexHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bluestareffects/sdk/core/DrawCallReporter;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "reporter"    # Lcom/bluestareffects/sdk/core/DrawCallReporter;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x1f4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 33
    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 45
    iput-object p3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mReporter:Lcom/bluestareffects/sdk/core/DrawCallReporter;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/base/vertex.glsl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "vertex":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/base/frag.glsl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "fragment":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/bluestareffects/sdk/materials/shader/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    .line 52
    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maPositionHandle:I

    .line 54
    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    const-string v3, "aTexCoor"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maTexCoorHandle:I

    .line 56
    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    const-string v3, "aAlpha"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maAlphaHandle:I

    .line 58
    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    const-string v3, "sTexture"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->muTexHandle:I

    .line 60
    iget v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->muMVPMatrixHandle:I

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    .line 65
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    .line 67
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    .line 69
    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mDrawCallList:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method private dumpList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[F>;"
    const/4 v6, 0x1

    .line 428
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 429
    .local v1, "outerString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 430
    .local v3, "willDump":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 431
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 432
    .local v2, "tmp":[F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->listToString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "tmp":[F
    :cond_0
    const-string v4, "vertex dump begin:"

    invoke-static {v6, v4}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;)I

    .line 436
    invoke-static {v6, v1}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;)I

    .line 437
    const-string v4, "vertex dump end"

    invoke-static {v6, v4}, Lcom/bluestareffects/sdk/util/BSLog;->e(ILjava/lang/String;)I

    .line 439
    return-void
.end method

.method private executeDrawCallInner(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)V
    .locals 9
    .param p1, "drawcall"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    .line 386
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$000(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v7

    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$100(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 388
    .local v3, "vSubList":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-static {v3}, Lcom/bluestareffects/sdk/materials/shader/NativeBufferConverter;->getFloatBuffer(Ljava/util/List;)Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 389
    .local v4, "vertex":Ljava/nio/FloatBuffer;
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    .line 390
    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$200(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v7

    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$300(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 389
    invoke-static {v6}, Lcom/bluestareffects/sdk/materials/shader/NativeBufferConverter;->getFloatBuffer(Ljava/util/List;)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 391
    .local v1, "color":Ljava/nio/FloatBuffer;
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    .line 392
    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$400(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v7

    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$500(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 391
    invoke-static {v6}, Lcom/bluestareffects/sdk/materials/shader/NativeBufferConverter;->getFloatBuffer(Ljava/util/List;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 393
    .local v0, "alpha":Ljava/nio/FloatBuffer;
    invoke-direct {p0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->use()V

    .line 394
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mReporter:Lcom/bluestareffects/sdk/core/DrawCallReporter;

    invoke-interface {v6}, Lcom/bluestareffects/sdk/core/DrawCallReporter;->getProjectionMatrix()Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v2

    .line 395
    .local v2, "projection":Lcom/bluestareffects/sdk/util/BSMatrix;
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getMatrix()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bluestareffects/sdk/util/BSMatrix;

    .line 396
    .local v5, "vmMatrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    invoke-virtual {v5, v2}, Lcom/bluestareffects/sdk/util/BSMatrix;->copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;

    move-result-object v6

    invoke-direct {p0, v4, v1, v0, v6}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->uploadToGL(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 397
    const/16 v7, 0xde1

    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->access$600(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v6}, Lcom/bluestareffects/sdk/core/Texture;->id()I

    move-result v6

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 398
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->getPointSize(Ljava/util/List;)I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 401
    return-void
.end method

.method private getPointSize(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)I"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 375
    .local v0, "count":I
    const/4 v2, 0x0

    .line 376
    .local v2, "totalLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 378
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    array-length v3, v3

    add-int/2addr v2, v3

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_0
    div-int/lit8 v3, v2, 0x3

    return v3
.end method

.method private listToString([F)Ljava/lang/String;
    .locals 6
    .param p1, "list"    # [F

    .prologue
    .line 442
    const-string v0, "["

    .line 443
    .local v0, "tmp":Ljava/lang/String;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p1, v2

    .line 444
    .local v1, "value":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "value":F
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    return-object v0
.end method

.method private shareSameUniforms(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)Z
    .locals 11
    .param p1, "lastCall"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;
    .param p2, "thisCall"    # Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 296
    invoke-virtual {p2}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getTexture()I

    move-result v5

    .line 297
    .local v5, "thisTexture":I
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getTexture()I

    move-result v1

    .line 298
    .local v1, "lastTexture":I
    const/4 v3, 0x0

    .line 299
    .local v3, "sameTexture":Z
    if-eq v1, v10, :cond_0

    if-ne v5, v10, :cond_0

    .line 301
    const/4 v3, 0x1

    .line 302
    invoke-virtual {p2, v1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->setTexture(I)V

    .line 307
    :goto_0
    invoke-virtual {p2}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getMatrix()I

    move-result v4

    .line 308
    .local v4, "thisMatrix":I
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getMatrix()I

    move-result v0

    .line 309
    .local v0, "lastMatrix":I
    const/4 v2, 0x0

    .line 310
    .local v2, "sameMatrix":Z
    if-eq v0, v10, :cond_2

    if-ne v4, v10, :cond_2

    .line 312
    const/4 v2, 0x1

    .line 313
    invoke-virtual {p2, v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->setMatrix(I)V

    .line 318
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    return v8

    .line 304
    .end local v0    # "lastMatrix":I
    .end local v2    # "sameMatrix":Z
    .end local v4    # "thisMatrix":I
    :cond_0
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v6}, Lcom/bluestareffects/sdk/core/Texture;->id()I

    move-result v7

    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bluestareffects/sdk/core/Texture;

    invoke-virtual {v6}, Lcom/bluestareffects/sdk/core/Texture;->id()I

    move-result v6

    if-ne v7, v6, :cond_1

    move v3, v8

    :goto_3
    goto :goto_0

    :cond_1
    move v3, v9

    goto :goto_3

    .line 315
    .restart local v0    # "lastMatrix":I
    .restart local v2    # "sameMatrix":Z
    .restart local v4    # "thisMatrix":I
    :cond_2
    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bluestareffects/sdk/util/BSMatrix;

    iget-object v7, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bluestareffects/sdk/util/BSMatrix;

    invoke-virtual {v6, v7}, Lcom/bluestareffects/sdk/util/BSMatrix;->equalTo(Lcom/bluestareffects/sdk/util/BSMatrix;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v8, v9

    .line 318
    goto :goto_2
.end method

.method private uploadToGL(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 7
    .param p1, "vertex"    # Ljava/nio/FloatBuffer;
    .param p2, "color"    # Ljava/nio/FloatBuffer;
    .param p3, "alpha"    # Ljava/nio/FloatBuffer;
    .param p4, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 325
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    move-object v5, p1

    .line 326
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 335
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maTexCoorHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    move-object v5, p2

    .line 336
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 344
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maAlphaHandle:I

    const/4 v4, 0x4

    move v1, v6

    move-object v5, p3

    .line 345
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 354
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 355
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 356
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->maAlphaHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 359
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->muTexHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 361
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->muMVPMatrixHandle:I

    invoke-virtual {p4}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 363
    return-void
.end method

.method private use()V
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 368
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 416
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->reset()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mDrawCallList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    const/4 v0, 0x1

    const-string v1, "clearFrameData"

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/BSLog;->v(ILjava/lang/String;)I

    .line 420
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public executeDrawCall(I)V
    .locals 1
    .param p1, "token"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mDrawCallList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-direct {p0, v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->executeDrawCallInner(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)V

    .line 405
    return-void
.end method

.method public uploadAlpha([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public uploadBegin()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;-><init>()V

    iput-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->start(III)V

    .line 181
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-virtual {v0}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->reset()V

    goto :goto_0
.end method

.method public uploadEnd()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mAlphaList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 204
    invoke-virtual {v5, v6, v7, v8}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->end(III)V

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "canMerge":Z
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    if-eqz v5, :cond_2

    .line 210
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mReporter:Lcom/bluestareffects/sdk/core/DrawCallReporter;

    invoke-interface {v5}, Lcom/bluestareffects/sdk/core/DrawCallReporter;->getLastShaderUsed()Lcom/bluestareffects/sdk/core/IShader$Impl;

    move-result-object v5

    if-ne p0, v5, :cond_0

    move v2, v3

    .line 211
    .local v2, "sameShader":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 212
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iget-object v6, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-direct {p0, v5, v6}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->shareSameUniforms(Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;)Z

    move-result v0

    .line 232
    .end local v2    # "sameShader":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 233
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-virtual {v5}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->getEnd()[I

    move-result-object v1

    .line 234
    .local v1, "newEnd":[I
    iget-object v5, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    aget v4, v1, v4

    aget v3, v1, v3

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-virtual {v5, v4, v3, v6}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->end(III)V

    .line 244
    .end local v1    # "newEnd":[I
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 210
    goto :goto_0

    .line 214
    .restart local v2    # "sameShader":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    .end local v2    # "sameShader":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 238
    :cond_3
    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mDrawCallList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mLastCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 240
    new-instance v3, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    invoke-direct {v3}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;-><init>()V

    iput-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    .line 241
    iget-object v3, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mReporter:Lcom/bluestareffects/sdk/core/DrawCallReporter;

    iget-object v4, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mDrawCallList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, p0, v4}, Lcom/bluestareffects/sdk/core/DrawCallReporter;->addDrawCall(Lcom/bluestareffects/sdk/core/IShader$Impl;I)V

    goto :goto_2
.end method

.method public uploadMatrix(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mMatrixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->setMatrix(I)V

    .line 103
    return-void
.end method

.method public uploadTexture(Lcom/bluestareffects/sdk/core/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/bluestareffects/sdk/core/Texture;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mThisCall:Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;

    iget-object v1, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl$DrawCallInner;->setTexture(I)V

    .line 79
    return-void
.end method

.method public uploadTextureCoors([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mTextureCoorsCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public uploadVertexes([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bluestareffects/sdk/materials/shader/BaseShaderImpl;->mVertexCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
