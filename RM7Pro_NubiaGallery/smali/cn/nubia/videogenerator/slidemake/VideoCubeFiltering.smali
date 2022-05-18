.class public Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;
.super Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;
.source "VideoCubeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;,
        Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;
    }
.end annotation


# instance fields
.field private mDesRectF:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private confirmPrevCur(Z)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 54
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 55
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 58
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewHeight:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 59
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 60
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewHeight:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 63
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 65
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 67
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewHeight:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 68
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 69
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mViewHeight:I

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->getInitScale()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method


# virtual methods
.method public BuildAnimation()V
    .locals 2

    .line 20
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 21
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;J)Z
    .locals 7

    .line 26
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v0, v1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x1

    .line 32
    invoke-direct {p0, v3}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->confirmPrevCur(Z)V

    .line 33
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v3, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 34
    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevRotation:I

    int-to-float v3, v3

    invoke-virtual {p1, v3, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 35
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 38
    :goto_0
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v3, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result p2

    or-int/2addr v0, p2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->confirmPrevCur(Z)V

    .line 42
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p2, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 43
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentRotation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 44
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mDesRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return v0
.end method
