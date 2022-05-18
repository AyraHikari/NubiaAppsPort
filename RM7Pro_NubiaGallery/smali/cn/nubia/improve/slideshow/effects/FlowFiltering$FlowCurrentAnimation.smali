.class public Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "FlowFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/FlowFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowCurrentAnimation"
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/FlowFiltering;Ljava/util/Random;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;

    .line 45
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 46
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->applyViewSize()V

    .line 55
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;

    iget-object v0, v0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->forceStop()V

    .line 59
    :cond_0
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 60
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 62
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 65
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;

    iget-object v3, v3, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 66
    iget v5, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mProgress:F

    mul-float/2addr v5, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    sub-float/2addr v0, v5

    .line 67
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 72
    :goto_0
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 77
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
