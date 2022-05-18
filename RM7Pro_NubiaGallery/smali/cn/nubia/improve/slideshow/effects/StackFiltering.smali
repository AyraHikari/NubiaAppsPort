.class public Lcn/nubia/improve/slideshow/effects/StackFiltering;
.super Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;
.source "StackFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;,
        Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;-><init>()V

    return-void
.end method


# virtual methods
.method public BuildAnimation()V
    .locals 4

    .line 13
    new-instance v0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackCurrentAnimation;-><init>(Lcn/nubia/improve/slideshow/effects/StackFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 14
    new-instance v0, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/slideshow/effects/StackFiltering$StackPrevAnimation;-><init>(Lcn/nubia/improve/slideshow/effects/StackFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 15
    new-instance v0, Lcn/nubia/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x9c4

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    return-void
.end method

.method public onRender(Lcn/nubia/gallery3d/glrenderer/GLCanvas;J)Z
    .locals 8

    .line 23
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/gallery3d/anim/FloatAnimation;->calculate(J)Z

    move-result v0

    .line 25
    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/anim/FloatAnimation;->get()F

    move-result v1

    .line 27
    :goto_0
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v3, p2, p3}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result v3

    or-int/2addr v0, v3

    .line 29
    invoke-interface {p1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    sub-float v3, v2, v1

    .line 30
    invoke-interface {p1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 31
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v3, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 32
    iget v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevRotation:I

    int-to-float v3, v3

    invoke-interface {p1, v3, v5, v5, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 33
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object v6, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v6}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 34
    invoke-virtual {v7}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    .line 33
    invoke-virtual {v3, p1, v6, v7}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 35
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 37
    :cond_1
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v3, :cond_2

    .line 38
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v3, p2, p3}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result p2

    or-int/2addr v0, p2

    .line 39
    invoke-interface {p1, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 40
    invoke-interface {p1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 41
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p2, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 42
    iget p2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentRotation:I

    int-to-float p2, p2

    invoke-interface {p1, p2, v5, v5, v2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 43
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object p3, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/StackFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 44
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 43
    invoke-virtual {p2, p1, p3, v1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 45
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_2
    return v0
.end method
