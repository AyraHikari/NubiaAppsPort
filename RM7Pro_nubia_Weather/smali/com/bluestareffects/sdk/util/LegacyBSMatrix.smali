.class public Lcom/bluestareffects/sdk/util/LegacyBSMatrix;
.super Lcom/bluestareffects/sdk/util/BSMatrix;
.source "LegacyBSMatrix.java"


# static fields
.field public static final IDENTITY_MATRIX:[F


# instance fields
.field protected mFinalMatrixBuffer:[F

.field private mIsDirty:Z

.field protected mModuleMatrix:[F

.field protected mMultiplyMatrix:[F

.field protected mProjMatrix:[F

.field protected mViewMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/bluestareffects/sdk/util/BSMatrix;-><init>()V

    .line 19
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    .line 21
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    .line 23
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 25
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    .line 27
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/bluestareffects/sdk/util/LegacyBSMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/LegacyBSMatrix;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bluestareffects/sdk/util/BSMatrix;-><init>()V

    .line 19
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    .line 21
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    .line 23
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 25
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    .line 27
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 35
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_0

    .line 36
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->setProjMatrix([F)V

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_1

    .line 38
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->setViewMatrix([F)V

    .line 39
    :cond_1
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_2

    .line 40
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->setModuleMatrix([F)V

    .line 41
    :cond_2
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    sget-object v1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v1, :cond_3

    .line 42
    iget-object v0, p1, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->setFinalMatrixData([F)V

    .line 43
    :cond_3
    return-void
.end method


# virtual methods
.method public clearStaticCache()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 176
    new-instance v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;

    invoke-direct {v0, p0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;-><init>(Lcom/bluestareffects/sdk/util/LegacyBSMatrix;)V

    .line 177
    .local v0, "newMatrix":Lcom/bluestareffects/sdk/util/LegacyBSMatrix;
    invoke-virtual {v0, p1}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->multiply(Lcom/bluestareffects/sdk/util/BSMatrix;)V

    .line 178
    return-object v0
.end method

.method public equalTo(Lcom/bluestareffects/sdk/util/LegacyBSMatrix;)Z
    .locals 5
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/LegacyBSMatrix;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->get()[F

    move-result-object v2

    .line 218
    .local v2, "self":[F
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->get()[F

    move-result-object v1

    .line 219
    .local v1, "other":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 220
    aget v3, v2, v0

    aget v4, v1, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 221
    const/4 v3, 0x0

    .line 222
    :goto_1
    return v3

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public floatToString([F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # [F

    .prologue
    .line 226
    const-string v1, "Value = ["

    .line 227
    .local v1, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
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

    .line 232
    return-object v1
.end method

.method public get()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 206
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    sget-object v2, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    sget-object v2, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v2, :cond_3

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    iget-object v4, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    sget-object v2, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v2, :cond_5

    .line 193
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    iget-object v4, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    sget-object v2, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-eq v0, v2, :cond_7

    .line 199
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 200
    :cond_6
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    iget-object v2, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    iget-object v4, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 205
    :cond_7
    iput-boolean v1, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 206
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    goto :goto_0
.end method

.method protected getFinalMatrixData()[F
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    return-object v0
.end method

.method protected getModuleMatrix()[F
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    return-object v0
.end method

.method protected getProjMatrix()[F
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    return-object v0
.end method

.method protected getViewMatrix()[F
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    return-object v0
.end method

.method public isID([F)Z
    .locals 1
    .param p1, "matrixData"    # [F

    .prologue
    .line 236
    sget-object v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->IDENTITY_MATRIX:[F

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiply(Lcom/bluestareffects/sdk/util/BSMatrix;)V
    .locals 2
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v0

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mMultiplyMatrix:[F

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 173
    :cond_0
    return-void
.end method

.method public rotate(FFFF)V
    .locals 6
    .param p1, "angle"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "pivotZ"    # F

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 160
    return-void
.end method

.method public scale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 166
    return-void
.end method

.method public setCamera(FFFFFFFFF)V
    .locals 11
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
    .line 103
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 109
    return-void
.end method

.method protected setFinalMatrixData([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 65
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mFinalMatrixBuffer:[F

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 67
    return-void
.end method

.method protected setModuleMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 59
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 61
    return-void
.end method

.method protected setProjMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 47
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 49
    return-void
.end method

.method public setProjectFrustum(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 140
    return-void
.end method

.method public setProjectOrtho(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mProjMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 125
    return-void
.end method

.method protected setViewMatrix([F)V
    .locals 1
    .param p1, "value"    # [F

    .prologue
    .line 53
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mViewMatrix:[F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 55
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {p0, v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->isID([F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mModuleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;->mIsDirty:Z

    .line 146
    return-void
.end method
