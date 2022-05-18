.class public abstract Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;
.super Ljava/lang/Object;
.source "VideoTwoPicAnimationFiltering.java"

# interfaces
.implements Lcn/nubia/videogenerator/slidemake/VideoSlideShowFiltering;


# instance fields
.field protected mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

.field protected mCurrentRotation:I

.field protected mCurrentTexture:Landroid/graphics/Bitmap;

.field protected mEffectDuration:I

.field protected mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

.field protected mPrevRotation:I

.field protected mPrevTexture:Landroid/graphics/Bitmap;

.field protected mRandom:Ljava/util/Random;

.field protected mSlideShowEffectView:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

.field protected mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

.field protected mViewHeight:I

.field protected mViewWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    .line 35
    sget v0, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    const/16 v1, 0x640

    div-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mEffectDuration:I

    .line 38
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->BuildAnimation()V

    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 47
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 48
    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v4, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p2, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 49
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method


# virtual methods
.method public abstract BuildAnimation()V
.end method

.method public getEffectDuration()I
    .locals 1

    .line 142
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mEffectDuration:I

    return v0
.end method

.method public next(Landroid/graphics/Bitmap;I)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x3e8

    sget v4, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    div-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    .line 60
    invoke-virtual {v0}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->start()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 68
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentRotation:I

    iput v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevRotation:I

    if-eqz p2, :cond_2

    .line 71
    invoke-direct {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    .line 77
    :cond_2
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentRotation:I

    .line 78
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    .line 79
    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_3

    .line 80
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 80
    invoke-virtual {p2, p1, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 83
    invoke-virtual {p2, p1, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 87
    :goto_0
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    .line 88
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevRotation:I

    div-int/lit8 p2, p2, 0x5a

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_4

    .line 89
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 89
    invoke-virtual {p2, p1, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    goto :goto_1

    .line 92
    :cond_4
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 92
    invoke-virtual {p2, p1, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 96
    :goto_1
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->start()V

    .line 98
    :cond_5
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->start()V

    return-void
.end method

.method public abstract onRender(Landroid/graphics/Canvas;J)Z
.end method

.method public release()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    iput-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)Z
    .locals 2

    .line 106
    invoke-static {}, Lcn/nubia/videogenerator/slidemake/AnimationTime;->get()J

    move-result-wide v0

    .line 107
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->onRender(Landroid/graphics/Canvas;J)Z

    move-result p1

    return p1
.end method

.method public setEffectDuration(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mEffectDuration:I

    return-void
.end method

.method public setViewSize(II)V
    .locals 1

    .line 126
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mViewWidth:I

    .line 127
    iput p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mViewHeight:I

    .line 128
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setViewSize(II)V

    .line 131
    :cond_0
    iget-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    if-eqz p1, :cond_1

    .line 132
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mViewWidth:I

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;->mViewHeight:I

    invoke-virtual {p1, p2, v0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setViewSize(II)V

    :cond_1
    return-void
.end method
