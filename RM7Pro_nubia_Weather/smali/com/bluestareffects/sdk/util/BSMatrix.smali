.class public abstract Lcom/bluestareffects/sdk/util/BSMatrix;
.super Ljava/lang/Object;
.source "BSMatrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/bluestareffects/sdk/util/BSMatrix;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;

    invoke-direct {v0}, Lcom/bluestareffects/sdk/util/LegacyBSMatrix;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract clearStaticCache()V
.end method

.method public abstract copyAndMultiply(Lcom/bluestareffects/sdk/util/BSMatrix;)Lcom/bluestareffects/sdk/util/BSMatrix;
.end method

.method public equalTo(Lcom/bluestareffects/sdk/util/BSMatrix;)Z
    .locals 5
    .param p1, "matrix"    # Lcom/bluestareffects/sdk/util/BSMatrix;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v2

    .line 61
    .local v2, "self":[F
    invoke-virtual {p1}, Lcom/bluestareffects/sdk/util/BSMatrix;->get()[F

    move-result-object v1

    .line 62
    .local v1, "other":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 63
    aget v3, v2, v0

    aget v4, v1, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 64
    const/4 v3, 0x0

    .line 65
    :goto_1
    return v3

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public abstract get()[F
.end method

.method protected abstract getFinalMatrixData()[F
.end method

.method protected abstract getModuleMatrix()[F
.end method

.method protected abstract getProjMatrix()[F
.end method

.method protected abstract getViewMatrix()[F
.end method

.method public abstract multiply(Lcom/bluestareffects/sdk/util/BSMatrix;)V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setCamera(FFFFFFFFF)V
.end method

.method public abstract setProjectFrustum(FFFFFF)V
.end method

.method public abstract setProjectOrtho(FFFFFF)V
.end method

.method public abstract translate(FFF)V
.end method
