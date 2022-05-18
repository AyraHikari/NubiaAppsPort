.class public Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoFadeOutAnimation.java"


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final SCALE_SPEED:F = 0.2f


# instance fields
.field private centerX:F

.field private centerY:F

.field private initScale:F

.field private mMovingVector:Landroid/graphics/PointF;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mRandom:Ljava/util/Random;

    .line 22
    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->applyViewSize()V

    .line 29
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewWidth:I

    .line 30
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewHeight:I

    .line 32
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->initScale:F

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    .line 34
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mProgress:F

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->centerX:F

    .line 35
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mProgress:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->centerY:F

    .line 36
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->centerX:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public getInitScale()F
    .locals 1

    .line 50
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->initScale:F

    return v0
.end method

.method public setBitmapSize(II)V
    .locals 1

    .line 43
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 44
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mViewHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFadeOutAnimation;->initScale:F

    return-void
.end method
