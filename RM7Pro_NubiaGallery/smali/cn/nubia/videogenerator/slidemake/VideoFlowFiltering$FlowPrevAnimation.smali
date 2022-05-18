.class public Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoFlowFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowPrevAnimation"
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;Ljava/util/Random;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;

    .line 94
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 95
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->applyViewSize()V

    .line 103
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 104
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 106
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 109
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mProgress:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 110
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 117
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowPrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
