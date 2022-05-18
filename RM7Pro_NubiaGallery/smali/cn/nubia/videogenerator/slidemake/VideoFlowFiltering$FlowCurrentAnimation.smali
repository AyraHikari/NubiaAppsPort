.class public Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoFlowFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowCurrentAnimation"
.end annotation


# static fields
.field private static final MOVE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;Ljava/util/Random;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;

    .line 50
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 51
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 52
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 5

    .line 58
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->applyViewSize()V

    .line 60
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;

    iget-object v0, v0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->forceStop()V

    .line 64
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 65
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 67
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 70
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;

    iget-object v3, v3, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    .line 71
    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mViewWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mProgress:F

    mul-float/2addr v4, v3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    sub-float/2addr v0, v4

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    :goto_0
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 82
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoFlowFiltering$FlowCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
