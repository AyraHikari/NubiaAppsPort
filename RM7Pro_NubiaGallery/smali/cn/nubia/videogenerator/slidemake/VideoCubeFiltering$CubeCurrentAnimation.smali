.class public Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoCubeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubeCurrentAnimation"
.end annotation


# instance fields
.field private initScale:F

.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;Ljava/util/Random;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;

    .line 78
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 79
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->applyViewSize()V

    .line 87
    iget-object v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;

    iget-object v0, v0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->forceStop()V

    .line 91
    :cond_0
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mViewWidth:I

    int-to-float v0, v0

    .line 93
    iget-object v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;

    iget-object v1, v1, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mPrevTexture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->initScale:F

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    iget v4, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mProgress:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->initScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 97
    :cond_1
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->initScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    return-void
.end method

.method public getInitScale()F
    .locals 1

    .line 114
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->initScale:F

    return v0
.end method

.method public onCalculate(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 1

    .line 107
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 108
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mViewWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mViewHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubeCurrentAnimation;->initScale:F

    return-void
.end method
