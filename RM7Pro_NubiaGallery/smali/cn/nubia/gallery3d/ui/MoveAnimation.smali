.class public Lcn/nubia/gallery3d/ui/MoveAnimation;
.super Lcn/nubia/gallery3d/ui/Animation;
.source "MoveAnimation.java"


# instance fields
.field private mAdjustment:[F

.field protected mProgress:F

.field private preX:F

.field private preY:F


# direct methods
.method public constructor <init>([F)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/Animation;-><init>()V

    .line 16
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/MoveAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0x1f4

    .line 17
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/MoveAnimation;->setDuration(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 19
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mAdjustment:[F

    const/4 v1, 0x0

    .line 20
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 21
    aget p1, p1, v1

    aput p1, v0, v1

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preY:F

    iput p1, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preX:F

    return-void
.end method


# virtual methods
.method public movingBack()[F
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 36
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mAdjustment:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mProgress:F

    mul-float/2addr v3, v4

    iget v5, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preX:F

    sub-float/2addr v3, v5

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 37
    aget v1, v1, v2

    mul-float/2addr v1, v4

    iget v3, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preY:F

    sub-float/2addr v1, v3

    aput v1, v0, v2

    return-object v0
.end method

.method protected onCalculate(F)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mAdjustment:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mProgress:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preX:F

    const/4 v1, 0x1

    .line 29
    aget v0, v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->preY:F

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/ui/MoveAnimation;->mProgress:F

    return-void
.end method
