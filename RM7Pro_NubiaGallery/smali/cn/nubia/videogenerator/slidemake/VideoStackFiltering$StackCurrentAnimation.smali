.class public Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoStackFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackCurrentAnimation"
.end annotation


# static fields
.field private static final SCALE_SPEED:F = 0.5f


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;Ljava/util/Random;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;

    .line 58
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 59
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 7

    .line 66
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->applyViewSize()V

    .line 68
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;

    iget-object v0, v0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->forceStop()V

    .line 72
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mViewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 73
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 75
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 78
    iget-object v3, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;

    iget-object v3, v3, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 81
    iget v6, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mProgress:F

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    mul-float/2addr v4, v6

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    cmpg-float v0, v4, v2

    if-gtz v0, :cond_2

    .line 86
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCalculate(F)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 96
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoStackFiltering$StackCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    return-void
.end method
