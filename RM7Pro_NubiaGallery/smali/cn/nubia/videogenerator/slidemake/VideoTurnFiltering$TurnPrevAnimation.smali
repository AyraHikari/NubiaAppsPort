.class public Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoTurnFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TurnPrevAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;Ljava/util/Random;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;

    .line 91
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 92
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 5

    .line 98
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->applyViewSize()V

    .line 100
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 101
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 103
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mProgress:F

    const/high16 v1, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 109
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 115
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoTurnFiltering$TurnPrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
