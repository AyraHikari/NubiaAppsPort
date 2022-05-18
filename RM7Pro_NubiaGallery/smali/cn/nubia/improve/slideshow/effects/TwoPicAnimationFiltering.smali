.class public abstract Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;
.super Ljava/lang/Object;
.source "TwoPicAnimationFiltering.java"

# interfaces
.implements Lcn/nubia/improve/slideshow/effects/SlideShowFiltering;


# instance fields
.field protected mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

.field protected mCurrentRotation:I

.field protected mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field protected mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

.field protected mPrevRotation:I

.field protected mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field protected mRandom:Ljava/util/Random;

.field protected mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

.field protected mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    const/4 v0, 0x1

    .line 39
    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->setChangeFirstPictureTime(Z)V

    .line 40
    invoke-static {v0}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->setChangeFirstPictureTime(Z)V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->BuildAnimation()V

    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 52
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 54
    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p2, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 55
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method


# virtual methods
.method public abstract BuildAnimation()V
.end method

.method public next(Landroid/graphics/Bitmap;I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mTransitionAnimation:Lcn/nubia/gallery3d/anim/FloatAnimation;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcn/nubia/gallery3d/anim/FloatAnimation;->start()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 74
    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentRotation:I

    iput v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevRotation:I

    if-eqz p2, :cond_2

    .line 77
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 83
    :cond_2
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentRotation:I

    .line 84
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 85
    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_3

    .line 86
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 87
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    .line 86
    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 90
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    .line 89
    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz p1, :cond_5

    .line 94
    iget p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevRotation:I

    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_4

    .line 95
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 96
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    .line 95
    invoke-virtual {p2, p1, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 99
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    .line 98
    invoke-virtual {p2, p1, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setBitmapSize(II)V

    .line 102
    :goto_1
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->start()V

    .line 104
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->start()V

    return-void
.end method

.method public abstract onRender(Lcn/nubia/gallery3d/glrenderer/GLCanvas;J)Z
.end method

.method public release()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 122
    iput-object v1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 126
    iput-object v1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentTexture:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    :cond_1
    return-void
.end method

.method public render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)Z
    .locals 2

    .line 112
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 113
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->onRender(Lcn/nubia/gallery3d/glrenderer/GLCanvas;J)Z

    move-result p1

    return p1
.end method

.method public setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V
    .locals 1

    .line 145
    iput-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mSlideShowEffectView:Lcn/nubia/improve/slideshow/SlideShowEffectView;

    .line 146
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setSlideShowEffectView(Lcn/nubia/improve/slideshow/SlideShowEffectView;)V

    :cond_1
    return-void
.end method

.method public setViewSize(II)V
    .locals 1

    .line 132
    iput p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mViewWidth:I

    .line 133
    iput p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mViewHeight:I

    .line 134
    iget-object v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setViewSize(II)V

    .line 135
    iget-object p1, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;

    iget p2, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/improve/slideshow/effects/TwoPicAnimationFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/improve/slideshow/effects/SlideShowAnimation;->setViewSize(II)V

    return-void
.end method
