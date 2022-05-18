.class public Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoTurnFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnCurrentAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;Ljava/util/Random;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;

    .line 48
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 49
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->applyViewSize()V

    .line 57
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;

    iget-object v0, v0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->forceStop()V

    .line 61
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 62
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 64
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 67
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;

    iget-object v3, v3, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 69
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mProgress:F

    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 70
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mViewWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 71
    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 72
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 81
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
