.class public Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoFlowAnimation.java"


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final SCALE_SPEED:F = 0.2f


# instance fields
.field private mMovingVector:Landroid/graphics/PointF;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 6

    .line 23
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mViewWidth:I

    .line 24
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mViewHeight:I

    .line 26
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 27
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v0, v0

    int-to-float v1, v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mProgress:F

    const/high16 v4, 0x42340000    # 45.0f

    mul-float/2addr v0, v4

    neg-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v0, 0x43700000    # 240.0f

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 3

    .line 36
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 38
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mWidth:I

    int-to-float p2, p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v0

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mRandom:Ljava/util/Random;

    .line 39
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr p2, v1

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mRandom:Ljava/util/Random;

    .line 40
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    return-void
.end method
