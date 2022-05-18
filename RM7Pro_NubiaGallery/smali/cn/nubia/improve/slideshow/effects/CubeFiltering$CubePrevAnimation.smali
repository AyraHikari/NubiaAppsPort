.class public Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "CubeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/CubeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubePrevAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/CubeFiltering;Ljava/util/Random;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;

    .line 92
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 93
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->applyViewSize()V

    .line 101
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 102
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 105
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 108
    invoke-interface {p1, v0, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 109
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mProgress:F

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v1, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v3, v4, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-float v0, v0

    .line 111
    invoke-interface {p1, v3, v3, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 113
    invoke-interface {p1, v2, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 118
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubePrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
