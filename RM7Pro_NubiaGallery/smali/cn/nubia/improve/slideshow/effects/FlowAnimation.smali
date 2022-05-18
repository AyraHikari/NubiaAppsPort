.class public Lcn/nubia/improve/slideshow/effects/FlowAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "FlowAnimation.java"


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
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    .line 23
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mViewWidth:I

    .line 24
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mViewHeight:I

    .line 26
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 27
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mProgress:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v4, 0x0

    .line 29
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 30
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mProgress:F

    const/high16 v5, 0x42340000    # 45.0f

    mul-float/2addr v0, v5

    neg-float v0, v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v4, v4, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    const/high16 v0, 0x43700000    # 240.0f

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    .line 31
    invoke-interface {p1, v2, v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 3

    .line 36
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 38
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mWidth:I

    int-to-float p2, p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v0

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mRandom:Ljava/util/Random;

    .line 39
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr p2, v1

    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mRandom:Ljava/util/Random;

    .line 40
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FlowAnimation;->mMovingVector:Landroid/graphics/PointF;

    return-void
.end method
