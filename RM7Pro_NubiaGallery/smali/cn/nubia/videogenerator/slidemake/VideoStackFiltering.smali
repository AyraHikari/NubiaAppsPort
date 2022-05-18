.class public Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;
.super Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;
.source "VideoStackFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackPrevAnimation;,
        Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;
    }
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public BuildAnimation()V
    .locals 4

    .line 16
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 17
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackPrevAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackPrevAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 18
    new-instance v0, Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    sget v1, Lcn/nubia/videogenerator/slidemake/VideoMake;->mSpeedChoose:I

    const/16 v2, 0x3e8

    div-int/2addr v2, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;-><init>(FFI)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;J)Z
    .locals 7

    .line 24
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->calculate(J)Z

    move-result v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->get()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stack"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mTransitionAnimation:Lcn/nubia/videogenerator/slidemake/FloatAnimation;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/slidemake/FloatAnimation;->get()F

    move-result v1

    :goto_0
    const/high16 v3, 0x43610000    # 225.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 30
    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 34
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevRotation:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 35
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPaint:Landroid/graphics/Paint;

    rsub-int v2, v3, 0xe1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 37
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v6, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {p1, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 40
    :cond_2
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v1, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result p2

    or-int/2addr v0, p2

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p2, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 44
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentRotation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 45
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPaint:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return v0
.end method
