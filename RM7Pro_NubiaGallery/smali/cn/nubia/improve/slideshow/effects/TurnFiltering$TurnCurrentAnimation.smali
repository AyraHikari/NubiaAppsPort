.class public Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "TurnFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/TurnFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnCurrentAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/TurnFiltering;Ljava/util/Random;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;

    .line 45
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 46
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->applyViewSize()V

    .line 54
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;

    iget-object v0, v0, Lcn/nubia/improve/slideshow/effects/TurnFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->forceStop()V

    .line 58
    :cond_0
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 59
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 61
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 64
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;

    iget-object v3, v3, Lcn/nubia/improve/slideshow/effects/TurnFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    .line 65
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 66
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mProgress:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v4, v4, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 67
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    int-to-float v1, v1

    invoke-interface {p1, v1, v4, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 68
    invoke-interface {p1, v1, v4, v4, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 69
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 72
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 78
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
