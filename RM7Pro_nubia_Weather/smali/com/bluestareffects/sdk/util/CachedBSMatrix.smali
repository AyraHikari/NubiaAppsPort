.class public Lcom/bluestareffects/sdk/util/CachedBSMatrix;
.super Lcom/bluestareffects/sdk/util/BSMatrix;
.source "CachedBSMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;
    }
.end annotation


# instance fields
.field protected mFinalMatrixBuffer:[F

.field private mIsDirty:Z

.field protected mModuleMatrix:[F

.field protected mMultiplyMatrix:[F

.field protected mProjMatrix:[F

.field protected mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/bluestareffects/sdk/util/BSMatrix;-><init>()V

    .line 187
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    .line 189
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    .line 191
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 193
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    .line 195
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 200
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-static {v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->cache([F)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/bluestareffects/sdk/util/BSMatrix;-><init>()V

    .line 187
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    .line 189
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    .line 191
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 193
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    .line 195
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 205
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->getProjMatrix()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->setProjMatrix([F)V

    .line 206
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->getViewMatrix()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->setViewMatrix([F)V

    .line 207
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->getModuleMatrix()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->setModuleMatrix([F)V

    .line 208
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->getFinalMatrixData()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->setFinalMatrixData([F)V

    .line 209
    return-void
.end method

.method public static floatToString([F)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # [F

    .prologue
    .line 413
    const-string v1, "Value = ["

    .line 414
    .local v1, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
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

    .line 419
    return-object v1
.end method


# virtual methods
.method public clearStaticCache()V
    .locals 0

    .prologue
    .line 424
    invoke-static {}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->clear()V

    .line 425
    return-void
.end method

.method public copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 342
    new-instance v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;

    invoke-direct {v0, p0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix;-><init>(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 343
    .local v0, "newMatrix":Lcom/bluestareffects/sdk/util/BSMatrix;
    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->multiply(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 344
    return-object v0
.end method

.method public get()[F
    .locals 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 407
    :goto_0
    return-object v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_2

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_3

    .line 392
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_4

    .line 399
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    invoke-static {v0, v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 406
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 407
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    goto :goto_0
.end method

.method protected getFinalMatrixData()[F
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    return-object v0
.end method

.method protected getModuleMatrix()[F
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    return-object v0
.end method

.method protected getProjMatrix()[F
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    return-object v0
.end method

.method protected getViewMatrix()[F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    return-object v0
.end method

.method public multiply(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v0

    invoke-static {v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedMatrix([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mMultiplyMatrix:[F

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 338
    :cond_0
    return-void
.end method

.method public rotate(FFFF)V
    .locals 4
    .param p1, "angle"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "pivotZ"    # F

    .prologue
    const/4 v3, 0x1

    .line 315
    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-static {v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getRotateCache([F)[F

    move-result-object v0

    .line 316
    .local v0, "rotateMatrix":[F
    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    invoke-static {v1, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 319
    iput-boolean v3, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 320
    return-void
.end method

.method public scale(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v3, 0x1

    .line 325
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-static {v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getScaleCache([F)[F

    move-result-object v0

    .line 326
    .local v0, "scaleMatrix":[F
    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    invoke-static {v1, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 329
    iput-boolean v3, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 330
    return-void
.end method

.method public setCamera(FFFFFFFFF)V
    .locals 3
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "cz"    # F
    .param p4, "tx"    # F
    .param p5, "ty"    # F
    .param p6, "tz"    # F
    .param p7, "upx"    # F
    .param p8, "upy"    # F
    .param p9, "upz"    # F

    .prologue
    const/4 v2, 0x1

    .line 256
    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    const/4 v1, 0x6

    aput p7, v0, v1

    const/4 v1, 0x7

    aput p8, v0, v1

    const/16 v1, 0x8

    aput p9, v0, v1

    .line 257
    invoke-static {v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedCamera([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    .line 264
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 265
    return-void
.end method

.method protected setFinalMatrixData([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 231
    invoke-static {p1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedMatrix([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mFinalMatrixBuffer:[F

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 233
    return-void
.end method

.method protected setModuleMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 225
    invoke-static {p1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedMatrix([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 227
    return-void
.end method

.method protected setProjMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 213
    invoke-static {p1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedMatrix([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 215
    return-void
.end method

.method public setProjectFrustum(FFFFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    const/4 v2, 0x1

    .line 288
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 289
    invoke-static {v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getProjectFrustum([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    .line 292
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 293
    return-void
.end method

.method public setProjectOrtho(FFFFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    const/4 v2, 0x1

    .line 274
    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/4 v1, 0x4

    aput p5, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    .line 275
    invoke-static {v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getProjectOrthoCache([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mProjMatrix:[F

    .line 278
    iput-boolean v2, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 279
    return-void
.end method

.method protected setViewMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 219
    invoke-static {p1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getCachedMatrix([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mViewMatrix:[F

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 221
    return-void
.end method

.method public translate(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v3, 0x1

    .line 298
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-static {v1}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->getTranslateCache([F)[F

    move-result-object v0

    .line 299
    .local v0, "translateMatrix":[F
    iget-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    invoke-static {v1, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mutiplyWithCache([F[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mModuleMatrix:[F

    .line 302
    iput-boolean v3, p0, Lcom/bluestareffects/sdk/util/CachedBSMatrix;->mIsDirty:Z

    .line 303
    return-void
.end method
