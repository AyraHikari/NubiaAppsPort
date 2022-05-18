.class public Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "StackFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/StackFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackPrevAnimation"
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.6f


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/StackFiltering;Ljava/util/Random;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;

    .line 105
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 106
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 107
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->applyViewSize()V

    .line 115
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 116
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 118
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 121
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mViewWidth:I

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mProgress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    .line 122
    invoke-interface {p1, v2, v0, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 123
    invoke-interface {p1, v1, v1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 128
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
