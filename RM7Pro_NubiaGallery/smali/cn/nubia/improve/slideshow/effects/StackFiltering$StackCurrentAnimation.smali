.class public Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;
.super Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.source "StackFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/effects/StackFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackCurrentAnimation"
.end annotation


# static fields
.field private static final SCALE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/slideshow/effects/StackFiltering;Ljava/util/Random;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;

    .line 55
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;-><init>()V

    .line 56
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0x5dc

    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 8

    .line 63
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->applyViewSize()V

    .line 65
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;

    iget-object v0, v0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->forceStop()V

    .line 69
    :cond_0
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 70
    iget v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 72
    iget v2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 75
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/improve/slideshow/effects/StackFiltering;

    iget-object v3, v3, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v5, v2, v3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 78
    iget v7, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mProgress:F

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    mul-float/2addr v5, v7

    .line 80
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    cmpg-float v0, v5, v2

    if-gtz v0, :cond_2

    .line 83
    invoke-interface {p1, v5, v5, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {p1, v0, v1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 87
    invoke-interface {p1, v2, v2, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 93
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
