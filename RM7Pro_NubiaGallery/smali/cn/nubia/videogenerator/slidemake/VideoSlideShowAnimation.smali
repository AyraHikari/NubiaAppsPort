.class public Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoCanvasAnimation;
.source "VideoSlideShowAnimation.java"


# instance fields
.field private TOTALCOUNTS:I

.field protected mHeight:I

.field protected mProgress:F

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mWidth:I

.field private renderCounts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoCanvasAnimation;-><init>()V

    const/16 v0, 0x5a

    .line 15
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->TOTALCOUNTS:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public applyViewSize()V
    .locals 0

    return-void
.end method

.method public calculate(J)Z
    .locals 5

    .line 71
    iget-wide p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mStartTime:J

    const-wide/16 v0, -0x2

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 74
    :cond_0
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->renderCounts:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->renderCounts:I

    int-to-float p1, p1

    .line 75
    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->TOTALCOUNTS:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v3, v4}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->clamp(FFF)F

    move-result p1

    .line 76
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->onCalculate(F)V

    .line 78
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->renderCounts:I

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->TOTALCOUNTS:I

    if-lt p1, v3, :cond_2

    .line 79
    iput-wide v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mStartTime:J

    .line 80
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->renderCounts:I

    .line 82
    :cond_2
    iget-wide v3, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mStartTime:J

    cmp-long p1, v3, v0

    if-eqz p1, :cond_3

    move p2, v2

    :cond_3
    return p2
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getInitScale()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mProgress:F

    return-void
.end method

.method protected setBitmapSize(II)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mWidth:I

    .line 38
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mHeight:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    mul-int/lit8 p1, p1, 0x1e

    .line 28
    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->TOTALCOUNTS:I

    return-void
.end method

.method protected setViewSize(II)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mViewWidth:I

    .line 33
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->mViewHeight:I

    return-void
.end method

.method public start()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcn/nubia/videogenerator/slidemake/VideoCanvasAnimation;->start()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->renderCounts:I

    return-void
.end method
