.class public Lcn/nubia/improve/slideshow/effects/FlowFiltering;
.super Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;
.source "FlowFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;,
        Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;-><init>()V

    return-void
.end method


# virtual methods
.method public BuildAnimation()V
    .locals 2

    .line 11
    new-instance v0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowCurrentAnimation;-><init>(Lcn/nubia/improve/slideshow/effects/FlowFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 12
    new-instance v0, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/slideshow/effects/FlowFiltering$FlowPrevAnimation;-><init>(Lcn/nubia/improve/slideshow/effects/FlowFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    return-void
.end method

.method public onRender(Lcn/nubia/gallery3d/glrenderer/GLCanvas;J)Z
    .locals 7

    .line 20
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v4, v0

    .line 22
    invoke-interface {p1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 23
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 24
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevRotation:I

    int-to-float v0, v0

    invoke-interface {p1, v0, v2, v2, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 25
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/2addr v5, v3

    iget-object v6, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 26
    invoke-virtual {v6}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/2addr v6, v3

    .line 25
    invoke-virtual {v0, p1, v5, v6}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 27
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result p2

    or-int/2addr v4, p2

    .line 31
    invoke-interface {p1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 32
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p2, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 33
    iget p2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentRotation:I

    int-to-float p2, p2

    invoke-interface {p1, p2, v2, v2, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 34
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iget-object p3, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {p3}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/2addr p3, v3

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/FlowFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 35
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/2addr v0, v3

    .line 34
    invoke-virtual {p2, p1, p3, v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 36
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_1
    return v4
.end method
