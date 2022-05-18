.class public Lcn/nubia/gallery3d/ui/CaptureAnimation;
.super Ljava/lang/Object;
.source "CaptureAnimation.java"


# static fields
.field private static final ZOOM_DELTA:F = 0.2f

.field private static final ZOOM_IN_BEGIN:F = 0.8f

.field private static final sSlideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sZoomInInterpolator:Landroid/view/animation/Interpolator;

.field private static final sZoomOutInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sZoomInInterpolator:Landroid/view/animation/Interpolator;

    .line 34
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sSlideInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScale(F)F
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3e4ccccd    # 0.2f

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    sget-object v1, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;

    mul-float/2addr p0, v2

    .line 48
    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v3

    sub-float/2addr v0, p0

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    .line 51
    sget-object v4, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sZoomInInterpolator:Landroid/view/animation/Interpolator;

    sub-float/2addr p0, v0

    mul-float/2addr p0, v2

    .line 52
    invoke-interface {v4, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v3

    add-float v0, p0, v1

    :goto_0
    return v0
.end method

.method public static calculateSlide(F)F
    .locals 1

    .line 39
    sget-object v0, Lcn/nubia/gallery3d/ui/CaptureAnimation;->sSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
