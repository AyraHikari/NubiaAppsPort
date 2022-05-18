.class public Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;
.super Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;
.source "VideoCubeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubePrevAnimation"
.end annotation


# instance fields
.field private initScale:F

.field final synthetic this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;Ljava/util/Random;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->this$0:Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;

    .line 123
    invoke-direct {p0}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;-><init>()V

    .line 124
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 125
    iget p1, p1, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering;->mEffectDuration:I

    invoke-virtual {p0, p1}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Canvas;)V
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->applyViewSize()V

    .line 132
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mViewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 133
    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mProgress:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->initScale:F

    float-to-double v0, v0

    iget v2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    float-to-double v2, v3

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->initScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public getInitScale()F
    .locals 1

    .line 150
    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->initScale:F

    return v0
.end method

.method public onCalculate(F)V
    .locals 0

    .line 139
    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mProgress:F

    return-void
.end method

.method public setBitmapSize(II)V
    .locals 1

    .line 143
    invoke-super {p0, p1, p2}, Lcn/nubia/videogenerator/slidemake/VideoSlideShowAnimation;->setBitmapSize(II)V

    .line 144
    iget p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mViewWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mWidth:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mViewHeight:I

    int-to-float p2, p2

    iget v0, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/nubia/videogenerator/slidemake/VideoCubeFiltering$CubePrevAnimation;->initScale:F

    return-void
.end method
