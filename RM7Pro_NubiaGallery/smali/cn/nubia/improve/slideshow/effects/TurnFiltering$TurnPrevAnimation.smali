.class public Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "TurnFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/TurnFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnPrevAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/TurnFiltering;Ljava/util/Random;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/TurnFiltering;

    .line 88
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 89
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 90
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->applyViewSize()V

    .line 97
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 98
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 100
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    const/4 v3, 0x0

    .line 103
    invoke-interface {p1, v0, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 105
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mProgress:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v3, v3, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 106
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v0, v3, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 107
    invoke-interface {p1, v2, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 112
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/TurnFiltering$TurnPrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
