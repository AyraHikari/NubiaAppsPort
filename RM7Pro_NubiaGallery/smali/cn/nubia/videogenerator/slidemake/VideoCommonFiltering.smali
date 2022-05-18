.class public abstract Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;
.super Ljava/lang/Object;
.source "VideoCommonFiltering.java"

# interfaces
.implements Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;


# instance fields
.field private final EFFECT_DURATION:I

.field protected mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentRotation:I

.field private mDesRectF:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

.field private mPrevBitmap:Landroid/graphics/Bitmap;

.field private mPrevRotation:I

.field protected mRandom:Ljava/util/Random;

.field private mSrcRect:Landroid/graphics/Rect;

.field private final mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    .line 34
    sget v0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    const/16 v1, 0xa28

    div-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->EFFECT_DURATION:I

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mRandom:Ljava/util/Random;

    .line 38
    new-instance v0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    sget v1, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    const/16 v2, 0x3e8

    div-int/2addr v2, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    return-void
.end method

.method private confirmPrevCur(FZ)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 114
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 115
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 116
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 117
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 118
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 119
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 120
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 121
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 123
    :cond_0
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 124
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 125
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 126
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 127
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 128
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 129
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 130
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    int-to-float p2, p2

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    div-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 141
    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p2, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 142
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method


# virtual methods
.method public abstract BuildAnimation()V
.end method

.method public getEffectDuration()I
    .locals 1

    .line 170
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->EFFECT_DURATION:I

    return v0
.end method

.method public next(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->start()V

    .line 51
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 57
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentRotation:I

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevRotation:I

    if-eqz p2, :cond_1

    .line 61
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 67
    :cond_1
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentRotation:I

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 69
    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 70
    new-instance p1, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mRandom:Ljava/util/Random;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->EFFECT_DURATION:I

    invoke-direct {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 71
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setViewSize(II)V

    .line 72
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 72
    invoke-virtual {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance p1, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mRandom:Ljava/util/Random;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->EFFECT_DURATION:I

    invoke-direct {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 76
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setViewSize(II)V

    .line 77
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 77
    invoke-virtual {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->start()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 157
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)Z
    .locals 10

    .line 86
    invoke-static {}, Lcn/nubia/videogenerator/slidemake/AnimationTime;->get()J

    move-result-wide v0

    .line 87
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->calculate(J)Z

    move-result v2

    .line 89
    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v4}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->get()F

    move-result v4

    .line 90
    :goto_0
    iget-object v6, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_1

    .line 91
    iget-object v6, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v6, v0, v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v2, v6

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v5, v4

    const/4 v6, 0x1

    .line 93
    invoke-direct {p0, v5, v6}, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->confirmPrevCur(FZ)V

    .line 94
    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v5, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 95
    iget v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevRotation:I

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 96
    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPrevBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 99
    :cond_1
    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 100
    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v5, v0, v1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    invoke-direct {p0, v4, v3}, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->confirmPrevCur(FZ)V

    .line 103
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 104
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 105
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return v2
.end method

.method public setViewSize(II)V
    .locals 0

    .line 164
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewWidth:I

    .line 165
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCommonFiltering;->mViewHeight:I

    return-void
.end method
