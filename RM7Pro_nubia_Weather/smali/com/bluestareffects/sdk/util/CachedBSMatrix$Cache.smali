.class public Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;
.super Ljava/lang/Object;
.source "CachedBSMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/sdk/util/CachedBSMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final mCameraCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field

.field private static final mMatrixCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final mMatrixOpCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<[F>;>;"
        }
    .end annotation
.end field

.field private static final mProjectFrustum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field

.field private static final mProjectOrthoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field

.field private static final mRotateCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field

.field private static final mScaleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field

.field private static final mTranslateCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[F[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mCameraCache:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectOrthoCache:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectFrustum:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mTranslateCache:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mRotateCache:Ljava/util/Map;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mScaleCache:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixOpCache:Landroid/util/SparseArray;

    return-void

    .line 23
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
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cache([F)V
    .locals 1
    .param p0, "source"    # [F

    .prologue
    .line 126
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method static clear()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mCameraCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectOrthoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectFrustum:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mTranslateCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mRotateCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mScaleCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 178
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixOpCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 180
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method private static floatEquals([F[F)Z
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v1, 0x0

    .line 33
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 35
    aget v2, p0, v0

    aget v3, p1, v0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getCachedCamera([F)[F
    .locals 12
    .param p0, "source"    # [F

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mCameraCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    .line 44
    .local v11, "index":[F
    invoke-static {p0, v11}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mCameraCache:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 53
    .end local v11    # "index":[F
    :goto_0
    return-object v1

    .line 46
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 47
    .local v0, "cameraMatrix":[F
    aget v2, p0, v1

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    const/4 v8, 0x6

    aget v8, p0, v8

    const/4 v9, 0x7

    aget v9, p0, v9

    const/16 v10, 0x8

    aget v10, p0, v10

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 51
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mCameraCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 53
    goto :goto_0
.end method

.method static getCachedMatrix([F)[F
    .locals 1
    .param p0, "source"    # [F

    .prologue
    .line 131
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-object p0
.end method

.method static getProjectFrustum([F)[F
    .locals 9
    .param p0, "source"    # [F

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectFrustum:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 73
    .local v8, "index":[F
    invoke-static {p0, v8}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectFrustum:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 81
    .end local v8    # "index":[F
    :goto_0
    return-object v1

    .line 75
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 76
    .local v0, "projectFrustumMatrix":[F
    aget v2, p0, v1

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 79
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectFrustum:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 81
    goto :goto_0
.end method

.method static getProjectOrthoCache([F)[F
    .locals 9
    .param p0, "source"    # [F

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectOrthoCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 59
    .local v8, "index":[F
    invoke-static {p0, v8}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectOrthoCache:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 67
    .end local v8    # "index":[F
    :goto_0
    return-object v1

    .line 61
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 62
    .local v0, "projectOrthoMatrix":[F
    aget v2, p0, v1

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 65
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mProjectOrthoCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 67
    goto :goto_0
.end method

.method static getRotateCache([F)[F
    .locals 7
    .param p0, "source"    # [F

    .prologue
    const/4 v1, 0x0

    .line 100
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mRotateCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 101
    .local v6, "index":[F
    invoke-static {p0, v6}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mRotateCache:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 108
    .end local v6    # "index":[F
    :goto_0
    return-object v1

    .line 103
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 104
    .local v0, "rotateMatrix":[F
    aget v2, p0, v1

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 106
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mRotateCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 108
    goto :goto_0
.end method

.method static getScaleCache([F)[F
    .locals 6
    .param p0, "source"    # [F

    .prologue
    const/4 v5, 0x0

    .line 113
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mScaleCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 114
    .local v0, "index":[F
    invoke-static {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mScaleCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 121
    .end local v0    # "index":[F
    :goto_0
    return-object v2

    .line 116
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 117
    .local v1, "scaleMatrix":[F
    aget v2, p0, v5

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 119
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mScaleCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 121
    goto :goto_0
.end method

.method static getTranslateCache([F)[F
    .locals 6
    .param p0, "source"    # [F

    .prologue
    const/4 v5, 0x0

    .line 87
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mTranslateCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 88
    .local v0, "index":[F
    invoke-static {p0, v0}, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->floatEquals([F[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mTranslateCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 95
    .end local v0    # "index":[F
    :goto_0
    return-object v2

    .line 90
    :cond_1
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->IDENTITY_MATRIX:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 91
    .local v1, "translateMatrix":[F
    aget v2, p0, v5

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    invoke-static {v1, v5, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 93
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mTranslateCache:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 95
    goto :goto_0
.end method

.method static mutiplyWithCache([F[F)[F
    .locals 10
    .param p0, "left"    # [F
    .param p1, "right"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 137
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 138
    .local v6, "indexLeft":I
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 140
    .local v7, "indexRight":I
    if-eq v6, v3, :cond_0

    if-ne v7, v3, :cond_1

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roate matrix not cached. indexLeft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", indexRight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "result":[F
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixOpCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 147
    .local v9, "subList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[F>;"
    if-eqz v9, :cond_2

    .line 149
    invoke-virtual {v9, v6, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":[F
    check-cast v0, [F

    .line 156
    .restart local v0    # "result":[F
    :goto_0
    if-eqz v0, :cond_3

    move-object v8, v0

    .line 163
    .end local v0    # "result":[F
    .local v8, "result":[F
    :goto_1
    return-object v8

    .line 152
    .end local v8    # "result":[F
    .restart local v0    # "result":[F
    :cond_2
    new-instance v9, Landroid/util/SparseArray;

    .end local v9    # "subList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[F>;"
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 153
    .restart local v9    # "subList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[F>;"
    sget-object v2, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixOpCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_3
    const/16 v2, 0x10

    new-array v0, v2, [F

    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 160
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 161
    invoke-virtual {v9, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v1, Lcom/bluestareffects/sdk/util/CachedBSMatrix$Cache;->mMatrixCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    .line 163
    .end local v0    # "result":[F
    .restart local v8    # "result":[F
    goto :goto_1
.end method
