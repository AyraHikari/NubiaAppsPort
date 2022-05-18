.class public Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "FadeOutAnimation.java"


# static fields
.field private static final MOVE_SPEED:F = 0.2f

.field private static final SCALE_SPEED:F = 0.2f


# instance fields
.field private mMovingVector:Landroid/graphics/PointF;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mRandom:Ljava/util/Random;

    const/16 p1, 0x9c4

    .line 20
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 26
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->applyViewSize()V

    .line 31
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mViewWidth:I

    .line 32
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mViewHeight:I

    int-to-float v2, v0

    .line 34
    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 36
    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mProgress:F

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 38
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 39
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mMovingVector:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x0

    .line 41
    invoke-interface {p1, v0, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 42
    invoke-interface {p1, v2, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 48
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mViewWidth:I

    int-to-float p2, p2

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v0

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mRandom:Ljava/util/Random;

    .line 49
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    mul-float/2addr p2, v1

    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mViewHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mRandom:Ljava/util/Random;

    .line 50
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;->mMovingVector:Landroid/graphics/PointF;

    return-void
.end method
