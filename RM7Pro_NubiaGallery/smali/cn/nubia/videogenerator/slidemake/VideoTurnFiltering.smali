.class public Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;
.super Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;
.source "VideoTurnFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;,
        Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;
    }
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoTwoPicAnimationFiltering;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public BuildAnimation()V
    .locals 2

    .line 16
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    .line 17
    new-instance v0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;

    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mRandom:Ljava/util/Random;

    invoke-direct {v0, p0, v1}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;-><init>(Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;Ljava/util/Random;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    return-void
.end method

.method public onRender(Landroid/graphics/Canvas;J)Z
    .locals 6

    .line 22
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 24
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v1, v0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 28
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevRotation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 29
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    .line 30
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->calculate(J)Z

    move-result p2

    or-int/2addr v1, p2

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentAnimation:Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;

    invoke-virtual {p2, p1}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->apply(Landroid/graphics/Canvas;)V

    .line 37
    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentRotation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 38
    iget-object p2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mCurrentTexture:Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {p1, p2, p3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return v1
.end method
