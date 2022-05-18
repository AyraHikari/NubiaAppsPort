.class public abstract Lcn/nubia/improve/slideshow/effects/CommonFiltering;
.super Ljava/lang/Object;
.source "CommonFiltering.java"

# interfaces
.implements Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;


# instance fields
.field protected mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

.field private mCurrentRotation:I

.field private mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field protected mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

.field private mPrevRotation:I

.field private mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field protected mRandom:Ljava/util/Random;

.field private mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

.field private final mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mRandom:Ljava/util/Random;

    .line 30
    new-instance v0, Lcn/nubia/gallery3d/anim/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/gallery3d/anim/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setChangeFirstPictureTime(Z)V

    .line 35
    invoke-static {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setChangeFirstPictureTime(Z)V

    return-void
.end method


# virtual methods
.method public abstract BuildAnimation()V
.end method

.method public next(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/FloatAnimation;->start()V

    .line 47
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 53
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 54
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentRotation:I

    iput v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevRotation:I

    .line 56
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentRotation:I

    .line 57
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 58
    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_1

    .line 59
    new-instance p1, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;

    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {p1, p2}, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;-><init>(Ljava/util/Random;)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 60
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 61
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    .line 60
    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 62
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iget p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setViewSize(II)V

    .line 63
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;

    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {p1, p2}, Lcn/nubia/improve/slideshow/effects/FadeOutAnimation;-><init>(Ljava/util/Random;)V

    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    .line 66
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 67
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    .line 66
    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 68
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iget p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setViewSize(II)V

    .line 69
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    invoke-virtual {p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->start()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 109
    iput-object v1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 113
    iput-object v1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    :cond_1
    return-void
.end method

.method public render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 10

    .line 77
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 78
    iget-object v2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/gallery3d/anim/FloatAnimation;->calculate(J)Z

    move-result v2

    .line 79
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/anim/FloatAnimation;->get()F

    move-result v3

    .line 81
    :goto_0
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    .line 82
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v5, v0, v1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result v5

    or-int/2addr v2, v5

    .line 83
    invoke-interface {p1, v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    sub-float v5, v4, v3

    .line 84
    invoke-interface {p1, v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 85
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v5, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 86
    iget v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevRotation:I

    int-to-float v5, v5

    invoke-interface {p1, v5, v7, v7, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 87
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 88
    invoke-virtual {v9}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    .line 87
    invoke-virtual {v5, p1, v8, v9}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 89
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 91
    :cond_1
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v5, :cond_2

    .line 92
    iget-object v5, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v5, v0, v1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 93
    invoke-interface {p1, v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 94
    invoke-interface {p1, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 95
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 96
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentRotation:I

    int-to-float v0, v0

    invoke-interface {p1, v0, v7, v7, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 97
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 98
    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 97
    invoke-virtual {v0, p1, v1, v3}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 99
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_2
    return v2
.end method

.method public setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    return-void
.end method

.method public setViewSize(II)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewWidth:I

    .line 120
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/CommonFiltering;->mViewHeight:I

    return-void
.end method
