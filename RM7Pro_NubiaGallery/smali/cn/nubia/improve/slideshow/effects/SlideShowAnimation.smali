.class public Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;
.super Lcn/nubia/gallery3d/anim/CanvasAnimation;
.source "SlideShowAnimation.java"


# instance fields
.field protected mHeight:I

.field protected mProgress:F

.field protected mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

.field protected mViewHeight:I

.field protected mViewWidth:I

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/CanvasAnimation;-><init>()V

    const/16 v0, 0xbb8

    .line 35
    invoke-virtual {p0, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    return-void
.end method

.method public applyViewSize()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mViewWidth:I

    .line 47
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mViewHeight:I

    :cond_0
    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCalculate(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mProgress:F

    return-void
.end method

.method protected setBitmapSize(II)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mWidth:I

    .line 53
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mHeight:I

    return-void
.end method

.method public setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    return-void
.end method

.method protected setViewSize(II)V
    .locals 0

    .line 67
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mViewWidth:I

    .line 68
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->mViewHeight:I

    return-void
.end method
