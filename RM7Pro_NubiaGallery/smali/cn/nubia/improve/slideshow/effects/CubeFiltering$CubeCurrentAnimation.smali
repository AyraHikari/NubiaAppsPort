.class public Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "CubeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/CubeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubeCurrentAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/CubeFiltering;Ljava/util/Random;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;

    .line 46
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 47
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->applyViewSize()V

    .line 55
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;

    iget-object v0, v0, Lcn/nubia/improve/slideshow/effects/CubeFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->forceStop()V

    .line 59
    :cond_0
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 60
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 63
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 66
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/CubeFiltering;

    iget-object v3, v3, Lcn/nubia/improve/slideshow/effects/CubeFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 67
    invoke-interface {p1, v0, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v1, 0x42340000    # 45.0f

    .line 68
    iget v3, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mProgress:F

    mul-float/2addr v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v3, v4, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 70
    invoke-interface {p1, v0, v4, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 71
    invoke-interface {p1, v0, v4, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 72
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {p1, v0, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 75
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 81
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/CubeFiltering$CubeCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
