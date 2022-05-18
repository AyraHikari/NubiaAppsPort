.class public Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "FlowFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/FlowFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowPrevAnimation"
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/FlowFiltering;Ljava/util/Random;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/FlowFiltering;

    .line 89
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 90
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 91
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 96
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->applyViewSize()V

    .line 98
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 99
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 101
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 104
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mProgress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 105
    invoke-interface {p1, v2, v0, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 107
    invoke-interface {p1, v1, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 112
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
