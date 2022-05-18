.class public Lcn/nubia/improve/photos/views/CropViewWallpaper;
.super Lcn/nubia/improve/photos/views/TiledImageView;
.source "CropViewWallpaper.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;
    }
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mFirstX:F

.field private mFirstY:F

.field mInverseRotateMatrix:Landroid/graphics/Matrix;

.field private mLastX:F

.field private mLastY:F

.field private mMinScale:F

.field mRotateMatrix:Landroid/graphics/Matrix;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTempAdjustment:[F

.field private mTempCoef:[F

.field private mTempEdges:Landroid/graphics/RectF;

.field private mTempImageDims:[F

.field private mTempPoint:[F

.field private mTempRendererCenter:[F

.field mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

.field private mTouchDownTime:J

.field private mTouchEnabled:Z

.field private oriImageHeight:F

.field private oriImageWidht:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchEnabled:Z

    .line 41
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempEdges:Landroid/graphics/RectF;

    const/4 p2, 0x2

    new-array v0, p2, [F

    .line 42
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempPoint:[F

    new-array v0, p2, [F

    .line 43
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempCoef:[F

    new-array v0, p2, [F

    .line 44
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempAdjustment:[F

    new-array v0, p2, [F

    .line 45
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempImageDims:[F

    new-array p2, p2, [F

    .line 46
    fill-array-data p2, :array_4

    iput-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempRendererCenter:[F

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageWidht:F

    .line 51
    iput p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageHeight:F

    .line 65
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getEdgesHelper(Landroid/graphics/RectF;)V
    .locals 12

    .line 83
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 84
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 85
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getImageDims()[F

    move-result-object v2

    const/4 v3, 0x0

    .line 86
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 87
    aget v2, v2, v5

    .line 89
    iget-object v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v6, v6, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v6}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 90
    iget-object v8, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v8, v8, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v8}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 92
    iget-object v9, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempRendererCenter:[F

    .line 93
    iget v10, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    sub-float/2addr v10, v6

    aput v10, v9, v3

    .line 94
    iget v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    sub-float/2addr v6, v8

    aput v6, v9, v5

    .line 95
    iget-object v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 96
    aget v6, v9, v3

    div-float v8, v4, v7

    add-float/2addr v6, v8

    aput v6, v9, v3

    .line 97
    aget v6, v9, v5

    div-float v10, v2, v7

    add-float/2addr v6, v10

    aput v6, v9, v5

    .line 99
    iget-object v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float v11, v0, v7

    .line 100
    aget v3, v9, v3

    sub-float v3, v11, v3

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v3, v11

    div-float v0, v1, v7

    .line 102
    aget v4, v9, v5

    sub-float v4, v0, v4

    sub-float/2addr v2, v1

    div-float/2addr v2, v7

    add-float/2addr v4, v2

    mul-float/2addr v4, v6

    add-float/2addr v4, v0

    mul-float/2addr v8, v6

    sub-float v0, v3, v8

    add-float/2addr v3, v8

    mul-float/2addr v10, v6

    sub-float v1, v4, v10

    add-float/2addr v4, v10

    .line 109
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 110
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 111
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 112
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private getImageDims()[F
    .locals 4

    .line 71
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    .line 72
    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    .line 73
    iget-object v2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempImageDims:[F

    const/4 v3, 0x0

    .line 74
    aput v0, v2, v3

    const/4 v0, 0x1

    .line 75
    aput v1, v2, v0

    .line 76
    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 77
    aget v1, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v2, v3

    .line 78
    aget v1, v2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v2, v0

    return-object v2
.end method

.method private updateCenter()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 243
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    return-void
.end method

.method private updateMinScale(IILcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Z)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 183
    :try_start_0
    iget-object p4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p4, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 186
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getImageDims()[F

    move-result-object p3

    const/4 p4, 0x0

    .line 187
    aget p4, p3, p4

    iput p4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageWidht:F

    const/4 v1, 0x1

    .line 188
    aget p3, p3, v1

    iput p3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageHeight:F

    cmpl-float v1, p3, p4

    if-ltz v1, :cond_2

    int-to-float v1, p1

    cmpl-float v2, p4, v1

    if-lez v2, :cond_1

    int-to-float v2, p2

    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    int-to-float v2, p2

    div-float v1, v2, v1

    .line 193
    :goto_1
    iput v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mMinScale:F

    goto :goto_2

    :cond_2
    int-to-float v1, p2

    div-float/2addr v1, p3

    .line 196
    iput v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mMinScale:F

    :goto_2
    int-to-float p1, p1

    div-float/2addr p1, p4

    int-to-float p2, p2

    div-float/2addr p2, p3

    .line 198
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mMinScale:F

    .line 200
    iget-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mMinScale:F

    iput p2, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 202
    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getCrop()Landroid/graphics/RectF;
    .locals 9

    .line 120
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempEdges:Landroid/graphics/RectF;

    .line 121
    invoke-direct {p0, v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 122
    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 124
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    div-float/2addr v2, v1

    .line 125
    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    div-float/2addr v0, v1

    .line 126
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v2

    .line 127
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v4, v0

    sub-float v1, v3, v2

    sub-float v5, v4, v0

    cmpl-float v6, v5, v1

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v6, :cond_0

    sub-float v1, v5, v1

    div-float/2addr v1, v7

    sub-float/2addr v2, v1

    add-float/2addr v3, v1

    sub-float v1, v3, v2

    .line 135
    iget v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageWidht:F

    cmpl-float v8, v1, v6

    if-lez v8, :cond_1

    sub-float v8, v1, v6

    div-float/2addr v8, v7

    add-float/2addr v2, v8

    sub-float/2addr v1, v6

    div-float/2addr v1, v7

    sub-float/2addr v3, v1

    sub-float v1, v5, v6

    div-float/2addr v1, v7

    add-float/2addr v0, v1

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_0
    sub-float v5, v1, v5

    div-float/2addr v5, v7

    sub-float/2addr v0, v5

    add-float/2addr v4, v5

    sub-float v5, v4, v0

    .line 145
    iget v6, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->oriImageHeight:F

    cmpl-float v8, v5, v6

    if-lez v8, :cond_1

    sub-float v8, v5, v6

    div-float/2addr v8, v7

    add-float/2addr v0, v8

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    sub-float v5, v1, v6

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    sub-float/2addr v1, v6

    div-float/2addr v1, v7

    sub-float/2addr v3, v1

    .line 152
    :cond_1
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public getImageRotation()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    return v0
.end method

.method public getSourceDimensions()Landroid/graphics/Point;
    .locals 3

    .line 156
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveToLeft()V
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 227
    new-instance v1, Lcn/nubia/improve/photos/views/CropViewWallpaper$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper$1;-><init>(Lcn/nubia/improve/photos/views/CropViewWallpaper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempEdges:Landroid/graphics/RectF;

    .line 235
    invoke-direct {p0, v0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 236
    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 237
    iget v2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    float-to-double v2, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    .line 238
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateCenter()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v1, p1

    iput v1, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 215
    iget-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mMinScale:F

    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 216
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 171
    iget-object p3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object p3, p3, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateMinScale(IILcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 262
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v1

    move v8, v6

    move v9, v8

    :goto_2
    if-ge v7, v5, :cond_3

    if-ne v4, v7, :cond_2

    goto :goto_3

    .line 266
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v8, v10

    .line 267
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v8, v3

    div-float/2addr v9, v3

    if-nez v0, :cond_5

    .line 274
    iput v8, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mFirstX:F

    .line 275
    iput v9, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mFirstY:F

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchDownTime:J

    .line 277
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

    if-eqz v3, :cond_e

    .line 278
    invoke-interface {v3}, Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;->onTouchDown()V

    goto/16 :goto_7

    :cond_5
    if-ne v0, v2, :cond_e

    .line 281
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 283
    iget v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mFirstX:F

    sub-float v5, v4, v8

    sub-float/2addr v4, v8

    mul-float/2addr v5, v4

    iget v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mFirstY:F

    sub-float v7, v4, v9

    sub-float/2addr v4, v9

    mul-float/2addr v7, v4

    add-float/2addr v5, v7

    .line 284
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/2addr v4, v3

    int-to-float v3, v4

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 286
    iget-object v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

    if-eqz v4, :cond_7

    cmpg-float v3, v5, v3

    if-gez v3, :cond_6

    .line 288
    iget-wide v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchDownTime:J

    .line 289
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v3, v12

    cmp-long v3, v10, v3

    if-gez v3, :cond_6

    .line 290
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

    invoke-interface {v3}, Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;->onTap()V

    .line 292
    :cond_6
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

    invoke-interface {v3}, Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;->onTouchUp()V

    .line 296
    :cond_7
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eqz v3, :cond_e

    .line 299
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempEdges:Landroid/graphics/RectF;

    .line 300
    invoke-direct {p0, v3}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 301
    iget-object v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 303
    iget-object v5, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempCoef:[F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 304
    aput v7, v5, v1

    .line 305
    aput v7, v5, v2

    .line 306
    iget-object v7, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 307
    iget-object v7, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempAdjustment:[F

    .line 308
    aput v6, v7, v1

    .line 309
    aput v6, v7, v2

    .line 310
    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_8

    .line 311
    iget v10, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v4

    aput v10, v7, v1

    goto :goto_4

    .line 312
    :cond_8
    iget v10, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    .line 313
    iget v10, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v4

    aput v10, v7, v1

    .line 315
    :cond_9
    :goto_4
    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v6

    if-lez v10, :cond_a

    .line 316
    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v7, v2

    goto :goto_5

    .line 317
    :cond_a
    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_b

    .line 318
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v3, v10

    div-float/2addr v3, v4

    aput v3, v7, v2

    :cond_b
    :goto_5
    move v3, v1

    :goto_6
    if-gt v3, v2, :cond_d

    .line 321
    aget v4, v5, v3

    cmpl-float v4, v4, v6

    if-lez v4, :cond_c

    aget v4, v7, v3

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v4, v10

    aput v4, v7, v3

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 324
    :cond_d
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 334
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateCenter()V

    .line 337
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->invalidate()V

    .line 341
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateViewCenter()V

    .line 343
    iget-boolean v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchEnabled:Z

    if-nez v3, :cond_f

    return v2

    .line 347
    :cond_f
    iget-object v3, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 348
    :try_start_0
    iget-object v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x2

    if-eq v0, p1, :cond_10

    goto :goto_8

    .line 351
    :cond_10
    iget-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTempPoint:[F

    .line 352
    iget v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLastX:F

    sub-float/2addr v0, v8

    iget-object v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v0, v4

    aput v0, p1, v1

    .line 353
    iget v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLastY:F

    sub-float/2addr v0, v9

    iget-object v4, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v0, v4

    aput v0, p1, v2

    .line 354
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 355
    iget v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    aget v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    .line 356
    iget v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    aget p1, p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    .line 357
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateCenter()V

    .line 358
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->invalidate()V

    .line 361
    :goto_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iput v8, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLastX:F

    .line 364
    iput v9, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLastY:F

    return v2

    :catchall_0
    move-exception p1

    .line 361
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setScale(F)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iput p1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTileSource(Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 2

    .line 160
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/photos/views/TiledImageView;->setTileSource(Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 161
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    .line 162
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget p2, p2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    int-to-float p2, p2

    iput p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    .line 163
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 164
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 165
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 166
    iget-object p2, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 167
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcn/nubia/improve/photos/views/CropViewWallpaper;->updateMinScale(IILcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Z)V

    return-void
.end method

.method public setTouchCallback(Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchCallback:Lcn/nubia/improve/photos/views/CropViewWallpaper$TouchCallback;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mTouchEnabled:Z

    return-void
.end method

.method public updateViewCenter()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterX:F

    .line 375
    iget-object v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/improve/photos/views/CropViewWallpaper;->mCenterY:F

    return-void
.end method
